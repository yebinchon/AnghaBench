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
struct TYPE_2__ {int /*<<< orphan*/  no_long_family_names; } ;
typedef  TYPE_1__* PCF_Driver ;
typedef  char const* FT_Module ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int /*<<< orphan*/  FT_Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  Missing_Property ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static FT_Error
  FUNC4( FT_Module    module,         /* PCF_Driver */
                    const char*  property_name,
                    const void*  value )
  {
#ifdef PCF_CONFIG_OPTION_LONG_FAMILY_NAMES

    FT_Error    error  = FT_Err_Ok;
    PCF_Driver  driver = (PCF_Driver)module;


    if ( !ft_strcmp( property_name, "no-long-family-names" ) )
    {
      FT_Bool   no_long_family_names = driver->no_long_family_names;
      FT_Bool*  val                  = (FT_Bool*)value;


      *val = no_long_family_names;

      return error;
    }

#else /* !PCF_CONFIG_OPTION_LONG_FAMILY_NAMES */

    FUNC2( module );
    FUNC2( value );
#ifndef FT_DEBUG_LEVEL_TRACE
    FUNC2( property_name );
#endif

#endif /* !PCF_CONFIG_OPTION_LONG_FAMILY_NAMES */

    FUNC1(( "pcf_property_get: missing property `%s'\n",
                property_name ));
    return FUNC0( Missing_Property );
  }