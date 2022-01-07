; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateSetSinglePixel.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateSetSinglePixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@FLAG_FORCENOUSESSOURCE = common dso_local global i32 0, align 4
@FLAG_PATTERNSURFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"Pattern = DIB_GetSourceIndex(BltInfo->PatternSurface, PatternX, PatternY);\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"if (BltInfo->PatternSurface->sizlBitmap.cx <= ++PatternX)\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"PatternX -= BltInfo->PatternSurface->sizlBitmap.cx;\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"DestPtr = (PULONG)((char *) DestPtr + %u);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*, i32, i32)* @CreateSetSinglePixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateSetSinglePixel(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @CreateGetSource(i32* %21, i32 %22, %struct.TYPE_5__* %23, i32 %24, i32 %25, i32 0)
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @MARK(i32* %27)
  br label %29

29:                                               ; preds = %20, %15, %5
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 0, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 (i32*, i8*, ...) @Output(i32* %40, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 (i32*, i8*, ...) @Output(i32* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 (i32*, i8*, ...) @Output(i32* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 (i32*, i8*, ...) @Output(i32* %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 (i32*, i8*, ...) @Output(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %39, %34, %29
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 0, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %74, label %64

64:                                               ; preds = %60, %55, %50
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @FLAG_PATTERNSURFACE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 0, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %60
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 (i32*, i8*, ...) @Output(i32* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69, %64
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @CreateOperation(i32* %78, i32 %79, %struct.TYPE_5__* %80, i32 %81, i32 16)
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 (i32*, i8*, ...) @Output(i32* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @MARK(i32* %85)
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 (i32*, i8*, ...) @Output(i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = udiv i32 %90, 8
  %92 = call i32 (i32*, i8*, ...) @Output(i32* %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  ret void
}

declare dso_local i32 @CreateGetSource(i32*, i32, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

declare dso_local i32 @CreateOperation(i32*, i32, %struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
