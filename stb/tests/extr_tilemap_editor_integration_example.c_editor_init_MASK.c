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

/* Variables and functions */
 int O__num_types ; 
 int O_lockeddoor ; 
 int O_platform ; 
 int O_player ; 
 int O_robot ; 
 int O_vplatform ; 
 int T__num_types ; 
 int T_doorframe ; 
 int /*<<< orphan*/  T_empty ; 
 int T_entry ; 
 int T_reserved1 ; 
 int /*<<< orphan*/  edit_map ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
   int i;
   edit_map = FUNC0(20,14, 8, 16,16, 100);

   FUNC2(edit_map, T_empty);

   for (i=0; i < T__num_types; ++i) {
      if (i != T_reserved1 && i != T_entry && i != T_doorframe)
         FUNC1(edit_map, 0+i, 1, "Background");
   }
   FUNC1(edit_map, 256+O_player   , 8, "Char");
   FUNC1(edit_map, 256+O_robot    , 8, "Char");
   for (i=O_lockeddoor; i < O__num_types-2; ++i)
      if (i == O_platform || i == O_vplatform)
         FUNC1(edit_map, 256+i, 4, "Object");
      else
         FUNC1(edit_map, 256+i, 2, "Object");

   //stbte_set_layername(edit_map, 0, "background");
   //stbte_set_layername(edit_map, 1, "objects");
   //stbte_set_layername(edit_map, 2, "platforms");
   //stbte_set_layername(edit_map, 3, "characters");
}