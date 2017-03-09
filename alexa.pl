#!/usr/bin/perl
use LWP::Simple;
use LWP::UserAgent;
use Term::ANSIColor;
##############################################################################
#Alexa Rank Getter                            			                         #
#                                                                            #
#SeCureGroup		                                                     #
#                                                                            #
#SecUreSec.Top                                                            #
#                                                                            #
##############################################################################

if ($^O =~ /MSWin32/) {system("cls"); system("color A");
}else { system("clear"); }

sleep(2);
print "\n";
print color("bold red"), "\t   +=============================================================+\n";
print color("bold red"), "\t   |                        Alexa RankGetter                     |\n";
print color("bold red"), "\t   |                     ------------------                      |\n";
print color("bold white"), "\t   |                       SeCureSec.top                         |\n";
print color("bold white"), "\t   | 		              *********************              |\n";
print color("bold white"), "\t   +=============================================================+\n";
print color 'reset';
print color("bold green"), "\n\n\t Type Website Address [Example : http://www.Domain.com]";
print color("bold white"), "\n\t Site : ";
chomp($site=<STDIN>);
print color("bold red"), "\n\n\t Name of Proxy list file [Example : Proxylist.txt]";
print color("bold yellow"), "\n\t Name : ";
print color 'reset';
chomp($proxies=<STDIN>);
print "\nProcessing ...\n\n";
open (PROXIES, "<$proxies") || die "\n[-] Can't open the $proxies list !\n";
@proxy=<PROXIES>;
################################
foreach $proxys(@proxy){
chomp($proxys);
$proxy='http://'.$proxys;
$ua = LWP::UserAgent->new;
$ENV{HTTP_proxy} = "$proxy";
$ua->env_proxy;
my $req = $ua->get("$site");
$num==1;
$num++;
print "\t\t $num  =>  $proxys\n";
my $req2 = get $site;
next;
}
print "\nFinished.Exit !\n";
close("PROXIES");
exit;