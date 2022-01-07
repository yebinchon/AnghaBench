; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_start.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@check_connect_pulse = common dso_local global i32 0, align 4
@CHECK_CONNECT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SELECT * FROM CloneTasks\00", align 1
@restart_task = common dso_local global i32 0, align 4
@seaf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"repo-http-fetched\00", align 1
@on_repo_http_fetched = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_clone_manager_start(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load i32, i32* @check_connect_pulse, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @CHECK_CONNECT_INTERVAL, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = call i32 @seaf_timer_new(i32 %5, %struct.TYPE_6__* %6, i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @restart_task, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = call i64 @sqlite_foreach_selected_row(i32 %14, i8* %15, i32 %16, %struct.TYPE_6__* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @seaf, align 4
  %23 = load i64, i64* @on_repo_http_fetched, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = call i32 @g_signal_connect(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %24, %struct.TYPE_6__* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @seaf_timer_new(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @sqlite_foreach_selected_row(i32, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @g_signal_connect(i32, i8*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
