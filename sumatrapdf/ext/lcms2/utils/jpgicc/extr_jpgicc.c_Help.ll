; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"little cms ICC profile applier for JPEG - v3.2 [LittleCMS %2.2f]\0A\0A\00", align 1
@LCMS_VERSION = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"usage: jpgicc [flags] input.jpg output.jpg\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"\0Aflags:\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%cv - Verbose\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"%ci<profile> - Input profile (defaults to sRGB)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"%co<profile> - Output profile (defaults to sRGB)\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%cb - Black point compensation\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"%cd<0..1> - Observer adaptation state (abs.col. only)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%cn - Ignore embedded profile\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%ce - Embed destination profile\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"%cs<new profile> - Save embedded profile as <new profile>\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [93 x i8] c"%cc<0,1,2,3> - Precalculates transform (0=Off, 1=Normal, 2=Hi-res, 3=LoRes) [defaults to 1]\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"%cp<profile> - Soft proof profile\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"%cm<0,1,2,3> - SoftProof intent\0A\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"%cg - Marks out-of-gamut colors on softproof\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%c!<r>,<g>,<b> - Out-of-gamut marker channel values\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%cq<0..100> - Output JPEG quality\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"%ch<0,1,2,3> - More help\0A\00", align 1
@.str.19 = private unnamed_addr constant [399 x i8] c"Examples:\0A\0ATo color correct from scanner to sRGB:\0A\09jpgicc %ciscanner.icm in.jpg out.jpg\0ATo convert from monitor1 to monitor2:\0A\09jpgicc %cimon1.icm %comon2.icm in.jpg out.jpg\0ATo make a CMYK separation:\0A\09jpgicc %coprinter.icm inrgb.jpg outcmyk.jpg\0ATo recover sRGB from a CMYK separation:\0A\09jpgicc %ciprinter.icm incmyk.jpg outrgb.jpg\0ATo convert from CIELab ITU/Fax JPEG to sRGB\0A\09jpgicc in.jpg out.jpg\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [247 x i8] c"This program is intended to be a demo of the little cms\0Aengine. Both lcms and this program are freeware. You can\0Aobtain both in source code at http://www.littlecms.com\0AFor suggestions, comments, bug reports etc. send mail to\0Amarti@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @stderr, align 4
  %4 = load double, double* @LCMS_VERSION, align 8
  %5 = fdiv double %4, 1.000000e+03
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), double %5)
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %8 [
    i32 0, label %9
    i32 1, label %68
    i32 2, label %76
    i32 3, label %78
  ]

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @SW, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @SW, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* @SW, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %21)
  %23 = call i32 @PrintRenderingIntents(i32* null)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @SW, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* @SW, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @SW, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @SW, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @SW, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @SW, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.12, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @SW, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @SW, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @SW, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* @SW, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* @SW, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* @SW, align 4
  %67 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %66)
  br label %81

68:                                               ; preds = %1
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* @SW, align 4
  %71 = load i32, i32* @SW, align 4
  %72 = load i32, i32* @SW, align 4
  %73 = load i32, i32* @SW, align 4
  %74 = load i32, i32* @SW, align 4
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([399 x i8], [399 x i8]* @.str.19, i64 0, i64 0), i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  br label %81

76:                                               ; preds = %1
  %77 = call i32 (...) @PrintBuiltins()
  br label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.20, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %76, %68, %9
  %82 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @PrintRenderingIntents(i32*) #1

declare dso_local i32 @PrintBuiltins(...) #1

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
