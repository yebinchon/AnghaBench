; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_FitConsoleWindow.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_FitConsoleWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@g_hConOut = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @FitConsoleWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FitConsoleWindow(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i64, align 8
  %10 = bitcast %struct.TYPE_8__* %5 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* @g_hConOut, align 4
  %15 = call i64 @GetConsoleScreenBufferInfo(i32 %14, %struct.TYPE_9__* %7)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %102

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %20, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %26 = call i64 @SRWIDTH(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %37, %17
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %54, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %60 = call i64 @SRHEIGHT(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %59)
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %58
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* @TRUE, align 8
  store i64 %84, i64* %9, align 8
  br label %85

85:                                               ; preds = %71, %51
  %86 = load i64, i64* %9, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* @g_hConOut, align 4
  %93 = load i64, i64* @TRUE, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %95 = call i32 @SetConsoleWindowInfo(i32 %92, i64 %93, %struct.TYPE_10__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = load i64, i64* @FALSE, align 8
  store i64 %98, i64* %4, align 8
  br label %104

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %88, %85
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %4, align 8
  br label %104

102:                                              ; preds = %3
  %103 = load i64, i64* @FALSE, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %100, %97
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local i64 @GetConsoleScreenBufferInfo(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @SRWIDTH(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i64 @SRHEIGHT(%struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

declare dso_local i32 @SetConsoleWindowInfo(i32, i64, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
