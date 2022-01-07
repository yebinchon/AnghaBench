; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_ApplyOpenTypePositions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_ApplyOpenTypePositions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }

@ShapingData = common dso_local global %struct.TYPE_17__* null, align 8
@FEATURE_GPOS_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHAPE_ApplyOpenTypePositions(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** @ShapingData, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %26 = call i32 @load_ot_tables(i32 %24, %struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %7
  br label %89

37:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %86, %37
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %89

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %58 = load i32, i32* @FEATURE_GPOS_TABLE, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = bitcast i32* %65 to i8*
  %67 = call i32* @load_OT_feature(i32 %55, %struct.TYPE_16__* %56, %struct.TYPE_15__* %57, i32 %58, i8* %66)
  store i32* %67, i32** %17, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %54
  br label %86

71:                                               ; preds = %54
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @GPOS_apply_feature(%struct.TYPE_15__* %72, i32 %75, i32* %77, %struct.TYPE_16__* %78, i32* %79, i32* %80, i32* %81, i32 %82, i32* %83)
  br label %85

85:                                               ; preds = %71, %44
  br label %86

86:                                               ; preds = %85, %70
  %87 = load i32, i32* %16, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %16, align 4
  br label %38

89:                                               ; preds = %36, %38
  ret void
}

declare dso_local i32 @load_ot_tables(i32, %struct.TYPE_15__*) #1

declare dso_local i32* @load_OT_feature(i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, i8*) #1

declare dso_local i32 @GPOS_apply_feature(%struct.TYPE_15__*, i32, i32*, %struct.TYPE_16__*, i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
