; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_sfnt_get_name_id.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/sfnt/extr_sfdriver.c_sfnt_get_name_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i64, i64*, i64*)* @sfnt_get_name_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfnt_get_name_id(%struct.TYPE_9__* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 -1, i64* %11, align 8
  %12 = load i64*, i64** %8, align 8
  store i64 -1, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %71, %4
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %23, %24
  %26 = inttoptr i64 %25 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %10, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %19
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = call i64 @IS_WIN(%struct.TYPE_8__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1033
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %41
  %51 = load i64, i64* %9, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %46, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = call i64 @IS_APPLE(%struct.TYPE_8__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i64*, i64** %8, align 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %57
  %67 = load i64, i64* %9, align 8
  %68 = load i64*, i64** %8, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %66, %62, %53
  br label %70

70:                                               ; preds = %69, %32, %19
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %9, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %9, align 8
  br label %13

74:                                               ; preds = %13
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i64*, i64** %8, align 8
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %80, 0
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i1 [ true, %74 ], [ %81, %78 ]
  %84 = zext i1 %83 to i32
  ret i32 %84
}

declare dso_local i64 @IS_WIN(%struct.TYPE_8__*) #1

declare dso_local i64 @IS_APPLE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
