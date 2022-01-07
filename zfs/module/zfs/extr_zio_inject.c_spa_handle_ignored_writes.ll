; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_spa_handle_ignored_writes.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio_inject.c_spa_handle_ignored_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32, i64 }

@zio_injection_enabled = common dso_local global i64 0, align 8
@inject_lock = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@inject_handlers = common dso_local global i32 0, align 4
@ZINJECT_IGNORED_WRITES = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_handle_ignored_writes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @zio_injection_enabled, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %90

7:                                                ; preds = %1
  %8 = load i32, i32* @RW_READER, align 4
  %9 = call i32 @rw_enter(i32* @inject_lock, i32 %8)
  %10 = call %struct.TYPE_7__* @list_head(i32* @inject_handlers)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  br label %11

11:                                               ; preds = %85, %7
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %88

14:                                               ; preds = %11
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %15, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ZINJECT_IGNORED_WRITES, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %14
  br label %85

28:                                               ; preds = %20
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @hz, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %44, %51
  %53 = call i32 (...) @ddi_get_lbolt64()
  %54 = call i64 @ddi_time_after64(i64 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %40, %34
  %57 = phi i1 [ true, %34 ], [ %55, %40 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @VERIFY(i32 %58)
  br label %84

60:                                               ; preds = %28
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %70, %75
  %77 = load i32*, i32** %2, align 8
  %78 = call i64 @spa_syncing_txg(i32* %77)
  %79 = icmp sge i64 %76, %78
  br label %80

80:                                               ; preds = %66, %60
  %81 = phi i1 [ true, %60 ], [ %79, %66 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @VERIFY(i32 %82)
  br label %84

84:                                               ; preds = %80, %56
  br label %85

85:                                               ; preds = %84, %27
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = call %struct.TYPE_7__* @list_next(i32* @inject_handlers, %struct.TYPE_7__* %86)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %3, align 8
  br label %11

88:                                               ; preds = %11
  %89 = call i32 @rw_exit(i32* @inject_lock)
  br label %90

90:                                               ; preds = %88, %6
  ret void
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @list_head(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ddi_time_after64(i64, i32) #1

declare dso_local i32 @ddi_get_lbolt64(...) #1

declare dso_local i64 @spa_syncing_txg(i32*) #1

declare dso_local %struct.TYPE_7__* @list_next(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
