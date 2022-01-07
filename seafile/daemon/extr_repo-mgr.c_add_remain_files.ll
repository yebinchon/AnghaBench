; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_remain_files.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_add_remain_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.cache_entry = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@index_cb = common dso_local global i32 0, align 4
@DIFF_STATUS_ADDED = common dso_local global i32 0, align 4
@MAX_COMMIT_SIZE = common dso_local global i64 0, align 8
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@S_IFREG = common dso_local global i32 0, align 4
@SYNC_STATUS_SYNCED = common dso_local global i32 0, align 4
@SYNC_STATUS_ERROR = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_INDEX_ERROR = common dso_local global i32 0, align 4
@DIFF_STATUS_DIR_ADDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.index_state*, i32*, i32*, i32*, i64*)* @add_remain_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_remain_files(%struct.TYPE_10__* %0, %struct.index_state* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.cache_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [20 x i8], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.index_state* %1, %struct.index_state** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  br label %21

21:                                               ; preds = %160, %34, %6
  %22 = load i32*, i32** %10, align 8
  %23 = call i8* @g_queue_pop_head(i32* %22)
  store i8* %23, i8** %13, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %165

25:                                               ; preds = %21
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = call i8* @g_build_filename(i32 %28, i8* %29, i32* null)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = call i64 @seaf_stat(i8* %31, %struct.TYPE_9__* %15)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %25
  %35 = load i8*, i8** %14, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %37)
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @g_free(i8* %39)
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @g_free(i8* %41)
  br label %21

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @S_ISREG(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %132

48:                                               ; preds = %43
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.index_state*, %struct.index_state** %8, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* @index_cb, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @add_to_index(i32 %52, i32 %55, %struct.index_state* %56, i8* %57, i8* %58, %struct.TYPE_9__* %15, i32 0, i32* %59, i32 %60, i32* %63, i64* %17)
  store i32 %64, i32* %18, align 4
  %65 = load i64, i64* %17, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %48
  %68 = load %struct.index_state*, %struct.index_state** %8, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %68, i8* %69, i32 %71, i32 0)
  store %struct.cache_entry* %72, %struct.cache_entry** %16, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DIFF_STATUS_ADDED, align 4
  %77 = load %struct.cache_entry*, %struct.cache_entry** %16, align 8
  %78 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @add_to_changeset(i32 %75, i32 %76, i8* %79, %struct.TYPE_9__* %15, i32* %82, i8* %83, i32* null)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %12, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, %86
  store i64 %89, i64* %87, align 8
  %90 = load i64*, i64** %12, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MAX_COMMIT_SIZE, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %67
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @g_free(i8* %95)
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @g_free(i8* %97)
  br label %165

99:                                               ; preds = %67
  br label %111

100:                                              ; preds = %48
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load i32, i32* @S_IFREG, align 4
  %109 = load i32, i32* @SYNC_STATUS_SYNCED, align 4
  %110 = call i32 @seaf_sync_manager_update_active_path(i32 %103, i32 %106, i8* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %100, %99
  %112 = load i32, i32* %18, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* @S_IFREG, align 4
  %123 = load i32, i32* @SYNC_STATUS_ERROR, align 4
  %124 = call i32 @seaf_sync_manager_update_active_path(i32 %117, i32 %120, i8* %121, i32 %122, i32 %123)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %13, align 8
  %129 = load i32, i32* @SYNC_ERROR_ID_INDEX_ERROR, align 4
  %130 = call i32 @send_file_sync_error_notification(i32 %127, i32* null, i8* %128, i32 %129)
  br label %131

131:                                              ; preds = %114, %111
  br label %160

132:                                              ; preds = %43
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @S_ISDIR(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %132
  %138 = load i8*, i8** %14, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i64 @is_empty_dir(i8* %138, i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %137
  %143 = load %struct.index_state*, %struct.index_state** %8, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @add_empty_dir_to_index(%struct.index_state* %143, i8* %144, %struct.TYPE_9__* %15)
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %19, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %157

148:                                              ; preds = %142
  %149 = bitcast [20 x i8]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %149, i8 0, i64 20, i1 false)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @DIFF_STATUS_DIR_ADDED, align 4
  %154 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %155 = load i8*, i8** %13, align 8
  %156 = call i32 @add_to_changeset(i32 %152, i32 %153, i8* %154, %struct.TYPE_9__* %15, i32* null, i8* %155, i32* null)
  br label %157

157:                                              ; preds = %148, %142
  br label %158

158:                                              ; preds = %157, %137
  br label %159

159:                                              ; preds = %158, %132
  br label %160

160:                                              ; preds = %159, %131
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @g_free(i8* %161)
  %163 = load i8*, i8** %14, align 8
  %164 = call i32 @g_free(i8* %163)
  br label %21

165:                                              ; preds = %94, %21
  ret i32 0
}

declare dso_local i8* @g_queue_pop_head(i32*) #1

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @add_to_index(i32, i32, %struct.index_state*, i8*, i8*, %struct.TYPE_9__*, i32, i32*, i32, i32*, i64*) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @add_to_changeset(i32, i32, i8*, %struct.TYPE_9__*, i32*, i8*, i32*) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @send_file_sync_error_notification(i32, i32*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @is_empty_dir(i8*, i32*) #1

declare dso_local i32 @add_empty_dir_to_index(%struct.index_state*, i8*, %struct.TYPE_9__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
