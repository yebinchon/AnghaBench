; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_PhysicalFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/winmm/extr_lolvldrv.c_MMDRV_PhysicalFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

@MMDrvs = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"(%p, %04x, %08lx, %08lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"NIY QueryName\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"NIY call VxD\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unknown call %04x\0A\00", align 1
@MMSYSERR_INVALPARAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MMDRV_PhysicalFeatures(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MMDrvs, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %14
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %64 [
    i32 132, label %22
    i32 134, label %30
    i32 128, label %34
    i32 133, label %36
    i32 129, label %38
    i32 137, label %45
    i32 136, label %52
    i32 135, label %52
    i32 130, label %58
    i32 131, label %58
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @LOWORD(i32 %27)
  %29 = call i32 @lstrcpynA(i32 %23, i32 %26, i32 %28)
  br label %68

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  store i32 0, i32* %33, align 4
  br label %68

34:                                               ; preds = %4
  %35 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %68

36:                                               ; preds = %4
  %37 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %68

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 0
  store i32 %44, i32* %5, align 4
  br label %69

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i32*
  store i32 -1, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  store i32 0, i32* %51, align 4
  br label %68

52:                                               ; preds = %4, %4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @MMDRV_Message(%struct.TYPE_8__* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %69

58:                                               ; preds = %4, %4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @MMDRV_Message(%struct.TYPE_8__* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @MMSYSERR_INVALPARAM, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %45, %36, %34, %30, %22
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %64, %58, %52, %38
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @lstrcpynA(i32, i32, i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @MMDRV_Message(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
