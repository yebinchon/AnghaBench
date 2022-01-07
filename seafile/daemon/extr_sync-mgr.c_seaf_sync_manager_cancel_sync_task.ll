; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_cancel_sync_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_cancel_sync_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i64, i32, i64, i32 }
%struct.TYPE_8__ = type { i64 }

@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"sync manager is not started, skip cancel request.\0A\00", align 1
@SYNC_STATE_ERROR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@HTTP_TASK_TYPE_UPLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @seaf_sync_manager_cancel_sync_task(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @seaf_message(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %82

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_9__* @g_hash_table_lookup(i32 %16, i8* %17)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %82

22:                                               ; preds = %13
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SYNC_STATE_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %27
  br label %82

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @g_return_if_fail(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %6, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  switch i64 %57, label %80 [
    i64 131, label %58
    i64 128, label %67
    i64 132, label %76
    i64 130, label %76
    i64 129, label %76
    i64 133, label %79
  ]

58:                                               ; preds = %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @HTTP_TASK_TYPE_DOWNLOAD, align 4
  %64 = call i32 @http_tx_manager_cancel_task(i32 %61, i8* %62, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @transition_sync_state(%struct.TYPE_8__* %65, i32 133)
  br label %82

67:                                               ; preds = %45
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* @HTTP_TASK_TYPE_UPLOAD, align 4
  %73 = call i32 @http_tx_manager_cancel_task(i32 %70, i8* %71, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = call i32 @transition_sync_state(%struct.TYPE_8__* %74, i32 133)
  br label %82

76:                                               ; preds = %45, %45, %45
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = call i32 @transition_sync_state(%struct.TYPE_8__* %77, i32 133)
  br label %82

79:                                               ; preds = %45
  br label %82

80:                                               ; preds = %45
  %81 = call i32 (...) @g_return_if_reached()
  br label %82

82:                                               ; preds = %11, %21, %43, %80, %79, %76, %67, %58
  ret void
}

declare dso_local i32 @seaf_message(i8*) #1

declare dso_local %struct.TYPE_9__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @g_return_if_fail(i32) #1

declare dso_local i32 @http_tx_manager_cancel_task(i32, i8*, i32) #1

declare dso_local i32 @transition_sync_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @g_return_if_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
