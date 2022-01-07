
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ChangeDisplaySettings (int *,int ) ;

__attribute__((used)) static void stbwingraph_ResetResolution(void)
{
   ChangeDisplaySettings(((void*)0), 0);
}
