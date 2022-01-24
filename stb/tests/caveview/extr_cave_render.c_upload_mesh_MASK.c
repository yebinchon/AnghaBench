#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int num_quads; int /*<<< orphan*/  fbuf; int /*<<< orphan*/  fbuf_tex; int /*<<< orphan*/  vbuf; } ;
typedef  TYPE_1__ chunk_mesh ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER_ARB ; 
 int /*<<< orphan*/  GL_RGBA8UI ; 
 int /*<<< orphan*/  GL_STATIC_DRAW_ARB ; 
 int /*<<< orphan*/  GL_TEXTURE_BUFFER_ARB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(chunk_mesh *cm, uint8 *build_buffer, uint8 *face_buffer)
{
   FUNC3(1, &cm->vbuf);
   FUNC0(GL_ARRAY_BUFFER_ARB, cm->vbuf);
   FUNC2(GL_ARRAY_BUFFER_ARB, cm->num_quads*4*sizeof(uint32), build_buffer, GL_STATIC_DRAW_ARB);
   FUNC0(GL_ARRAY_BUFFER_ARB, 0);

   FUNC3(1, &cm->fbuf);
   FUNC0(GL_TEXTURE_BUFFER_ARB, cm->fbuf);
   FUNC2(GL_TEXTURE_BUFFER_ARB, cm->num_quads*sizeof(uint32), face_buffer , GL_STATIC_DRAW_ARB);
   FUNC0(GL_TEXTURE_BUFFER_ARB, 0);

   FUNC4(1, &cm->fbuf_tex);
   FUNC1(GL_TEXTURE_BUFFER_ARB, cm->fbuf_tex);
   FUNC5(GL_TEXTURE_BUFFER_ARB, GL_RGBA8UI, cm->fbuf);
   FUNC1(GL_TEXTURE_BUFFER_ARB, 0);
}