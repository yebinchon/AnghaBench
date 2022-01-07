; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_add_parent.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_add_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32* }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @vdev_add_parent(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 11
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 10
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* @SCL_ALL, align 8
  %16 = load i32, i32* @RW_WRITER, align 4
  %17 = call i64 @spa_config_held(i32* %14, i64 %15, i32 %16)
  %18 = load i64, i64* @SCL_ALL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.TYPE_13__* @vdev_alloc_common(i32* %22, i32 %25, i32 0, i32* %26)
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %7, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 8
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = call i32 @vdev_remove_child(%struct.TYPE_13__* %63, %struct.TYPE_13__* %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = call i32 @vdev_add_child(%struct.TYPE_13__* %66, %struct.TYPE_13__* %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = call i32 @vdev_add_child(%struct.TYPE_13__* %74, %struct.TYPE_13__* %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = call i32 @vdev_top_update(%struct.TYPE_13__* %79, %struct.TYPE_13__* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = icmp eq %struct.TYPE_13__* %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %2
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %92 = call i32 @vdev_top_transfer(%struct.TYPE_13__* %90, %struct.TYPE_13__* %91)
  br label %93

93:                                               ; preds = %89, %2
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %94
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local %struct.TYPE_13__* @vdev_alloc_common(i32*, i32, i32, i32*) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_top_update(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_top_transfer(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
