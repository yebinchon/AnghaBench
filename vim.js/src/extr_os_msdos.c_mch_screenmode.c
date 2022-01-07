
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int names ;
typedef int char_u ;







 int EMSG (char*) ;
 int FAIL ;

 int OK ;
 int T_ME ;
 scalar_t__ VIM_ISDIGIT (int ) ;
 int atoi (char*) ;
 int get_screenbase () ;
 int mouse_x_div ;
 int mouse_y_div ;
 int out_str (int ) ;
 int shell_resized () ;
 scalar_t__ stricmp (char*,char*) ;
 int textmode (int) ;

int
mch_screenmode(char_u *arg)
{
    int mode;
    int i;
    static char *(names[]) = {"BW40", "C40", "BW80", "C80", "MONO", "C4350"};
    static int modes[] = { 133, 131, 132, 129, 128, 130};

    mode = -1;
    if (VIM_ISDIGIT(*arg))
 mode = atoi((char *)arg);
    else
    {
 for (i = 0; i < sizeof(names) / sizeof(char_u *); ++i)
     if (stricmp(names[i], (char *)arg) == 0)
     {
  mode = modes[i];
  break;
     }
    }
    if (mode == -1)
    {
 EMSG("E362: Unsupported screen mode");
 return FAIL;
    }
    textmode(mode);






    out_str(T_ME);
    return OK;
}
