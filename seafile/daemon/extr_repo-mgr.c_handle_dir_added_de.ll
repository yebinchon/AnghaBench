; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_dir_added_de.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_handle_dir_added_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.index_state = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.cache_entry = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Checkout empty dir %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Path %s is invalid on Windows, skip checkout\0A\00", align 1
@IGNORE_REASON_END_SPACE_PERIOD = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_PATH_END_SPACE_PERIOD = common dso_local global i32 0, align 4
@IGNORE_REASON_INVALID_CHARACTER = common dso_local global i64 0, align 8
@SYNC_ERROR_ID_PATH_INVALID_CHARACTER = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_8__* null, align 8
@SYNC_STATUS_SYNCED = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, %struct.index_state*, %struct.TYPE_7__*, i32*, i32*)* @handle_dir_added_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dir_added_de(i8* %0, i8* %1, i8* %2, %struct.index_state* %3, %struct.TYPE_7__* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.index_state*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.cache_entry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.index_state* %3, %struct.index_state** %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seaf_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %16, align 8
  %23 = load %struct.index_state*, %struct.index_state** %11, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %23, i32 %26, i32 %30, i32 0)
  store %struct.cache_entry* %31, %struct.cache_entry** %15, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %33 = icmp ne %struct.cache_entry* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %36 = call %struct.cache_entry* @cache_entry_from_diff_entry(%struct.TYPE_7__* %35)
  store %struct.cache_entry* %36, %struct.cache_entry** %15, align 8
  %37 = load i64, i64* @TRUE, align 8
  store i64 %37, i64* %16, align 8
  br label %38

38:                                               ; preds = %34, %7
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @should_ignore_on_checkout(i32 %41, i64* %17)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @seaf_message(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* @IGNORE_REASON_END_SPACE_PERIOD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SYNC_ERROR_ID_PATH_END_SPACE_PERIOD, align 4
  %59 = call i32 @send_file_sync_error_notification(i8* %53, i8* %54, i32 %57, i32 %58)
  br label %73

60:                                               ; preds = %44
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* @IGNORE_REASON_INVALID_CHARACTER, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SYNC_ERROR_ID_PATH_INVALID_CHARACTER, align 4
  %71 = call i32 @send_file_sync_error_notification(i8* %65, i8* %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %60
  br label %73

73:                                               ; preds = %72, %52
  br label %98

74:                                               ; preds = %38
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @checkout_empty_dir(i8* %75, i32 %78, i32 %81, %struct.cache_entry* %82, i32* %83, i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @seaf, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @SYNC_STATUS_SYNCED, align 4
  %97 = call i32 @seaf_sync_manager_update_active_path(i32 %88, i8* %89, i32 %92, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %74, %73
  %99 = load i64, i64* %16, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %103 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CE_REMOVE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load %struct.index_state*, %struct.index_state** %11, align 8
  %110 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %111 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %112 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @add_index_entry(%struct.index_state* %109, %struct.cache_entry* %110, i32 %113)
  br label %115

115:                                              ; preds = %108, %101
  br label %123

116:                                              ; preds = %98
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.cache_entry*, %struct.cache_entry** %15, align 8
  %121 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %115
  ret void
}

declare dso_local i32 @seaf_debug(i8*, i32) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.cache_entry* @cache_entry_from_diff_entry(%struct.TYPE_7__*) #1

declare dso_local i64 @should_ignore_on_checkout(i32, i64*) #1

declare dso_local i32 @seaf_message(i8*, i32) #1

declare dso_local i32 @send_file_sync_error_notification(i8*, i8*, i32, i32) #1

declare dso_local i32 @checkout_empty_dir(i8*, i32, i32, %struct.cache_entry*, i32*, i32*) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
