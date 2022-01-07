
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;


 scalar_t__ WSDLEVEL (int) ;
 int WS_TRACE ;
 int WS_TRACE_VERBOSE ;
 int add_to_input_buf (int *,int) ;
 int wstrace (char*) ;

void
workshop_save_files()
{






    add_to_input_buf((char_u *) ":wall\n", 6);
}
