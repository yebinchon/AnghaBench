; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_get_stats_ex_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_get_stats_ex_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__**, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32*, i32* }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_24__*)* @vdev_get_stats_ex_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_get_stats_ex_impl(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = icmp ne %struct.TYPE_23__* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %25 = call i32 @memset(%struct.TYPE_24__* %24, i32 0, i32 8)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %29 = call i32 @memset(%struct.TYPE_24__* %28, i32 0, i32 8)
  br label %30

30:                                               ; preds = %21, %18
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %32 = icmp ne %struct.TYPE_24__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = call i32 @memset(%struct.TYPE_24__* %34, i32 0, i32 16)
  br label %36

36:                                               ; preds = %33, %30
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %74, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %46, i64 %48
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %9, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 3
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %10, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 2
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %11, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  call void @vdev_get_stats_ex_impl(%struct.TYPE_22__* %55, %struct.TYPE_23__* %56, %struct.TYPE_24__* %57)
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %59 = icmp ne %struct.TYPE_23__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %64 = call i32 @vdev_get_child_stat(%struct.TYPE_22__* %61, %struct.TYPE_23__* %62, %struct.TYPE_23__* %63)
  br label %65

65:                                               ; preds = %60, %43
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %67 = icmp ne %struct.TYPE_24__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %72 = call i32 @vdev_get_child_stat_ex(%struct.TYPE_22__* %69, %struct.TYPE_24__* %70, %struct.TYPE_24__* %71)
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %37

77:                                               ; preds = %37
  br label %130

78:                                               ; preds = %3
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = icmp ne %struct.TYPE_24__* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %130

82:                                               ; preds = %78
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 2
  %86 = call i32 @memcpy(%struct.TYPE_24__* %83, %struct.TYPE_24__* %85, i32 16)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %126, %82
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.TYPE_19__* %92)
  %94 = icmp slt i32 %88, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %87
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = call i32 @avl_numnodes(i32* %118)
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  br label %126

126:                                              ; preds = %95
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %87

129:                                              ; preds = %87
  br label %130

130:                                              ; preds = %81, %129, %77
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @vdev_get_child_stat(%struct.TYPE_22__*, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @vdev_get_child_stat_ex(%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_19__*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
