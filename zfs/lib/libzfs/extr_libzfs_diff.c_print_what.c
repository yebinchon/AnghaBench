
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;
 int S_IFMT ;



 int fprintf (int *,char*,char) ;

__attribute__((used)) static void
print_what(FILE *fp, mode_t what)
{
 char symbol;

 switch (what & S_IFMT) {
 case 136:
  symbol = 'B';
  break;
 case 135:
  symbol = 'C';
  break;
 case 134:
  symbol = '/';
  break;

 case 133:
  symbol = '>';
  break;

 case 132:
  symbol = '|';
  break;
 case 131:
  symbol = '@';
  break;

 case 130:
  symbol = 'P';
  break;

 case 128:
  symbol = '=';
  break;
 case 129:
  symbol = 'F';
  break;
 default:
  symbol = '?';
  break;
 }
 (void) fprintf(fp, "%c", symbol);
}
