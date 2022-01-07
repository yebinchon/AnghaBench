
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDL_Event ;


 scalar_t__ IsDebuggerPresent () ;
 int SDL_CreateWindow (char*,int ,int ,int,int,int) ;
 int SDL_GL_BLUE_SIZE ;
 int SDL_GL_CONTEXT_DEBUG_FLAG ;
 int SDL_GL_CONTEXT_FLAGS ;
 int SDL_GL_CONTEXT_MAJOR_VERSION ;
 int SDL_GL_CONTEXT_MINOR_VERSION ;
 int SDL_GL_CONTEXT_PROFILE_COMPATIBILITY ;
 int SDL_GL_CONTEXT_PROFILE_MASK ;
 int SDL_GL_CreateContext (int ) ;
 int SDL_GL_DEPTH_SIZE ;
 int SDL_GL_GREEN_SIZE ;
 int SDL_GL_MULTISAMPLESAMPLES ;
 int SDL_GL_MakeCurrent (int ,int ) ;
 int SDL_GL_RED_SIZE ;
 int SDL_GL_SetAttribute (int ,int) ;
 int SDL_GL_SetSwapInterval (int) ;
 int SDL_HINT_MOUSE_RELATIVE_MODE_WARP ;
 int SDL_INIT_VIDEO ;
 int SDL_Init (int ) ;
 scalar_t__ SDL_PollEvent (int *) ;
 int SDL_SetHint (int ,char*) ;
 int SDL_SetRelativeMouseMode (int ) ;
 int SDL_TRUE ;
 int SDL_WINDOWPOS_UNDEFINED ;
 int SDL_WINDOW_OPENGL ;
 int SDL_WINDOW_RESIZABLE ;
 int context ;
 int enable_synchronous () ;
 int error (char*) ;
 int getTimestep (float) ;
 int glDebugMessageCallbackARB (int ,int *) ;
 int gl_debug ;
 int initialized ;
 int loopmode (int ,int,int) ;
 int mesh_init () ;
 int prepare_threads () ;
 int process_event (int *) ;
 int quit ;
 int render_init () ;
 int screen_x ;
 int screen_y ;
 int stbgl_initExtensions () ;
 int window ;
 int world_init () ;

int SDL_main(int argc, char **argv)
{
   SDL_Init(SDL_INIT_VIDEO);

   prepare_threads();

   SDL_GL_SetAttribute(SDL_GL_RED_SIZE , 8);
   SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 8);
   SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE , 8);
   SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);

   SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_COMPATIBILITY);
   SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
   SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 1);





   SDL_GL_SetAttribute(SDL_GL_MULTISAMPLESAMPLES, 4);

   screen_x = 1920;
   screen_y = 1080;

   window = SDL_CreateWindow("caveview", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                                   screen_x, screen_y,
                                   SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE
                             );
   if (!window) error("Couldn't create window");

   context = SDL_GL_CreateContext(window);
   if (!context) error("Couldn't create context");

   SDL_GL_MakeCurrent(window, context);

   SDL_SetRelativeMouseMode(SDL_TRUE);






   stbgl_initExtensions();
   SDL_GL_SetSwapInterval(1);

   render_init();
   mesh_init();
   world_init();

   initialized = 1;

   while (!quit) {
      SDL_Event e;
      while (SDL_PollEvent(&e))
         process_event(&e);

      loopmode(getTimestep(0.0166f/8), 1, 1);
   }

   return 0;
}
