#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SDL_Event ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  SDL_GL_BLUE_SIZE ; 
 int SDL_GL_CONTEXT_DEBUG_FLAG ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_FLAGS ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_MAJOR_VERSION ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_MINOR_VERSION ; 
 int SDL_GL_CONTEXT_PROFILE_COMPATIBILITY ; 
 int /*<<< orphan*/  SDL_GL_CONTEXT_PROFILE_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GL_DEPTH_SIZE ; 
 int /*<<< orphan*/  SDL_GL_GREEN_SIZE ; 
 int /*<<< orphan*/  SDL_GL_MULTISAMPLESAMPLES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_GL_RED_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  SDL_HINT_MOUSE_RELATIVE_MODE_WARP ; 
 int /*<<< orphan*/  SDL_INIT_VIDEO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDL_TRUE ; 
 int /*<<< orphan*/  SDL_WINDOWPOS_UNDEFINED ; 
 int SDL_WINDOW_OPENGL ; 
 int SDL_WINDOW_RESIZABLE ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (float) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gl_debug ; 
 int initialized ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  quit ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int screen_x ; 
 int screen_y ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  window ; 
 int /*<<< orphan*/  FUNC20 () ; 

int FUNC21(int argc, char **argv)
{
   FUNC6(SDL_INIT_VIDEO);

   FUNC16();

   FUNC4(SDL_GL_RED_SIZE  , 8);
   FUNC4(SDL_GL_GREEN_SIZE, 8);
   FUNC4(SDL_GL_BLUE_SIZE , 8);
   FUNC4(SDL_GL_DEPTH_SIZE, 24);

   FUNC4(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_COMPATIBILITY);
   FUNC4(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
   FUNC4(SDL_GL_CONTEXT_MINOR_VERSION, 1);

   #ifdef GL_DEBUG
   SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_DEBUG_FLAG);
   #endif

   FUNC4(SDL_GL_MULTISAMPLESAMPLES, 4);

   screen_x = 1920;
   screen_y = 1080;

   window = FUNC1("caveview", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED,
                                   screen_x, screen_y,
                                   SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE
                             );
   if (!window) FUNC11("Couldn't create window");

   context = FUNC2(window);
   if (!context) FUNC11("Couldn't create context");

   FUNC3(window, context); // is this true by default?

   FUNC9(SDL_TRUE);
   #if defined(_MSC_VER) && _MSC_VER < 1300
   // work around broken behavior in VC6 debugging
   if (IsDebuggerPresent())
      SDL_SetHint(SDL_HINT_MOUSE_RELATIVE_MODE_WARP, "1");
   #endif

   FUNC19();

   #ifdef GL_DEBUG
   if (glDebugMessageCallbackARB) {
      glDebugMessageCallbackARB(gl_debug, NULL);

      enable_synchronous();
   }
   #endif

   FUNC5(1);

   FUNC18();
   FUNC15();
   FUNC20();

   initialized = 1;

   while (!quit) {
      SDL_Event e;
      while (FUNC7(&e))
         FUNC17(&e);

      FUNC14(FUNC12(0.0166f/8), 1, 1);
   }

   return 0;
}