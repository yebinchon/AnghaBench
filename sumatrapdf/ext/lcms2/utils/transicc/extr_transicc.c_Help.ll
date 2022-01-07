; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"usage: transicc [flags] [CGATS input] [CGATS output]\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"flags:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%cv<0..3> - Verbosity level\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"%ce[op] - Encoded representation of numbers\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09%cw - use 16 bits\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"\09%cx - Hexadecimal\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"%cs - bounded mode (clip negatives and highliths)\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%cq - Quantize (round decimals)\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%ci<profile> - Input profile (defaults to sRGB)\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"%co<profile> - Output profile (defaults to sRGB)\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"%cl<profile> - Transform by device-link profile\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"\0AYou can use '*Lab', '*xyz' and others as built-in profiles\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"%cd<0..1> - Observer adaptation state (abs.col. only)\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"%cb - Black point compensation\0A\00", align 1
@.str.15 = private unnamed_addr constant [76 x i8] c"%cc<0,1,2,3> Precalculates transform (0=Off, 1=Normal, 2=Hi-res, 3=LoRes)\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"%cn - Terse output, intended for pipe usage\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%cp<profile> - Soft proof profile\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%cm<0,1,2,3> - Soft proof intent\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"%cg - Marks out-of-gamut colors on softproof\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [246 x i8] c"This program is intended to be a demo of the little cms\0Aengine. Both lcms and this program are freeware. You can\0Aobtain both in source code at http://www.littlecms.com\0AFor suggestions, comments, bug reports etc. send mail to\0Ainfo@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 (i32, i8*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = load i32, i32* @SW, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @stderr, align 4
  %9 = load i32, i32* @SW, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = load i32, i32* @SW, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @SW, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* @SW, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* @SW, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* @SW, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @SW, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* @SW, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %34 = call i32 @PrintRenderingIntents(i32* null)
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* @SW, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* @SW, align 4
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @SW, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.15, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* @SW, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @SW, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @stderr, align 4
  %53 = load i32, i32* @SW, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* @SW, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @PrintRenderingIntents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
