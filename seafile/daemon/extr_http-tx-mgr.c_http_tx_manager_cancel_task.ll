; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_cancel_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_tx_manager_cancel_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@HTTP_TASK_STATE_NORMAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot cancel task not in NORMAL state.\0A\00", align 1
@HTTP_TASK_RT_STATE_INIT = common dso_local global i64 0, align 8
@HTTP_TASK_STATE_CANCELED = common dso_local global i32 0, align 4
@HTTP_TASK_RT_STATE_FINISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_tx_manager_cancel_task(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @HTTP_TASK_TYPE_DOWNLOAD, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.TYPE_8__* @g_hash_table_lookup(i32 %16, i8* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %7, align 8
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.TYPE_8__* @g_hash_table_lookup(i32 %24, i8* %25)
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %7, align 8
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %57

31:                                               ; preds = %27
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HTTP_TASK_STATE_NORMAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %57

39:                                               ; preds = %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HTTP_TASK_RT_STATE_INIT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = load i32, i32* @HTTP_TASK_STATE_CANCELED, align 4
  %48 = load i64, i64* @HTTP_TASK_RT_STATE_FINISHED, align 8
  %49 = call i32 @transition_state(%struct.TYPE_8__* %46, i32 %47, i64 %48)
  br label %57

50:                                               ; preds = %39
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = load i32, i32* @HTTP_TASK_STATE_CANCELED, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @transition_state(%struct.TYPE_8__* %51, i32 %52, i64 %55)
  br label %57

57:                                               ; preds = %50, %45, %37, %30
  ret void
}

declare dso_local %struct.TYPE_8__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @transition_state(%struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
