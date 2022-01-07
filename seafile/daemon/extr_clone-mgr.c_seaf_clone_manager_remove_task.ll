; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_remove_task.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_seaf_clone_manager_remove_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"System not started, skip removing clone task.\0A\00", align 1
@CLONE_STATE_DONE = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"[Clone mgr] cannot remove running task.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_clone_manager_remove_task(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @seaf_message(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.TYPE_7__* @g_hash_table_lookup(i32 %16, i8* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %42

22:                                               ; preds = %13
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CLONE_STATE_DONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLONE_STATE_CANCELED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call i32 @seaf_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %42

36:                                               ; preds = %28, %22
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @g_hash_table_remove(i32 %39, i8* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %34, %21, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @seaf_message(i8*) #1

declare dso_local %struct.TYPE_7__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @g_hash_table_remove(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
