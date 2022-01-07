; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_active_file.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_active_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.index_state = type { i32 }
%struct.cache_entry = type { i32 }

@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@SYNC_STATUS_IGNORED = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCING = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32*, %struct.index_state*, i64)* @update_active_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_active_file(%struct.TYPE_4__* %0, i8* %1, i32* %2, %struct.index_state* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.index_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.index_state* %3, %struct.index_state** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @S_IFREG, align 4
  %25 = load i64, i64* @SYNC_STATUS_IGNORED, align 8
  %26 = call i32 @seaf_sync_manager_update_active_path(i32 %19, i32 %22, i8* %23, i32 %24, i64 %25)
  br label %80

27:                                               ; preds = %5
  %28 = load %struct.index_state*, %struct.index_state** %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %28, i8* %29, i32 %31, i32 0)
  store %struct.cache_entry* %32, %struct.cache_entry** %13, align 8
  %33 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %34 = icmp ne %struct.cache_entry* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.cache_entry*, %struct.cache_entry** %13, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @ie_match_stat(%struct.cache_entry* %36, i32* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %27
  %41 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  store i64 %41, i64* %11, align 8
  br label %44

42:                                               ; preds = %35
  %43 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @is_path_writable(i32 %47, i32 %50, i8* %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @seaf_sync_manager_delete_active_path(i32 %62, i32 %65, i8* %66)
  br label %79

68:                                               ; preds = %55, %44
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @S_IFREG, align 4
  %77 = load i64, i64* %11, align 8
  %78 = call i32 @seaf_sync_manager_update_active_path(i32 %71, i32 %74, i8* %75, i32 %76, i64 %77)
  br label %79

79:                                               ; preds = %68, %59
  br label %80

80:                                               ; preds = %79, %16
  ret void
}

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i32, i8*, i32, i64) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ie_match_stat(%struct.cache_entry*, i32*, i32) #1

declare dso_local i64 @is_path_writable(i32, i32, i8*) #1

declare dso_local i32 @seaf_sync_manager_delete_active_path(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
