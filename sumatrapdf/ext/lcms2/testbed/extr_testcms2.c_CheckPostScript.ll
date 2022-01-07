; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckPostScript.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckPostScript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"test5.icc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sRGB_CSA.ps\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"aRGBlcms2.icc\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"aRGB_CSA.ps\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"test4.icc\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"sRGBV4_CSA.ps\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SWOP_CSA.ps\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Lab_CSA.ps\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"graylcms2.icc\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gray_CSA.ps\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"sRGB_CRD.ps\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"aRGB_CRD.ps\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Lab_CRD.ps\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"SWOP_CRD.ps\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"sRGBV4_CRD.ps\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gray_CRD.ps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckPostScript to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckPostScript() #0 {
  %1 = call i32 @GenerateCSA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @GenerateCSA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %3 = call i32 @GenerateCSA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %4 = call i32 @GenerateCSA(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %5 = call i32 @GenerateCSA(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %6 = call i32 @GenerateCSA(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %7 = call i32 @GenerateCRD(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %8 = call i32 @GenerateCRD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %9 = call i32 @GenerateCRD(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %10 = call i32 @GenerateCRD(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %11 = call i32 @GenerateCRD(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %12 = call i32 @GenerateCRD(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @GenerateCSA(i8*, i8*) #1

declare dso_local i32 @GenerateCRD(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
