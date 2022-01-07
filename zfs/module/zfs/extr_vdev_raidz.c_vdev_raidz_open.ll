; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_open.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz.c_vdev_raidz_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i64, i64, %struct.TYPE_6__** }
%struct.TYPE_5__ = type { i32 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@VDEV_AUX_BAD_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_AUX_NO_REPLICAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32*, i32*)* @vdev_raidz_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_open(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %25, %4
  %33 = load i32, i32* @VDEV_AUX_BAD_LABEL, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %120

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = call i32 @vdev_open_children(%struct.TYPE_6__* %40)
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %94, %39
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %42
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 7
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %10, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %94

66:                                               ; preds = %48
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, 1
  %74 = call i32 @MIN(i32 %69, i64 %73)
  %75 = add nsw i32 %74, 1
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @MIN(i32 %79, i64 %83)
  %85 = add nsw i32 %84, 1
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @MAX(i32 %88, i32 %91)
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %66, %60
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %42

97:                                               ; preds = %42
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, %100
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load i32, i32* @VDEV_AUX_NO_REPLICAS, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %120

119:                                              ; preds = %97
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %113, %32
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_open_children(%struct.TYPE_6__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
