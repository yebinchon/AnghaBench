; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_head_commit_ids_for_server.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_update_head_commit_ids_for_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32*, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Updating repo head commit ids for server %s.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_4__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@g_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @update_head_commit_ids_for_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_head_commit_ids_for_server(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %73

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @seaf_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @seaf, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @seaf_repo_manager_get_repo_id_list_by_server(i32 %23, i8* %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %73

29:                                               ; preds = %18
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @seaf, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @http_tx_manager_get_head_commit_ids(i32 %32, i32 %35, i32 %38, i32* %39)
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %69

43:                                               ; preds = %29
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @pthread_mutex_lock(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @g_hash_table_destroy(i32* %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %43
  %59 = load i64, i64* @TRUE, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %43
  %63 = call i64 @time(i32* null)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = call i32 @pthread_mutex_unlock(i32* %67)
  br label %69

69:                                               ; preds = %62, %29
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* @g_free, align 4
  %72 = call i32 @g_list_free_full(i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %28, %69, %3
  ret void
}

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo_id_list_by_server(i32, i8*) #1

declare dso_local i32* @http_tx_manager_get_head_commit_ids(i32, i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @g_list_free_full(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
