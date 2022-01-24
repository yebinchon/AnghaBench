#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  interpreter_version; } ;
typedef  TYPE_1__* TT_Driver ;
typedef  int /*<<< orphan*/  FT_UInt ;
typedef  int /*<<< orphan*/  FT_Module ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  Missing_Property ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static FT_Error
  FUNC3( FT_Module    module,         /* TT_Driver */
                   const char*  property_name,
                   const void*  value )
  {
    FT_Error   error  = FT_Err_Ok;
    TT_Driver  driver = (TT_Driver)module;

    FT_UInt  interpreter_version = driver->interpreter_version;


    if ( !FUNC2( property_name, "interpreter-version" ) )
    {
      FT_UInt*  val = (FT_UInt*)value;


      *val = interpreter_version;

      return error;
    }

    FUNC1(( "tt_property_get: missing property `%s'\n",
                property_name ));
    return FUNC0( Missing_Property );
  }