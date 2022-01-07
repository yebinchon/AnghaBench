; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_ProcessTest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/rosperf/extr_rosperf.c_ProcessTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i8**, %struct.TYPE_13__*, i32)*, i32, i32 (i8*, %struct.TYPE_13__*)*, i32 (i8*, %struct.TYPE_13__*)*, i32 (i8*, %struct.TYPE_13__*, i32)* }
%struct.TYPE_13__ = type { i32 }

@LabelWnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i32] [i32 67, i32 97, i32 108, i32 105, i32 98, i32 114, i32 97, i32 116, i32 105, i32 110, i32 103, i32 0], align 4
@.str.1 = private unnamed_addr constant [8 x i32] [i32 84, i32 101, i32 115, i32 116, i32 105, i32 110, i32 103, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @ProcessTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessTest(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load i32, i32* @LabelWnd, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @DisplayStatus(i32 %11, i8* bitcast ([12 x i32]* @.str to i8*), i32 %14, i32 0)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = call i32 @CalibrateTest(%struct.TYPE_12__* %16, %struct.TYPE_13__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %98

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32 (i8**, %struct.TYPE_13__*, i32)*, i32 (i8**, %struct.TYPE_13__*, i32)** %24, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %25(i8** %7, %struct.TYPE_13__* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 0, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %98

32:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %33
  %40 = load i32, i32* @LabelWnd, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @DisplayStatus(i32 %40, i8* bitcast ([8 x i32]* @.str.1 to i8*), i32 %43, i32 %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = call i32 @ClearWindow(%struct.TYPE_13__* %47)
  %49 = call i64 (...) @GetTickCount()
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i32 (i8*, %struct.TYPE_13__*, i32)*, i32 (i8*, %struct.TYPE_13__*, i32)** %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %52(i8* %53, %struct.TYPE_13__* %54, i32 %55)
  %57 = call i64 (...) @GetTickCount()
  %58 = load i64, i64* %8, align 8
  %59 = sub nsw i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = call i32 (...) @ProcessMessages()
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @ReportTimes(i64 %64, i32 %65, i32 %68, i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i32 (i8*, %struct.TYPE_13__*)*, i32 (i8*, %struct.TYPE_13__*)** %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = call i32 %73(i8* %74, %struct.TYPE_13__* %75)
  %77 = call i32 (...) @ProcessMessages()
  br label %78

78:                                               ; preds = %39
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %33

81:                                               ; preds = %33
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32 (i8*, %struct.TYPE_13__*)*, i32 (i8*, %struct.TYPE_13__*)** %83, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = call i32 %84(i8* %85, %struct.TYPE_13__* %86)
  %88 = load i64, i64* %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul i32 %89, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TRUE, align 4
  %96 = call i32 @ReportTimes(i64 %88, i32 %91, i32 %94, i32 %95)
  %97 = call i32 (...) @ProcessMessages()
  br label %98

98:                                               ; preds = %81, %31, %21
  ret void
}

declare dso_local i32 @DisplayStatus(i32, i8*, i32, i32) #1

declare dso_local i32 @CalibrateTest(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ClearWindow(%struct.TYPE_13__*) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @ProcessMessages(...) #1

declare dso_local i32 @ReportTimes(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
