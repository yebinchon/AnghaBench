; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_find_valid_metaslab.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_metaslab.c_find_valid_metaslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i64 }

@AVL_AFTER = common dso_local global i32 0, align 4
@TRACE_TOO_SMALL = common dso_local global i32 0, align 4
@METASLAB_WEIGHT_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i64, i32*, i32, i32, i64, i32, i32, i32*, %struct.TYPE_15__*, i32*)* @find_valid_metaslab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @find_valid_metaslab(%struct.TYPE_16__* %0, i64 %1, i32* %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i32* %8, %struct.TYPE_15__* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_15__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %21, align 8
  store i32* %10, i32** %22, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32* %28, i32** %24, align 8
  %29 = load i32*, i32** %24, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %31 = call %struct.TYPE_15__* @avl_find(i32* %29, %struct.TYPE_15__* %30, i32* %23)
  store %struct.TYPE_15__* %31, %struct.TYPE_15__** %25, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %33 = icmp eq %struct.TYPE_15__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %11
  %35 = load i32*, i32** %24, align 8
  %36 = load i32, i32* %23, align 4
  %37 = load i32, i32* @AVL_AFTER, align 4
  %38 = call %struct.TYPE_15__* @avl_nearest(i32* %35, i32 %36, i32 %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %25, align 8
  br label %39

39:                                               ; preds = %34, %11
  br label %40

40:                                               ; preds = %111, %39
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %42 = icmp ne %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %115

43:                                               ; preds = %40
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %45 = load i64, i64* %17, align 8
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @metaslab_should_allocate(%struct.TYPE_15__* %44, i64 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %20, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @TRACE_TOO_SMALL, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i32 @metaslab_trace_add(i32* %50, %struct.TYPE_16__* %51, %struct.TYPE_15__* %52, i64 %53, i32 %54, i32 %55, i32 %56)
  br label %111

58:                                               ; preds = %43
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %58
  br label %111

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, -1
  %74 = zext i1 %73 to i32
  %75 = load i32*, i32** %22, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @METASLAB_WEIGHT_PRIMARY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %69
  %80 = load i32*, i32** %22, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %69
  br label %115

84:                                               ; preds = %79
  store i32 0, i32* %26, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %26, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %26, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @metaslab_is_unique(%struct.TYPE_15__* %93, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %105

101:                                              ; preds = %92, %89
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %26, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %26, align 4
  br label %85

105:                                              ; preds = %100, %85
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %115

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %68, %49
  %112 = load i32*, i32** %24, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %114 = call %struct.TYPE_15__* @AVL_NEXT(i32* %112, %struct.TYPE_15__* %113)
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %25, align 8
  br label %40

115:                                              ; preds = %109, %83, %40
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %117 = icmp ne %struct.TYPE_15__* %116, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %118, %115
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  ret %struct.TYPE_15__* %141
}

declare dso_local %struct.TYPE_15__* @avl_find(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_15__* @avl_nearest(i32*, i32, i32) #1

declare dso_local i32 @metaslab_should_allocate(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32, i32, i32) #1

declare dso_local i32 @metaslab_is_unique(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_15__* @AVL_NEXT(i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
