#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int leftSideBearing; int rightSideBearing; int characterWidth; int ascent; int descent; scalar_t__ attributes; } ;
typedef  TYPE_1__* PCF_Metric ;
typedef  TYPE_1__ PCF_Compressed_MetricRec ;
typedef  int /*<<< orphan*/  FT_ULong ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  void* FT_Short ;
typedef  int /*<<< orphan*/  FT_Frame_Field ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  FT_Err_Ok ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MSBFirst ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCF_DEFAULT_FORMAT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* pcf_compressed_metric_header ; 
 int /*<<< orphan*/ * pcf_metric_header ; 
 int /*<<< orphan*/ * pcf_metric_msb_header ; 

__attribute__((used)) static FT_Error
  FUNC4( FT_Stream   stream,
                  FT_ULong    format,
                  PCF_Metric  metric )
  {
    FT_Error  error = FT_Err_Ok;


    if ( FUNC3( format, PCF_DEFAULT_FORMAT ) )
    {
      const FT_Frame_Field*  fields;


      /* parsing normal metrics */
      fields = ( FUNC2( format ) == MSBFirst )
               ? pcf_metric_msb_header
               : pcf_metric_header;

      /* the following sets `error' but doesn't return in case of failure */
      (void)FUNC0( fields, metric );
    }
    else
    {
      PCF_Compressed_MetricRec  compr;


      /* parsing compressed metrics */
      if ( FUNC0( pcf_compressed_metric_header, &compr ) )
        goto Exit;

      metric->leftSideBearing  = (FT_Short)( compr.leftSideBearing  - 0x80 );
      metric->rightSideBearing = (FT_Short)( compr.rightSideBearing - 0x80 );
      metric->characterWidth   = (FT_Short)( compr.characterWidth   - 0x80 );
      metric->ascent           = (FT_Short)( compr.ascent           - 0x80 );
      metric->descent          = (FT_Short)( compr.descent          - 0x80 );
      metric->attributes       = 0;
    }

    FUNC1(( " width=%d,"
                " lsb=%d, rsb=%d,"
                " ascent=%d, descent=%d,"
                " attributes=%d\n",
                metric->characterWidth,
                metric->leftSideBearing,
                metric->rightSideBearing,
                metric->ascent,
                metric->descent,
                metric->attributes ));

  Exit:
    return error;
  }