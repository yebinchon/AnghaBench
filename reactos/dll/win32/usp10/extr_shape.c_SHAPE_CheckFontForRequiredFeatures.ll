; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_CheckFontForRequiredFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_CheckFontForRequiredFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64* }
%struct.TYPE_5__ = type { i64 }

@ShapingData = common dso_local global %struct.TYPE_6__* null, align 8
@S_OK = common dso_local global i32 0, align 4
@FEATURE_ALL_TABLES = common dso_local global i32 0, align 4
@USP_E_SCRIPT_NOT_IN_FONT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SHAPE_CheckFontForRequiredFeatures(i32 %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShapingData, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @S_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @load_ot_tables(i32 %21, i32* %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %58, %20
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShapingData, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* @FEATURE_ALL_TABLES, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShapingData, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @load_OT_feature(i32 %38, %struct.TYPE_5__* %39, i32* %40, i32 %41, i64 %52)
  store i32* %53, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i32, i32* @S_OK, align 4
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %37
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %24

61:                                               ; preds = %24
  %62 = load i32, i32* @USP_E_SCRIPT_NOT_IN_FONT, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %56, %18
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @load_ot_tables(i32, i32*) #1

declare dso_local i32* @load_OT_feature(i32, %struct.TYPE_5__*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
