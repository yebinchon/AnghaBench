
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
struct TYPE_2__ {int RGB2Lab; } ;
typedef int LPVOID ;
typedef TYPE_1__* LPCARGO ;


 int TRUE ;
 int cmsDoTransform (int ,scalar_t__**,scalar_t__*,int) ;

__attribute__((used)) static
int Reverse(register WORD In[], register WORD Out[], register LPVOID Cargo)
{

 LPCARGO C = (LPCARGO) Cargo;
 WORD RGB[3];

 RGB[0] = 0xFFFF - In[0];
 RGB[1] = 0xFFFF - In[1];
 RGB[2] = 0xFFFF - In[2];

 cmsDoTransform(C ->RGB2Lab, &RGB, Out, 1);

 return TRUE;

}
