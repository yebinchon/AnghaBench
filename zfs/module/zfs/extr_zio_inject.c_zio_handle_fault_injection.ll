; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_fault_injection.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_zio_handle_fault_injection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_DATA_FAULT = common dso_local global i64 0, align 8
@DMU_OT_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_handle_fault_injection(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZIO_TYPE_READ, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %77

20:                                               ; preds = %13
  %21 = load i32, i32* @RW_READER, align 4
  %22 = call i32 @rw_enter(i32* @inject_lock, i32 %21)
  %23 = call %struct.TYPE_12__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  br label %24

24:                                               ; preds = %71, %20
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZINJECT_DATA_FAULT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %27
  br label %71

43:                                               ; preds = %35
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @BP_GET_TYPE(i64 %55)
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @DMU_OT_NONE, align 4
  br label %59

59:                                               ; preds = %57, %52
  %60 = phi i32 [ %56, %52 ], [ %58, %57 ]
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = call i32 @zio_match_dva(%struct.TYPE_11__* %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @zio_match_handler(i32* %47, i32 %60, i32 %62, %struct.TYPE_13__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %6, align 4
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %42
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = call %struct.TYPE_12__* @list_next(i32* @inject_handlers, %struct.TYPE_12__* %72)
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %7, align 8
  br label %24

74:                                               ; preds = %68, %24
  %75 = call i32 @rw_exit(i32* @inject_lock)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %19, %12
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @list_head(i32*) #1

declare dso_local i64 @zio_match_handler(i32*, i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @BP_GET_TYPE(i64) #1

declare dso_local i32 @zio_match_dva(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @list_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
