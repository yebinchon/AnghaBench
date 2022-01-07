
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EmscriptenUiEvent ;
typedef int EM_BOOL ;


 scalar_t__ EMSCRIPTEN_RESULT_SUCCESS ;
 int EM_FALSE ;
 scalar_t__ emscripten_get_element_css_size (char*,double*,double*) ;
 int emscripten_set_canvas_element_size (char*,double,double) ;
 scalar_t__ glCtx ;
 int glViewport (int ,int ,int,int) ;

__attribute__((used)) static EM_BOOL resize(int type, const EmscriptenUiEvent* e, void* data) {
 double surfaceW;
 double surfaceH;
 if (emscripten_get_element_css_size ("#canvas", &surfaceW, &surfaceH) == EMSCRIPTEN_RESULT_SUCCESS) {
  emscripten_set_canvas_element_size("#canvas", surfaceW, surfaceH);
  if (glCtx) {
   glViewport(0, 0, (int) surfaceW, (int) surfaceH);
  }
 }
 (void) type;
 (void) data;
 (void) e;
 return EM_FALSE;
}
