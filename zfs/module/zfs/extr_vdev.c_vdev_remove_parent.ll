; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_remove_parent.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_remove_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_13__*, i32, i64, i64, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_13__ = type { i32 }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@vdev_mirror_ops = common dso_local global i32 0, align 4
@vdev_replacing_ops = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_remove_parent(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 10
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 10
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %11, %struct.TYPE_14__** %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load i64, i64* @SCL_ALL, align 8
  %16 = load i32, i32* @RW_WRITER, align 4
  %17 = call i64 @spa_config_held(%struct.TYPE_13__* %14, i64 %15, i32 %16)
  %18 = load i64, i64* @SCL_ALL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, @vdev_mirror_ops
  br i1 %31, label %42, label %32

32:                                               ; preds = %1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, @vdev_replacing_ops
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 9
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, @vdev_spare_ops
  br label %42

42:                                               ; preds = %37, %32, %1
  %43 = phi i1 [ true, %32 ], [ true, %1 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = call i32 @vdev_remove_child(%struct.TYPE_14__* %51, %struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = call i32 @vdev_remove_child(%struct.TYPE_14__* %54, %struct.TYPE_14__* %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = icmp eq %struct.TYPE_14__* %59, %60
  br i1 %61, label %62, label %100

62:                                               ; preds = %42
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  store i64 %69, i64* %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 7
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %62
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %62
  br label %100

100:                                              ; preds = %99, %42
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %108 = call i32 @vdev_add_child(%struct.TYPE_14__* %106, %struct.TYPE_14__* %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = call i32 @vdev_top_update(%struct.TYPE_14__* %111, %struct.TYPE_14__* %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = icmp eq %struct.TYPE_14__* %116, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %100
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %124 = call i32 @vdev_top_transfer(%struct.TYPE_14__* %122, %struct.TYPE_14__* %123)
  br label %125

125:                                              ; preds = %121, %100
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @ASSERT(i32 %130)
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = call i32 @vdev_free(%struct.TYPE_14__* %132)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vdev_top_update(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vdev_top_transfer(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
