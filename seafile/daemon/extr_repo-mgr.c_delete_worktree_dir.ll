; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_delete_worktree_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_delete_worktree_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@G_FILE_TEST_EXISTS = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.index_state*, i8*, i8*)* @delete_worktree_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_worktree_dir(i8* %0, i8* %1, %struct.index_state* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.index_state* %2, %struct.index_state** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = call i8* @g_build_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13, i32* null)
  store i8* %14, i8** %11, align 8
  %15 = load %struct.index_state*, %struct.index_state** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i32 @delete_worktree_dir_recursive(%struct.index_state* %15, i8* %16, i8* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = load i32, i32* @G_FILE_TEST_EXISTS, align 4
  %21 = call i64 @g_file_test(i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load i8*, i8** %11, align 8
  %25 = call i64 @move_dir_to_recycle_bin(i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @SYNC_ERROR_ID_REMOVE_UNCOMMITTED_FOLDER, align 4
  %32 = call i32 @send_file_sync_error_notification(i8* %28, i8* %29, i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %5
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @g_free(i8* %35)
  ret void
}

declare dso_local i8* @g_build_path(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @delete_worktree_dir_recursive(%struct.index_state*, i8*, i8*) #1

declare dso_local i64 @g_file_test(i8*, i32) #1

declare dso_local i64 @move_dir_to_recycle_bin(i8*) #1

declare dso_local i32 @send_file_sync_error_notification(i8*, i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
