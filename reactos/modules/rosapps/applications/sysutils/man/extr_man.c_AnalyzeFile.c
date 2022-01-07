
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOLD ;
 int ITALIC ;
 int MAXLINE ;
 int NORMAL ;
 int SetCl (int ) ;
 scalar_t__ fgets (char*,int,int ) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int manfile ;
 int putchar (char) ;
 int sh_outp (char*) ;
 int strcpy (char*,char*) ;
 int text_outp (char*) ;
 int th_outp (char*,char*) ;

int
AnalyzeFile()
{
    char *cur_string=(char*)malloc(sizeof(char)*MAXLINE);
    char *THtag=(char*)malloc(sizeof(char)*MAXLINE);




    while(fgets(cur_string,MAXLINE,manfile))


     if((cur_string[0]=='.')&&(cur_string[1]=='S')&&
       (cur_string[2]=='H'))
      {
       SetCl(BOLD);
       sh_outp(cur_string);
       SetCl(NORMAL);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='I')&&
       (cur_string[2]==' '))
      {
       SetCl(ITALIC);
       text_outp(cur_string);
       SetCl(NORMAL);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='/')&&
       (cur_string[2]=='\"'));

     else
     if((cur_string[0]=='.')&&(cur_string[1]=='T')&&
       (cur_string[2]=='H'))
      {
       strcpy(THtag,cur_string);
      }
     else
     if((cur_string[0]=='.')&&(cur_string[1]=='B')&&
       (cur_string[2]==' '))
      {
       SetCl(BOLD);
       text_outp(cur_string);
       SetCl(NORMAL);
      }
      else
      if((cur_string[0]=='.')&&(cur_string[1]=='N')&&
        (cur_string[2]=='L'))
       {
        putchar('\n');
        putchar(' ');
       }

     else
     {
       text_outp(cur_string);
     }
    th_outp(cur_string, THtag);


    free(cur_string);
    free(THtag);
    return 0;
}
