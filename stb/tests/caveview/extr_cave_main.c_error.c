
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_MESSAGEBOX_ERROR ;
 int SDL_ShowSimpleMessageBox (int ,char*,char*,int *) ;
 int exit (int ) ;

void error(char *s)
{
   SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_ERROR, "Error", s, ((void*)0));
   exit(0);
}
