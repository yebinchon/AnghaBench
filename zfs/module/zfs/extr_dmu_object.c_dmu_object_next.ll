; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_object.c_dmu_object_next.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_object.c_dmu_object_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.dsl_dataset* }
%struct.dsl_dataset = type { i32 }
%struct.TYPE_8__ = type { i32 }

@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@DNODES_PER_BLOCK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@DNODE_SHIFT = common dso_local global i32 0, align 4
@DNODE_FIND_HOLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_object_next(%struct.TYPE_7__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dsl_dataset*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.dsl_dataset*, %struct.dsl_dataset** %18, align 8
  store %struct.dsl_dataset* %19, %struct.dsl_dataset** %12, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %98

24:                                               ; preds = %4
  %25 = load %struct.dsl_dataset*, %struct.dsl_dataset** %12, align 8
  %26 = icmp ne %struct.dsl_dataset* %25, null
  br i1 %26, label %27, label %93

27:                                               ; preds = %24
  %28 = load %struct.dsl_dataset*, %struct.dsl_dataset** %12, align 8
  %29 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %30 = call i64 @dsl_dataset_feature_is_active(%struct.dsl_dataset* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %93

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %39 = sub nsw i32 %38, 1
  %40 = or i32 %37, %39
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %90, %32
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %41
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @dmu_object_info(%struct.TYPE_7__* %46, i32 %47, %struct.TYPE_8__* %16)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %119

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %58
  br label %90

62:                                               ; preds = %45
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @EEXIST, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %89

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DNODE_SHIFT, align 4
  %79 = ashr i32 %77, %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %14, align 4
  br label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %14, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %119

85:                                               ; preds = %75
  br label %88

86:                                               ; preds = %69
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  br label %119

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %61
  br label %41

91:                                               ; preds = %41
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %11, align 4
  br label %97

93:                                               ; preds = %27, %24
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %91
  br label %98

98:                                               ; preds = %97, %23
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @DNODE_SHIFT, align 4
  %101 = shl i32 %99, %100
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = call i32 @DMU_META_DNODE(%struct.TYPE_7__* %102)
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @DNODE_FIND_HOLE, align 4
  br label %109

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = load i32, i32* @DNODES_PER_BLOCK, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @dnode_next_offset(i32 %103, i32 %110, i32* %10, i32 0, i32 %111, i32 %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @DNODE_SHIFT, align 4
  %116 = ashr i32 %114, %115
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %109, %86, %82, %55
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64 @dsl_dataset_feature_is_active(%struct.dsl_dataset*, i32) #1

declare dso_local i32 @dmu_object_info(%struct.TYPE_7__*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @dnode_next_offset(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DMU_META_DNODE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
