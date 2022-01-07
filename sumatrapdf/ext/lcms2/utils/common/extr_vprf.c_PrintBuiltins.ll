; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_PrintBuiltins.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/common/extr_vprf.c_PrintBuiltins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0ABuilt-in profiles:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [324 x i8] c"\09*Lab2  -- D50-based v2 CIEL*a*b\0A\09*Lab4  -- D50-based v4 CIEL*a*b\0A\09*Lab   -- D50-based v4 CIEL*a*b\0A\09*XYZ   -- CIE XYZ (PCS)\0A\09*sRGB  -- sRGB color space\0A\09*Gray22 - Monochrome of Gamma 2.2\0A\09*Gray30 - Monochrome of Gamma 3.0\0A\09*null   - Monochrome black for all input\0A\09*Lin2222- CMYK linearization of gamma 2.2 on each channel\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintBuiltins() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([324 x i8], [324 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
