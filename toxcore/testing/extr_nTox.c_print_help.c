
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;
 int puts (char*) ;

void print_help(char *prog_name)
{
    printf("nTox %.1f - Command-line tox-core client\n", 0.1);
    printf("Usage: %s [--ipv4|--ipv6] IP PORT KEY [-f keyfile]\n", prog_name);

    puts("Options: (order IS relevant)");
    puts("  --ipv4 / --ipv6 [Optional] Support IPv4 only or IPv4 & IPv6.");
    puts("  IP PORT KEY     [REQUIRED] A node to connect to (IP/Port) and its key.");
    puts("  -f keyfile      [Optional] Specify a keyfile to read from and write to.");
}
