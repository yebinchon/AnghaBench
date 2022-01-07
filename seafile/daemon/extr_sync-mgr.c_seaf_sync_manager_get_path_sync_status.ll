; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_get_path_sync_status.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_seaf_sync_manager_get_path_sync_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64 }

@SYNC_STATUS_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"BUG: empty repo_id or path.\0A\00", align 1
@SYNC_STATUS_SYNCING = common dso_local global i64 0, align 8
@SYNC_STATUS_SYNCED = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_15__* null, align 8
@SYNC_STATUS_READONLY = common dso_local global i64 0, align 8
@SYNC_STATUS_LOCKED_BY_ME = common dso_local global i64 0, align 8
@SYNC_STATUS_LOCKED = common dso_local global i64 0, align 8
@path_status_tbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @seaf_sync_manager_get_path_sync_status(%struct.TYPE_13__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @SYNC_STATUS_NONE, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %4
  %20 = call i32 @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %5, align 8
  br label %148

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i8* @get_repo_sync_status(%struct.TYPE_13__* %28, i8* %29)
  store i8* %30, i8** %5, align 8
  br label %148

31:                                               ; preds = %21
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call %struct.TYPE_12__* @get_sync_info(%struct.TYPE_13__* %32, i8* %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %11, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* @SYNC_STATUS_NONE, align 8
  store i64 %43, i64* %12, align 8
  br label %142

44:                                               ; preds = %37, %31
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_lock(i32* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.TYPE_14__* @g_hash_table_lookup(i32 %54, i8* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %10, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %44
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  %65 = load i64, i64* @SYNC_STATUS_NONE, align 8
  store i64 %65, i64* %12, align 8
  br label %142

66:                                               ; preds = %44
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %8, align 8
  %71 = call %struct.TYPE_14__* @g_hash_table_lookup(i32 %69, i8* %70)
  %72 = ptrtoint %struct.TYPE_14__* %71 to i64
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %66
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @SYNC_STATUS_NONE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %75
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @sync_status_tree_exists(i32 %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* @SYNC_STATUS_SYNCING, align 8
  store i64 %87, i64* %12, align 8
  br label %98

88:                                               ; preds = %79
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @sync_status_tree_exists(i32 %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %95, %88
  br label %98

98:                                               ; preds = %97, %86
  br label %99

99:                                               ; preds = %98, %75, %66
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = call i32 @pthread_mutex_unlock(i32* %103)
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @SYNC_STATUS_SYNCED, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %141

108:                                              ; preds = %99
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @seaf_repo_manager_is_path_writable(i32 %111, i8* %112, i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = load i64, i64* @SYNC_STATUS_READONLY, align 8
  store i64 %117, i64* %12, align 8
  br label %140

118:                                              ; preds = %108
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %7, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @seaf_filelock_manager_is_file_locked_by_me(i32 %121, i8* %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i64, i64* @SYNC_STATUS_LOCKED_BY_ME, align 8
  store i64 %127, i64* %12, align 8
  br label %139

128:                                              ; preds = %118
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** @seaf, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %7, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @seaf_filelock_manager_is_file_locked(i32 %131, i8* %132, i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i64, i64* @SYNC_STATUS_LOCKED, align 8
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %136, %128
  br label %139

139:                                              ; preds = %138, %126
  br label %140

140:                                              ; preds = %139, %116
  br label %141

141:                                              ; preds = %140, %99
  br label %142

142:                                              ; preds = %141, %59, %42
  %143 = load i32*, i32** @path_status_tbl, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @g_strdup(i32 %146)
  store i8* %147, i8** %5, align 8
  br label %148

148:                                              ; preds = %142, %27, %19
  %149 = load i8*, i8** %5, align 8
  ret i8* %149
}

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i8* @get_repo_sync_status(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @get_sync_info(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_14__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @sync_status_tree_exists(i32, i8*) #1

declare dso_local i32 @seaf_repo_manager_is_path_writable(i32, i8*, i8*) #1

declare dso_local i64 @seaf_filelock_manager_is_file_locked_by_me(i32, i8*, i8*) #1

declare dso_local i64 @seaf_filelock_manager_is_file_locked(i32, i8*, i8*) #1

declare dso_local i8* @g_strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
