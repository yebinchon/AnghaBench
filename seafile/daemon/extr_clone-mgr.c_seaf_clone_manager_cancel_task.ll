; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_cancel_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_cancel_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@seaf = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"System not started, skip canceling clone task.\0A\00", align 1
@CLONE_STATE_CANCELED = common dso_local global i32 0, align 4
@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"[Clone mgr] cannot cancel a not-running task.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_clone_manager_cancel_task(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @seaf_message(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.TYPE_8__* @g_hash_table_lookup(i32 %16, i8* %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %51

22:                                               ; preds = %13
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %48 [
    i32 129, label %26
    i32 133, label %26
    i32 132, label %26
    i32 134, label %30
    i32 131, label %33
    i32 130, label %44
    i32 136, label %44
    i32 128, label %44
    i32 135, label %44
    i32 137, label %47
  ]

26:                                               ; preds = %22, %22, %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = load i32, i32* @CLONE_STATE_CANCELED, align 4
  %29 = call i32 @transition_state(%struct.TYPE_8__* %27, i32 %28)
  br label %50

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call i32 @transition_state(%struct.TYPE_8__* %31, i32 137)
  br label %33

33:                                               ; preds = %22, %30
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @HTTP_TASK_TYPE_DOWNLOAD, align 4
  %41 = call i32 @http_tx_manager_cancel_task(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = call i32 @transition_state(%struct.TYPE_8__* %42, i32 137)
  br label %50

44:                                               ; preds = %22, %22, %22, %22
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = call i32 @transition_state(%struct.TYPE_8__* %45, i32 137)
  br label %50

47:                                               ; preds = %22
  br label %50

48:                                               ; preds = %22
  %49 = call i32 @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %51

50:                                               ; preds = %47, %44, %33, %26
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %48, %21, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @seaf_message(i8*) #1

declare dso_local %struct.TYPE_8__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @transition_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @http_tx_manager_cancel_task(i32, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
