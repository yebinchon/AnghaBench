
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {scalar_t__ hsize; scalar_t__ sy; } ;


 int log_debug (char*,char const*,scalar_t__) ;

__attribute__((used)) static int
grid_check_y(struct grid *gd, const char* from, u_int py)
{
 if (py >= gd->hsize + gd->sy) {
  log_debug("%s: y out of range: %u", from, py);
  return (-1);
 }
 return (0);
}
