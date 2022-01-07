; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_folder_perms_for_repo.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_load_folder_perms_for_repo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@FOLDER_PERM_TYPE_USER = common dso_local global i64 0, align 8
@FOLDER_PERM_TYPE_GROUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"SELECT path, permission FROM FolderUserPerms WHERE repo_id = '%q'\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"SELECT path, permission FROM FolderGroupPerms WHERE repo_id = '%q'\00", align 1
@load_folder_perm = common dso_local global i32 0, align 4
@comp_folder_perms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i8*, i64)* @load_folder_perms_for_repo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @load_folder_perms_for_repo(%struct.TYPE_11__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @FOLDER_PERM_TYPE_GROUP, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @g_return_val_if_fail(i32 %20, i32* null)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @FOLDER_PERM_TYPE_USER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @sqlite3_snprintf(i32 256, i8* %26, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %33

29:                                               ; preds = %18
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @sqlite3_snprintf(i32 256, i8* %30, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %45 = load i32, i32* @load_folder_perm, align 4
  %46 = call i64 @sqlite_foreach_selected_row(i32 %43, i8* %44, i32 %45, %struct.TYPE_12__** %8)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %33
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @pthread_mutex_unlock(i32* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %10, align 8
  br label %55

55:                                               ; preds = %64, %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @folder_perm_free(i32* %62)
  br label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %10, align 8
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = call i32 @g_list_free(%struct.TYPE_12__* %69)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %81

71:                                               ; preds = %33
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = call i32 @pthread_mutex_unlock(i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = load i32, i32* @comp_folder_perms, align 4
  %79 = call %struct.TYPE_12__* @g_list_sort(%struct.TYPE_12__* %77, i32 %78)
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %8, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %4, align 8
  br label %81

81:                                               ; preds = %71, %68
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %82
}

declare dso_local i32 @g_return_val_if_fail(i32, i32*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @sqlite_foreach_selected_row(i32, i8*, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @folder_perm_free(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @g_list_sort(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
