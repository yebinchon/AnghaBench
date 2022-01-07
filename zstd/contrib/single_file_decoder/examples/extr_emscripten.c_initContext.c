
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EmscriptenWebGLContextAttributes ;
typedef int EM_BOOL ;


 int EMSCRIPTEN_EVENT_TARGET_DOCUMENT ;
 int EM_FALSE ;
 int EM_TRUE ;
 int emscripten_set_resize_callback (int ,int *,int ,int (*) (int ,int *,int *)) ;
 int emscripten_webgl_create_context (char*,int *) ;
 int emscripten_webgl_init_context_attributes (int *) ;
 int emscripten_webgl_make_context_current (int ) ;
 int glCtx ;
 int resize (int ,int *,int *) ;

__attribute__((used)) static EM_BOOL initContext() {

 EmscriptenWebGLContextAttributes attr;
 emscripten_webgl_init_context_attributes(&attr);
 if ((glCtx = emscripten_webgl_create_context("#canvas", &attr))) {

  emscripten_webgl_make_context_current(glCtx);
  emscripten_set_resize_callback(EMSCRIPTEN_EVENT_TARGET_DOCUMENT, ((void*)0), EM_FALSE, resize);
  resize(0, ((void*)0), ((void*)0));
  return EM_TRUE;
 }
 return EM_FALSE;
}
