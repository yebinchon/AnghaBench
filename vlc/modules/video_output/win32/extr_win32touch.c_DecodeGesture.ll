; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGesture.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_win32touch.c_DecodeGesture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32)*, i64 (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Could not retrieve a valid GESTUREINFO structure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeGesture(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @DefWindowProc(i32 %21, i32 %22, i32 %23, i64 %24)
  store i32 %25, i32* %7, align 4
  br label %69

26:                                               ; preds = %6
  %27 = call i32 @ZeroMemory(%struct.TYPE_9__* %14, i32 4)
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 4, i32* %28, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 %31(i32 %33, %struct.TYPE_9__* %14)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %15, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i64 (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*)*, i64 (i32*, %struct.TYPE_8__*, %struct.TYPE_9__*)** %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = call i64 %41(i32* %42, %struct.TYPE_8__* %43, %struct.TYPE_9__* %14)
  store i64 %44, i64* %16, align 8
  br label %53

45:                                               ; preds = %26
  %46 = call i64 (...) @GetLastError()
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @msg_Err(i32* %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i64, i64* %16, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load i64, i64* %13, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 %59(i32 %61)
  store i32 0, i32* %7, align 4
  br label %69

63:                                               ; preds = %53
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @DefWindowProc(i32 %64, i32 %65, i32 %66, i64 %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %56, %20
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @DefWindowProc(i32, i32, i32, i64) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
