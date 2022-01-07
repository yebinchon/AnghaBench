
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tex; int x; float y; int z; int spinzi; float flap; float fi; float yi; } ;


 TYPE_1__* obj ;
 int rand () ;

void SetObject(int loop)
{
 obj[loop].tex=rand()%3;
 obj[loop].x=rand()%34-17.0f;
 obj[loop].y=18.0f;
 obj[loop].z=-((rand()%30000/1000.0f)+10.0f);
 obj[loop].spinzi=(rand()%10000)/5000.0f-1.0f;
 obj[loop].flap=0.0f;
 obj[loop].fi=0.05f+(rand()%100)/1000.0f;
 obj[loop].yi=0.001f+(rand()%1000)/10000.0f;
}
