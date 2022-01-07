; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/screenshot/extr_screenshot.c_CaptureScreen.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/screenshot/extr_screenshot.c_CaptureScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i32, i32* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @CaptureScreen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CaptureScreen(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @GetWindowRect(i32 %8, %struct.TYPE_5__* %5)
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %11, %13
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %18, %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @GetDC(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32* @CreateCompatibleBitmap(i32 %32, i64 %35, i64 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %31
  %47 = call i32 (...) @GetError()
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ReleaseDC(i32 %50, i32 %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %2, align 4
  br label %94

54:                                               ; preds = %31
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @CreateCompatibleDC(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = icmp ne i32 %56, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = call i32 (...) @GetError()
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ReleaseDC(i32 %64, i32 %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %2, align 4
  br label %94

68:                                               ; preds = %54
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @SelectObject(i32 %71, i32* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @SRCCOPY, align 4
  %87 = call i32 @BitBlt(i32 %78, i32 0, i32 0, i64 %81, i64 %84, i32 %85, i32 0, i32 0, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @ReleaseDC(i32 %90, i32 %91)
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %68, %60, %46, %29
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32* @CreateCompatibleBitmap(i32, i64, i64) #1

declare dso_local i32 @GetError(...) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i64, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
