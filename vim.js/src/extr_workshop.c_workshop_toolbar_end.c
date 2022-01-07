
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 int STRCAT (int *,char*) ;
 int STRCPY (int *,int ) ;
 int True ;
 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int p_go ;
 int set_option_value (int *,long,int *,int ) ;
 int * vim_strchr (int ,char) ;
 int workshopInitDone ;
 int wstrace (char*) ;

void
workshop_toolbar_end()
{
    char_u buf[64];
    STRCPY(buf, p_go);
    if (vim_strchr(p_go, 'T') == ((void*)0))
    {
 STRCAT(buf, "T");
 set_option_value((char_u *)"go", 0L, buf, 0);
    }
    workshopInitDone = True;
}
