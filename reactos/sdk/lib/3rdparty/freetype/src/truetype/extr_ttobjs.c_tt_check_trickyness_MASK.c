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
struct TYPE_3__ {scalar_t__ family_name; } ;
typedef  int /*<<< orphan*/  TT_Face ;
typedef  TYPE_1__* FT_Face ;
typedef  int /*<<< orphan*/  FT_Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static FT_Bool
  FUNC2( FT_Face  face )
  {
    if ( !face )
      return FALSE;

    /* For first, check the face name for quick check. */
    if ( face->family_name                               &&
         FUNC0( face->family_name ) )
      return TRUE;

    /* Type42 fonts may lack `name' tables, we thus try to identify */
    /* tricky fonts by checking the checksums of Type42-persistent  */
    /* sfnt tables (`cvt', `fpgm', and `prep').                     */
    if ( FUNC1( (TT_Face)face ) )
      return TRUE;

    return FALSE;
  }