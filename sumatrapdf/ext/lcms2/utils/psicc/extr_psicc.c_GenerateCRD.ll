; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_GenerateCRD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/psicc/extr_psicc.c_GenerateCRD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cOutProf = common dso_local global i32 0, align 4
@BlackPointCompensation = common dso_local global i64 0, align 8
@cmsFLAGS_BLACKPOINTCOMPENSATION = common dso_local global i32 0, align 4
@Undecorated = common dso_local global i64 0, align 8
@cmsFLAGS_NODEFAULTRESOURCEDEF = common dso_local global i32 0, align 4
@PrecalcMode = common dso_local global i32 0, align 4
@cmsFLAGS_LOWRESPRECALC = common dso_local global i32 0, align 4
@cmsFLAGS_HIGHRESPRECALC = common dso_local global i32 0, align 4
@NumOfGridPoints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ERROR: Unknown precalculation mode '%d'\00", align 1
@Intent = common dso_local global i32 0, align 4
@OutFile = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @GenerateCRD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GenerateCRD(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @cOutProf, align 4
  %9 = call i32* @OpenStockProfile(i32 %7, i32 %8)
  store i32* %9, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %86

13:                                               ; preds = %1
  %14 = load i64, i64* @BlackPointCompensation, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @cmsFLAGS_BLACKPOINTCOMPENSATION, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* @Undecorated, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @cmsFLAGS_NODEFAULTRESOURCEDEF, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* @PrecalcMode, align 4
  switch i32 %28, label %46 [
    i32 0, label %29
    i32 2, label %33
    i32 1, label %37
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @cmsFLAGS_LOWRESPRECALC, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %49

33:                                               ; preds = %27
  %34 = load i32, i32* @cmsFLAGS_HIGHRESPRECALC, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %49

37:                                               ; preds = %27
  %38 = load i32, i32* @NumOfGridPoints, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @NumOfGridPoints, align 4
  %42 = call i32 @cmsFLAGS_GRIDPOINTS(i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %37
  br label %49

46:                                               ; preds = %27
  %47 = load i32, i32* @PrecalcMode, align 4
  %48 = call i32 @FatalError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %45, %33, %29
  %50 = load i32, i32* %2, align 4
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @Intent, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @cmsGetPostScriptCRD(i32 %50, i32* %51, i32 %52, i32 %53, i8* null, i32 0)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %86

58:                                               ; preds = %49
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  %61 = call i64 @malloc(i64 %60)
  %62 = inttoptr i64 %61 to i8*
  store i8* %62, i8** %5, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %86

66:                                               ; preds = %58
  %67 = load i32, i32* %2, align 4
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @Intent, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %4, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @cmsGetPostScriptCRD(i32 %67, i32* %68, i32 %69, i32 %70, i8* %71, i32 %73)
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* @OutFile, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %79)
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @cmsCloseProfile(i32 %83, i32* %84)
  br label %86

86:                                               ; preds = %66, %65, %57, %12
  ret void
}

declare dso_local i32* @OpenStockProfile(i32, i32) #1

declare dso_local i32 @cmsFLAGS_GRIDPOINTS(i32) #1

declare dso_local i32 @FatalError(i8*, i32) #1

declare dso_local i64 @cmsGetPostScriptCRD(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
