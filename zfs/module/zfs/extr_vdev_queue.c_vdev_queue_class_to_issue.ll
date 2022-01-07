; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_class_to_issue.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_queue.c_vdev_queue_class_to_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@zfs_vdev_max_active = common dso_local global i64 0, align 8
@ZIO_PRIORITY_NUM_QUEUEABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @vdev_queue_class_to_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vdev_queue_class_to_issue(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = call i64 @avl_numnodes(i32* %12)
  %14 = load i64, i64* @zfs_vdev_max_active, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  store i64 %17, i64* %2, align 8
  br label %77

18:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32* @vdev_queue_class_tree(%struct.TYPE_8__* %24, i64 %25)
  %27 = call i64 @avl_numnodes(i32* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @vdev_queue_class_min_active(i64 %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %2, align 8
  br label %77

42:                                               ; preds = %29, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %19

46:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32* @vdev_queue_class_tree(%struct.TYPE_8__* %52, i64 %53)
  %55 = call i64 @avl_numnodes(i32* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @vdev_queue_class_max_active(i32* %65, i64 %66)
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %2, align 8
  br label %77

71:                                               ; preds = %57, %51
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %5, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %5, align 8
  br label %47

75:                                               ; preds = %47
  %76 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %75, %69, %40, %16
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i32* @vdev_queue_class_tree(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @vdev_queue_class_min_active(i64) #1

declare dso_local i64 @vdev_queue_class_max_active(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
