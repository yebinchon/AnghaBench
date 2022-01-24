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
struct TYPE_3__ {int array_length; int bytes_per_element; int type; scalar_t__ default_value; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ stbvox_uniform_info ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  GL_ARRAY_BUFFER_ARB ; 
 int /*<<< orphan*/  GL_RG32F ; 
 int /*<<< orphan*/  GL_RGB32F ; 
 int /*<<< orphan*/  GL_RGBA32F ; 
 int /*<<< orphan*/  GL_STATIC_DRAW_ARB ; 
 scalar_t__ GL_TEXTURE0 ; 
 int /*<<< orphan*/  GL_TEXTURE_BUFFER_ARB ; 
#define  STBVOX_UNIFORM_TYPE_vec2 130 
#define  STBVOX_UNIFORM_TYPE_vec3 129 
#define  STBVOX_UNIFORM_TYPE_vec4 128 
 int STBVOX_UNIFORM_color_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_prog ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * unibuf ; 
 int /*<<< orphan*/ * unitex ; 

void FUNC12(int uniform, int slot)
{
   GLenum type;
   stbvox_uniform_info raw, *ui=&raw;
   GLint uloc;
   
   FUNC11(ui, uniform);
   uloc = FUNC10(main_prog, ui->name);

   if (uniform == STBVOX_UNIFORM_color_table)
      ((float *)ui->default_value)[63*4+3] = 2.0f; // emissive

   FUNC5(1, &unibuf[uniform]);
   FUNC2(GL_ARRAY_BUFFER_ARB, unibuf[uniform]);
   FUNC4(GL_ARRAY_BUFFER_ARB, ui->array_length * ui->bytes_per_element, ui->default_value, GL_STATIC_DRAW_ARB);
   FUNC2(GL_ARRAY_BUFFER_ARB, 0);

   FUNC6(1, &unitex[uniform]);
   FUNC3(GL_TEXTURE_BUFFER_ARB, unitex[uniform]);
   switch (ui->type) {
      case STBVOX_UNIFORM_TYPE_vec2: type = GL_RG32F; break;
      case STBVOX_UNIFORM_TYPE_vec3: type = GL_RGB32F; break;
      case STBVOX_UNIFORM_TYPE_vec4: type = GL_RGBA32F; break;
      default: FUNC0(0);
   }
   FUNC7(GL_TEXTURE_BUFFER_ARB, type, unibuf[uniform]);
   FUNC3(GL_TEXTURE_BUFFER_ARB, 0);

   FUNC1(GL_TEXTURE0 + slot);
   FUNC3(GL_TEXTURE_BUFFER_ARB, unitex[uniform]);
   FUNC1(GL_TEXTURE0);

   FUNC9(main_prog);
   FUNC8(uloc, slot);
}