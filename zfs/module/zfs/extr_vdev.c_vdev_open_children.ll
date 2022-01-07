; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_open_children.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_open_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"vdev_open\00", align 1
@minclsyspri = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@vdev_open_child = common dso_local global i32 0, align 4
@TQ_SLEEP = common dso_local global i32 0, align 4
@TASKQID_INVALID = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_open_children(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i64 @vdev_uses_zvols(%struct.TYPE_6__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %50, %14
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %23, i64 %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = call i32 @vdev_open(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %31, i64 %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i32 %28, i32* %36, align 4
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %16

40:                                               ; preds = %16
  br label %78

41:                                               ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @minclsyspri, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %47 = call i32* @taskq_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32* %47, i32** %3, align 8
  %48 = load i32*, i32** %3, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %15

51:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %72, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = load i32, i32* @vdev_open_child, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 %63
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* @TQ_SLEEP, align 4
  %67 = call i64 @taskq_dispatch(i32* %57, i32 %58, %struct.TYPE_7__* %65, i32 %66)
  %68 = load i64, i64* @TASKQID_INVALID, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @VERIFY(i32 %70)
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %52

75:                                               ; preds = %52
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @taskq_destroy(i32* %76)
  br label %78

78:                                               ; preds = %75, %40
  %79 = load i32, i32* @B_TRUE, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %100, %78
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %89, i64 %91
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %86
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %82

103:                                              ; preds = %82
  ret void
}

declare dso_local i64 @vdev_uses_zvols(%struct.TYPE_6__*) #1

declare dso_local i32 @vdev_open(%struct.TYPE_7__*) #1

declare dso_local i32* @taskq_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @taskq_dispatch(i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @taskq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
