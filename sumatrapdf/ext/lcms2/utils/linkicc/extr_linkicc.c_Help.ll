; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"\0Alinkicc: Links profiles into a single devicelink.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"usage: linkicc [flags] <profiles>\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"flags:\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"%co<profile> - Output devicelink profile. [defaults to 'devicelink.icc']\0A\00", align 1
@SW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [71 x i8] c"%cc<0,1,2> - Precision (0=LowRes, 1=Normal, 2=Hi-res) [defaults to 1]\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"%cn<gridpoints> - Alternate way to set precision, number of CLUT points\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%cd<description> - description text (quotes can be used)\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"%cy<copyright> - copyright notice (quotes can be used)\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\0A%ck<0..400> - Ink-limiting in %% (CMYK only)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%c8 - Creates 8-bit devicelink\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"%cx - Creatively, guess deviceclass of resulting profile.\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"%cb - Black point compensation\0A\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"%ca<0..1> - Observer adaptation state (abs.col. only)\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"%cl - Use linearization curves (may affect accuracy)\0A\00", align 1
@.str.15 = private unnamed_addr constant [78 x i8] c"%cr<v.r> - Profile version. (CAUTION: may change the profile implementation)\0A\00", align 1
@.str.16 = private unnamed_addr constant [71 x i8] c"Colorspaces must be paired except Lab/XYZ, that can be interchanged.\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%ch<0,1,2,3> - More help\0A\00", align 1
@.str.18 = private unnamed_addr constant [648 x i8] c"\0AExamples:\0A\0ATo create 'devicelink.icm' from a.icc to b.icc:\0A\09linkicc a.icc b.icc\0A\0ATo create 'out.icc' from sRGB to cmyk.icc:\0A\09linkicc -o out.icc *sRGB cmyk.icc\0A\0ATo create a sRGB input profile working in Lab:\0A\09linkicc -x -o sRGBLab.icc *sRGB *Lab\0A\0ATo create a XYZ -> sRGB output profile:\0A\09linkicc -x -o sRGBLab.icc *XYZ *sRGB\0A\0ATo create a abstract profile doing softproof for cmyk.icc:\0A\09linkicc -t1 -x -o softproof.icc *Lab cmyk.icc cmyk.icc *Lab\0A\0ATo create a 'grayer' sRGB input profile:\0A\09linkicc -x -o grayer.icc *sRGB gray.icc gray.icc *Lab\0A\0ATo embed ink limiting into a cmyk output profile:\0A\09linkicc -x -o cmyklimited.icc -k 250 cmyk.icc *Lab\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [246 x i8] c"This program is intended to be a demo of the little cms\0Aengine. Both lcms and this program are freeware. You can\0Aobtain both in source code at http://www.littlecms.com\0AFor suggestions, comments, bug reports etc. send mail to\0Ainfo@littlecms.com\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Help(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %4 [
    i32 0, label %5
    i32 1, label %58
    i32 2, label %60
    i32 3, label %63
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* @SW, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = call i32 @PrintRenderingIntents(i32* null)
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* @SW, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* @SW, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* @SW, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* @SW, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @SW, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* @SW, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @stderr, align 4
  %37 = load i32, i32* @SW, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* @SW, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* @SW, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @SW, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* @SW, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.15, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.16, i64 0, i64 0))
  %55 = load i32, i32* @stderr, align 4
  %56 = load i32, i32* @SW, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i64 0, i64 0), i32 %56)
  br label %66

58:                                               ; preds = %1
  %59 = call i32 (...) @PrintBuiltins()
  br label %66

60:                                               ; preds = %1
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([648 x i8], [648 x i8]* @.str.18, i64 0, i64 0))
  br label %66

63:                                               ; preds = %1
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.19, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60, %58, %5
  %67 = call i32 @exit(i32 0) #3
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
