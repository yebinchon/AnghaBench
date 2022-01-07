
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_4__ {int bpp; int vs_height; int vs_width; } ;
typedef scalar_t__ GR_CURSOR_ID ;


 int GR_ROOT_WINDOW_ID ;
 int GrClose () ;
 int GrDestroyGC (int ) ;
 int GrDestroyWindow (int ) ;
 int GrFillRect (int ,int ,int ,int ,int ,int ) ;
 int GrGetScreenInfo (TYPE_1__*) ;
 int GrMainLoop (int ) ;
 int GrMapWindow (int ) ;
 int GrNewGC () ;
 int GrNewWindow (int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ GrOpen () ;
 int GrRegisterInput (int ) ;
 int GrSelectEvents (int ,int) ;
 int GrSetGCForeground (int ,int ) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int g_Bpp ;
 int g_bpp ;
 TYPE_2__ g_clip ;
 int g_directory ;
 int g_domain ;
 int g_flags ;
 int g_gc ;
 int g_gc_clean ;
 int g_height ;
 scalar_t__ g_null_cursor ;
 int g_password ;
 int g_sck ;
 TYPE_1__ g_screen_info ;
 int g_server_bpp ;
 int g_servername ;
 int g_shell ;
 int g_width ;
 int g_wnd ;
 int get_username_and_hostname () ;
 int init_keys () ;
 int nanox_event ;
 int parse_parameters (int,char**) ;
 int rdp_connect (int ,int ,int ,int ,int ,int ) ;
 int stderr ;
 scalar_t__ ui_create_cursor (int ,int ,int,int,int ,int ) ;
 int ui_destroy_cursor (void*) ;

int main(int in_argc, char ** in_argv)
{
  get_username_and_hostname();

  if (!parse_parameters(in_argc, in_argv))
  {
    exit(0);
  }

  if (GrOpen() < 0)
  {
    fprintf(stderr, "Couldn't connect to Nano-X server\n");
    exit(1);
  }
  GrGetScreenInfo(&g_screen_info);
  g_bpp = g_screen_info.bpp;
  g_Bpp = (g_screen_info.bpp + 7) / 8;
  g_width = g_screen_info.vs_width;
  g_height = g_screen_info.vs_height;
  g_clip.x = 0;
  g_clip.y = 0;
  g_clip.width = g_width;
  g_clip.height = g_height;
  if (!((g_bpp == 32 && g_server_bpp == 16) ||
        (g_bpp == 16 && g_server_bpp == 16)))
  {
    fprintf(stderr, "unsupported bpp, server = %d, client = %d\n",
            g_server_bpp, g_bpp);
    GrClose();
    exit(0);
  }
  init_keys();

  if (!rdp_connect(g_servername, g_flags, g_domain, g_password, g_shell,
                   g_directory))
  {
    fprintf(stderr, "Error connecting\n");
    GrClose();
    exit(1);
  }

  g_wnd = GrNewWindow(GR_ROOT_WINDOW_ID, 0, 0, g_width, g_height, 0, 0, 0);

  GrMapWindow(g_wnd);

  g_gc = GrNewGC();
  g_gc_clean = GrNewGC();

  GrSetGCForeground(g_gc, 0);
  GrFillRect(g_wnd, g_gc, 0, 0, g_width, g_height);

  g_null_cursor = (GR_CURSOR_ID)ui_create_cursor(0, 0, 32, 32, 0, 0);

  GrSelectEvents(g_wnd, -1);
  GrRegisterInput(g_sck);
  GrMainLoop(nanox_event);

  ui_destroy_cursor((void*)g_null_cursor);

  GrDestroyGC(g_gc);
  GrDestroyGC(g_gc_clean);

  GrDestroyWindow(g_wnd);

  GrClose();
  return 0;
}
