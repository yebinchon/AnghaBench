; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_ranges.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_trim.c_vdev_trim_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@VDEV_LABEL_START_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @vdev_trim_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_trim_ranges(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32* %21, i32** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = call i32 (...) @gethrtime()
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @zfs_btree_first(i32* %36, i32* %6)
  store i32* %37, i32** %10, align 8
  br label %38

38:                                               ; preds = %106, %1
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %109

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = call i32 @rs_get_end(i32* %42, %struct.TYPE_9__* %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i32 @rs_get_start(i32* %47, %struct.TYPE_9__* %50)
  %52 = sub nsw i32 %46, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @spa_iostats_trim_add(i32* %60, i32 %63, i32 0, i32 0, i32 1, i32 %64, i32 0, i32 0)
  br label %106

66:                                               ; preds = %55, %41
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = sdiv i32 %68, %69
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %102, %66
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %105

76:                                               ; preds = %72
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = load i32, i32* @VDEV_LABEL_START_SIZE, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = call i32 @rs_get_start(i32* %79, %struct.TYPE_9__* %82)
  %84 = add nsw i32 %78, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sub nsw i32 %89, %92
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MIN(i32 %93, i32 %94)
  %96 = call i32 @vdev_trim_range(%struct.TYPE_8__* %77, i32 %88, i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %76
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %2, align 4
  br label %110

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %72

105:                                              ; preds = %72
  br label %106

106:                                              ; preds = %105, %59
  %107 = load i32*, i32** %5, align 8
  %108 = call i32* @zfs_btree_next(i32* %107, i32* %6, i32* %6)
  store i32* %108, i32** %10, align 8
  br label %38

109:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %99
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32* @zfs_btree_first(i32*, i32*) #1

declare dso_local i32 @rs_get_end(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @rs_get_start(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @spa_iostats_trim_add(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vdev_trim_range(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32* @zfs_btree_next(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
