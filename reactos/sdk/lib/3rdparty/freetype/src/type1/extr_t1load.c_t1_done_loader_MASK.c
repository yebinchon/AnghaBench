#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  memory; } ;
struct TYPE_7__ {TYPE_1__ root; } ;
struct TYPE_8__ {int /*<<< orphan*/  subrs_hash; int /*<<< orphan*/  subrs; int /*<<< orphan*/  swap_table; int /*<<< orphan*/  glyph_names; int /*<<< orphan*/  charstrings; int /*<<< orphan*/  encoding_table; TYPE_2__ parser; } ;
typedef  TYPE_2__* T1_Parser ;
typedef  TYPE_3__* T1_Loader ;
typedef  int /*<<< orphan*/  FT_Memory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC4( T1_Loader  loader )
  {
    T1_Parser  parser = &loader->parser;
    FT_Memory  memory = parser->root.memory;


    /* finalize tables */
    FUNC2( &loader->encoding_table );
    FUNC2( &loader->charstrings );
    FUNC2( &loader->glyph_names );
    FUNC2( &loader->swap_table );
    FUNC2( &loader->subrs );

    /* finalize hash */
    FUNC3( loader->subrs_hash, memory );
    FUNC0( loader->subrs_hash );

    /* finalize parser */
    FUNC1( parser );
  }