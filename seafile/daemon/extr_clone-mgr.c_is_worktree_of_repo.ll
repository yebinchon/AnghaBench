; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_is_worktree_of_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_is_worktree_of_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }

@seaf = common dso_local global %struct.TYPE_16__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@CLONE_STATE_DONE = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @is_worktree_of_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_worktree_of_repo(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** @seaf, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_15__* @seaf_repo_manager_get_repo_list(i32 %15, i32 -1, i32 -1)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %6, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %7, align 8
  br label %18

18:                                               ; preds = %36, %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %20 = icmp ne %struct.TYPE_15__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @g_strcmp0(i8* %25, i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = call i32 @g_list_free(%struct.TYPE_15__* %32)
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %3, align 4
  br label %76

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %7, align 8
  br label %18

40:                                               ; preds = %18
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = call i32 @g_list_free(%struct.TYPE_15__* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @g_hash_table_iter_init(i32* %9, i32 %45)
  br label %47

47:                                               ; preds = %73, %63, %40
  %48 = call i64 @g_hash_table_iter_next(i32* %9, %struct.TYPE_12__** %10, %struct.TYPE_12__** %11)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %12, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CLONE_STATE_DONE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CLONE_STATE_CANCELED, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %50
  br label %47

64:                                               ; preds = %57
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @g_strcmp0(i8* %65, i32 %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %76

73:                                               ; preds = %64
  br label %47

74:                                               ; preds = %47
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71, %31
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_15__* @seaf_repo_manager_get_repo_list(i32, i32, i32) #1

declare dso_local i64 @g_strcmp0(i8*, i32) #1

declare dso_local i32 @g_list_free(%struct.TYPE_15__*) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, %struct.TYPE_12__**, %struct.TYPE_12__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
