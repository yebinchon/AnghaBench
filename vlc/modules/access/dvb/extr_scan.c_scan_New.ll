; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_New.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32*, i32*, i64, i32, i32, i64, i32*, i64, i32*, i8*, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { i64 }

@SCAN_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @scan_New(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCAN_NONE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %99

23:                                               ; preds = %7
  %24 = call %struct.TYPE_12__* @malloc(i32 136)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %16, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %26 = icmp eq %struct.TYPE_12__* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  br label %99

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @VLC_OBJECT(i32* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 17
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 15
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 14
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 12
  store i32* null, i32** %49, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 11
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 10
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 8
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 6
  %65 = call i32 @scan_parameter_Init(i32* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = call i32 @scan_parameter_Copy(%struct.TYPE_13__* %66, i32* %68)
  %70 = call i32 (...) @vlc_tick_now()
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %80 = call i32 @scan_Prepare(i32* %77, %struct.TYPE_13__* %78, %struct.TYPE_12__* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = call i32 @scan_Debug_Parameters(i32* %95, %struct.TYPE_13__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %8, align 8
  br label %99

99:                                               ; preds = %31, %30, %22
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  ret %struct.TYPE_12__* %100
}

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @VLC_OBJECT(i32*) #1

declare dso_local i32 @scan_parameter_Init(i32*) #1

declare dso_local i32 @scan_parameter_Copy(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @scan_Prepare(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @scan_Debug_Parameters(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
