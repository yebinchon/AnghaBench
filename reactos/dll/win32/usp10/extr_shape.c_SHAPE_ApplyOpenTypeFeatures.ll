; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_ApplyOpenTypeFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_SHAPE_ApplyOpenTypeFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@scriptInformation = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*, i32, i32, %struct.TYPE_15__*, i32*)* @SHAPE_ApplyOpenTypeFeatures to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHAPE_ApplyOpenTypeFeatures(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32* %3, i32* %4, i32 %5, i32 %6, %struct.TYPE_15__* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %22 = icmp ne %struct.TYPE_15__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  br label %94

24:                                               ; preds = %9
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %27 = call i32 @load_ot_tables(i32 %25, %struct.TYPE_16__* %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  br label %94

33:                                               ; preds = %24
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** @scriptInformation, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %43
  store i32 -1, i32* %20, align 4
  br label %55

54:                                               ; preds = %48, %33
  store i32 1, i32* %20, align 4
  br label %55

55:                                               ; preds = %54, %53
  store i32 0, i32* %19, align 4
  br label %56

56:                                               ; preds = %91, %55
  %57 = load i32, i32* %19, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %62
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = bitcast i32* %86 to i8*
  %88 = load i32*, i32** %18, align 8
  %89 = call i32 @apply_GSUB_feature(i32 %73, %struct.TYPE_17__* %74, %struct.TYPE_16__* %75, i32* %76, i32 %77, i32* %78, i32 %79, i8* %87, i32* %88)
  br label %90

90:                                               ; preds = %72, %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %19, align 4
  br label %56

94:                                               ; preds = %23, %32, %56
  ret void
}

declare dso_local i32 @load_ot_tables(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @apply_GSUB_feature(i32, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
