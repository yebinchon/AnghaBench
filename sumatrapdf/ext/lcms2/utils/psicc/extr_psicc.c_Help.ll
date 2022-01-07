; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"little CMS ICC PostScript generator - v2.1 [LittleCMS %2.2f]\0A\00", align 1
@LCMS_VERSION = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"usage: psicc [flags] [<Output file>]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"flags:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"%ci<profile> - Input profile: Generates Color Space Array (CSA)\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [74 x i8] c"%co<profile> - Output profile: Generates Color Rendering Dictionary(CRD)\0A\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"%ct<0,1,2,3> - Intent (0=Perceptual, 1=Colorimetric, 2=Saturation, 3=Absolute)\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"%cb - Black point compensation (CRD only)\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%cu - Do NOT generate resource name on CRD\0A\00", align 1
@.str.8 = private unnamed_addr constant [76 x i8] c"%cc<0,1,2> - Precision (0=LowRes, 1=Normal (default), 2=Hi-res) (CRD only)\0A\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"%cn<gridpoints> - Alternate way to set precission, number of CLUT points (CRD only)\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"If no output file is specified, output goes to stdout.\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [246 x i8] c"This program is intended to be a demo of the little cms\0Aengine. Both lcms and this program are freeware. You can\0Aobtain both in source code at http://www.littlecms.com\0AFor suggestions, comments, bug reports etc. send mail to\0Ainfo@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load double, double* @LCMS_VERSION, align 8
  %3 = fdiv double %2, 1.000000e+03
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), double %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* @SW, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @SW, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = load i32, i32* @SW, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* @SW, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @SW, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @SW, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.8, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* @SW, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.12, i64 0, i64 0))
  %36 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
