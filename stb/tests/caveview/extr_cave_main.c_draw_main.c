
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_BLEND ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_CULL_FACE ;
 int GL_CW ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_DEPTH_TEST ;
 int GL_GREATER ;
 int GL_LESS ;
 int GL_LIGHTING ;
 int GL_MODELVIEW ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_PROJECTION ;
 int GL_SCISSOR_TEST ;
 int GL_SRC_ALPHA ;
 int GL_TEXTURE_2D ;
 int GL_TRUE ;
 float SDL_GetPerformanceCounter () ;
 scalar_t__ SDL_GetPerformanceFrequency () ;
 int * camang ;
 int * camloc ;
 int draw_stats () ;
 float end_time ;
 int glBlendFunc (int ,int ) ;
 int glClear (int) ;
 int glClearColor (float,float,float,float) ;
 int glClearDepth (int) ;
 int glColor3f (int,int,int) ;
 int glDepthFunc (int ) ;
 int glDepthMask (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glFrontFace (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glRotatef (int ,int,int ,int) ;
 int glTranslatef (int ,int ,int ) ;
 int gluOrtho2D (int ,int,int,int ) ;
 int player_zoom ;
 int render_caves (int *) ;
 float render_time ;
 int screen_x ;
 int screen_y ;
 float start_time ;
 int stbgl_Perspective (int ,int,int,double,int) ;
 int stbgl_initCamera_zup_facing_y () ;

void draw_main(void)
{
   glEnable(GL_CULL_FACE);
   glDisable(GL_TEXTURE_2D);
   glDisable(GL_LIGHTING);
   glEnable(GL_DEPTH_TEST);




   glDepthFunc(GL_LESS);
   glClearDepth(1);

   glDepthMask(GL_TRUE);
   glDisable(GL_SCISSOR_TEST);
   glClearColor(0.6f,0.7f,0.9f,0.0f);
   glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

   glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
   glColor3f(1,1,1);
   glFrontFace(GL_CW);
   glEnable(GL_TEXTURE_2D);
   glDisable(GL_BLEND);


   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();




   stbgl_Perspective(player_zoom, 90, 70, 1.0/16, 3000);



   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
   stbgl_initCamera_zup_facing_y();

   glRotatef(-camang[0],1,0,0);
   glRotatef(-camang[2],0,0,1);
   glTranslatef(-camloc[0], -camloc[1], -camloc[2]);

   start_time = SDL_GetPerformanceCounter();
   render_caves(camloc);
   end_time = SDL_GetPerformanceCounter();

   render_time = (end_time - start_time) / (float) SDL_GetPerformanceFrequency();

   glMatrixMode(GL_PROJECTION);
   glLoadIdentity();
   gluOrtho2D(0,screen_x/2,screen_y/2,0);
   glMatrixMode(GL_MODELVIEW);
   glLoadIdentity();
   glDisable(GL_TEXTURE_2D);
   glDisable(GL_BLEND);
   glDisable(GL_CULL_FACE);
   draw_stats();
}
