; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_ChooseLeaf.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_rtree.c_ChooseLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@RTREE_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i32**)* @ChooseLeaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChooseLeaf(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store i32* null, i32** %11, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = call i32 @nodeAcquire(%struct.TYPE_16__* %23, i32 1, i32* null, i32** %11)
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %96, %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %30, %35
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i1 [ false, %25 ], [ %36, %29 ]
  br i1 %38, label %39, label %99

39:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  %40 = load i64, i64* @RTREE_ZERO, align 8
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* @RTREE_ZERO, align 8
  store i64 %41, i64* %15, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @NCELL(i32* %42)
  store i32 %43, i32* %16, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %19, align 8
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %82, %39
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  store i32 0, i32* %20, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @nodeGetCell(%struct.TYPE_16__* %49, i32* %50, i32 %51, %struct.TYPE_15__* %17)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call i64 @cellGrowth(%struct.TYPE_16__* %53, %struct.TYPE_15__* %17, %struct.TYPE_15__* %54)
  store i64 %55, i64* %21, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = call i64 @cellArea(%struct.TYPE_16__* %56, %struct.TYPE_15__* %17)
  store i64 %57, i64* %22, align 8
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %48
  %61 = load i64, i64* %21, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %21, align 8
  %66 = load i64, i64* %14, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %15, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %60, %48
  store i32 1, i32* %20, align 4
  br label %73

73:                                               ; preds = %72, %68, %64
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i64, i64* %21, align 8
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %22, align 8
  store i64 %78, i64* %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %44

85:                                               ; preds = %44
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %87 = call i32 @sqlite3_free(%struct.TYPE_15__* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @nodeAcquire(%struct.TYPE_16__* %88, i32 %89, i32* %90, i32** %18)
  store i32 %91, i32* %9, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @nodeRelease(%struct.TYPE_16__* %92, i32* %93)
  %95 = load i32*, i32** %18, align 8
  store i32* %95, i32** %11, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %25

99:                                               ; preds = %37
  %100 = load i32*, i32** %11, align 8
  %101 = load i32**, i32*** %8, align 8
  store i32* %100, i32** %101, align 8
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @nodeAcquire(%struct.TYPE_16__*, i32, i32*, i32**) #1

declare dso_local i32 @NCELL(i32*) #1

declare dso_local i32 @nodeGetCell(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_15__*) #1

declare dso_local i64 @cellGrowth(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @cellArea(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3_free(%struct.TYPE_15__*) #1

declare dso_local i32 @nodeRelease(%struct.TYPE_16__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
