; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_init_folder_perms.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_init_folder_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__* }

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@FOLDER_PERM_TYPE_USER = common dso_local global i32 0, align 4
@FOLDER_PERM_TYPE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @init_folder_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_folder_perms(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** %3, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_12__* @g_hash_table_get_keys(i32 %13)
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %4, align 8
  %15 = load i32, i32* @g_str_hash, align 4
  %16 = load i32, i32* @g_str_equal, align 4
  %17 = load i32, i32* @g_free, align 4
  %18 = call i8* @g_hash_table_new_full(i32 %15, i32 %16, i32 %17, i32* null)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @g_str_hash, align 4
  %22 = load i32, i32* @g_str_equal, align 4
  %23 = load i32, i32* @g_free, align 4
  %24 = call i8* @g_hash_table_new_full(i32 %21, i32 %22, i32 %23, i32* null)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @pthread_mutex_init(i32* %28, i32* null)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %5, align 8
  br label %31

31:                                               ; preds = %80, %1
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %84

34:                                               ; preds = %31
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @FOLDER_PERM_TYPE_USER, align 4
  %41 = call %struct.TYPE_12__* @load_folder_perms_for_repo(%struct.TYPE_11__* %38, i8* %39, i32 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %6, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = icmp ne %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @g_strdup(i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = call i32 @g_hash_table_insert(i8* %50, i32 %52, %struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @pthread_mutex_unlock(i32* %56)
  br label %58

58:                                               ; preds = %44, %34
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i32, i32* @FOLDER_PERM_TYPE_GROUP, align 4
  %62 = call %struct.TYPE_12__* @load_folder_perms_for_repo(%struct.TYPE_11__* %59, i8* %60, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %6, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %58
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @pthread_mutex_lock(i32* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @g_strdup(i8* %72)
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = call i32 @g_hash_table_insert(i8* %71, i32 %73, %struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  br label %79

79:                                               ; preds = %65, %58
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %5, align 8
  br label %31

84:                                               ; preds = %31
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %86 = call i32 @g_list_free(%struct.TYPE_12__* %85)
  ret void
}

declare dso_local %struct.TYPE_12__* @g_hash_table_get_keys(i32) #1

declare dso_local i8* @g_hash_table_new_full(i32, i32, i32, i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @load_folder_perms_for_repo(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @g_hash_table_insert(i8*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @g_list_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
