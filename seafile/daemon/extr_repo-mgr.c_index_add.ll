; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_index_add.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_index_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.index_state = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to apply worktree changes to index.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to scan worktree for changes.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.index_state*, i32)* @index_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_add(%struct.TYPE_6__* %0, %struct.index_state* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @seafile_crypt_new(i32 %18, i32 %21, i32 %24)
  store i32* %25, i32** %7, align 8
  br label %26

26:                                               ; preds = %15, %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @seaf_repo_load_ignore_files(i32 %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load %struct.index_state*, %struct.index_state** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @apply_worktree_changes_to_index(%struct.TYPE_6__* %34, %struct.index_state* %35, i32* %36, i32* %37, i32* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %33
  br label %55

44:                                               ; preds = %26
  %45 = load %struct.index_state*, %struct.index_state** %5, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @scan_worktree_for_changes(%struct.index_state* %45, %struct.TYPE_6__* %46, i32* %47, i32* %48, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @seaf_repo_free_ignore_files(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @g_free(i32* %58)
  %60 = load i32, i32* %10, align 4
  ret i32 %60
}

declare dso_local i32* @seafile_crypt_new(i32, i32, i32) #1

declare dso_local i32* @seaf_repo_load_ignore_files(i32) #1

declare dso_local i64 @apply_worktree_changes_to_index(%struct.TYPE_6__*, %struct.index_state*, i32*, i32*, i32*) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i64 @scan_worktree_for_changes(%struct.index_state*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @seaf_repo_free_ignore_files(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
