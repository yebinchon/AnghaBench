; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_PrintHelp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_PrintHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"(MX) little cms ColorSpace conversion tool - v2.0\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"usage: icctrans (mVar, flags)\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mVar : Matlab array.\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"flags: a string containing one or more of following options.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\09%cv - Verbose\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"\09%ci<profile> - Input profile (defaults to sRGB)\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"\09%co<profile> - Output profile (defaults to sRGB)\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\09%cl<profile> - Transform by device-link profile\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"\09%cm<profiles> - Apply multiprofile chain\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\09%ct<n> - Rendering intent\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\09%cb - Black point compensation\0A\00", align 1
@.str.11 = private unnamed_addr constant [90 x i8] c"\09%cc<0,1,2,3> - Optimize transform (0=Off, 1=Normal, 2=Hi-res, 3=Lo-Res) [defaults to 1]\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\09%cp<profile> - Soft proof profile\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"\09%cr<0,1,2,3> - Soft proof intent\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"\0AYou can use following built-ins as profiles:\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [339 x i8] c"\09*Lab2  -- D50-based v2 CIEL*a*b\0A\09*Lab4  -- D50-based v4 CIEL*a*b\0A\09*Lab   -- D50-based v4 CIEL*a*b\0A\09*XYZ   -- CIE XYZ (PCS)\0A\09*sRGB  -- IEC6 1996-2.1 sRGB color space\0A\09*Gray22 - Monochrome of Gamma 2.2\0A\09*Gray30 - Monochrome of Gamma 3.0\0A\09*null   - Monochrome black for all input\0A\09*Lin2222- CMYK linearization of gamma 2.2 on each channel\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"For suggestions, comments, bug reports etc. send mail to info@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PrintHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrintHelp() #0 {
  %1 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %5 = load i32, i32* @SW, align 4
  %6 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @SW, align 4
  %8 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @SW, align 4
  %10 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @SW, align 4
  %12 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @SW, align 4
  %14 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @SW, align 4
  %16 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @SW, align 4
  %18 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @SW, align 4
  %20 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.11, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @SW, align 4
  %22 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @SW, align 4
  %24 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([339 x i8], [339 x i8]* @.str.15, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @mexPrintf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mexPrintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
