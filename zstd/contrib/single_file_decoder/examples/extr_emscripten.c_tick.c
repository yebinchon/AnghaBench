
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GL_COLOR_BUFFER_BIT ;
 int GL_DEPTH_BUFFER_BIT ;
 int GL_TRIANGLES ;
 int GL_UNSIGNED_SHORT ;
 int glClear (int) ;
 int glClearColor (float,float,float,float) ;
 int glDrawElements (int ,int,int ,int ) ;
 int glFlush () ;
 int glUniform1f (scalar_t__,float) ;
 float rotDeg ;
 scalar_t__ uRotId ;

__attribute__((used)) static void tick() {
 glClearColor(1.0f, 0.0f, 1.0f, 1.0f);
 glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

 if (uRotId >= 0) {
  glUniform1f(uRotId, rotDeg);
  rotDeg += 0.1f;
  if (rotDeg >= 360.0f) {
   rotDeg -= 360.0f;
  }
 }

 glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_SHORT, 0);
 glFlush();
}
