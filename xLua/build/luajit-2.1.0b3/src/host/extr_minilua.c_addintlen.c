
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void addintlen(char*form){
size_t l=strlen(form);
char spec=form[l-1];
strcpy(form+l-1,"l");
form[l+sizeof("l")-2]=spec;
form[l+sizeof("l")-1]='\0';
}
