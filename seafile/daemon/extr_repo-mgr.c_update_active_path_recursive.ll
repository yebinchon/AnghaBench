; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_active_path_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_update_active_path_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.index_state = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.stat = type { i32 }
%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to open dir %s: %s.\0A\00", align 1
@G_NORMALIZE_NFC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to stat %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_9__* null, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@SYNC_STATUS_IGNORED = common dso_local global i32 0, align 4
@SYNC_STATUS_SYNCING = common dso_local global i32 0, align 4
@SYNC_STATUS_SYNCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, %struct.index_state*, i32*, i64)* @update_active_path_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_active_path_recursive(%struct.TYPE_7__* %0, i8* %1, %struct.index_state* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.index_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.stat, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.index_state* %2, %struct.index_state** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @g_build_filename(i32 %25, i8* %26, i32* null)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = call i32* @g_dir_open(i8* %28, i32 0, %struct.TYPE_8__** %12)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %5
  %33 = load i8*, i8** %15, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @seaf_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %36)
  %38 = load i8*, i8** %15, align 8
  %39 = call i32 @g_free(i8* %38)
  br label %175

40:                                               ; preds = %5
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %106, %72, %40
  %42 = load i32*, i32** %11, align 8
  %43 = call i8* @g_dir_read_name(i32* %42)
  store i8* %43, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %113

45:                                               ; preds = %41
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %20, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* @G_NORMALIZE_NFC, align 4
  %50 = call i8* @g_utf8_normalize(i8* %48, i32 -1, i32 %49)
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = call i8* @g_strconcat(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32* null)
  store i8* %53, i8** %17, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* @g_strconcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32* null)
  store i8* %56, i8** %16, align 8
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %45
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i64 @should_ignore(i8* %61, i8* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %45
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %19, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i8*, i8** %16, align 8
  %70 = call i64 @stat(i8* %69, %struct.stat* %18)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i8*, i8** %16, align 8
  %74 = load i32, i32* @errno, align 4
  %75 = call i32 @strerror(i32 %74)
  %76 = call i32 @seaf_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75)
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 @g_free(i8* %77)
  %79 = load i8*, i8** %17, align 8
  %80 = call i32 @g_free(i8* %79)
  %81 = load i8*, i8** %16, align 8
  %82 = call i32 @g_free(i8* %81)
  br label %41

83:                                               ; preds = %68
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @S_ISDIR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = load i8*, i8** %17, align 8
  %91 = load %struct.index_state*, %struct.index_state** %8, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %19, align 8
  call void @update_active_path_recursive(%struct.TYPE_7__* %89, i8* %90, %struct.index_state* %91, i32* %92, i64 %93)
  br label %106

94:                                               ; preds = %83
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @S_ISREG(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load %struct.index_state*, %struct.index_state** %8, align 8
  %103 = load i64, i64* %19, align 8
  %104 = call i32 @update_active_file(%struct.TYPE_7__* %100, i8* %101, %struct.stat* %18, %struct.index_state* %102, i64 %103)
  br label %105

105:                                              ; preds = %99, %94
  br label %106

106:                                              ; preds = %105, %88
  %107 = load i8*, i8** %14, align 8
  %108 = call i32 @g_free(i8* %107)
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 @g_free(i8* %109)
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 @g_free(i8* %111)
  br label %41

113:                                              ; preds = %41
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @g_dir_close(i32* %114)
  %116 = load i8*, i8** %15, align 8
  %117 = call i32 @g_free(i8* %116)
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @is_path_writable(i32 %120, i32 %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %113
  br label %175

128:                                              ; preds = %113
  %129 = load i32, i32* %20, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %175

137:                                              ; preds = %131
  %138 = load i64, i64* %10, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* @S_IFDIR, align 4
  %149 = load i32, i32* @SYNC_STATUS_IGNORED, align 4
  %150 = call i32 @seaf_sync_manager_update_active_path(i32 %143, i32 %146, i8* %147, i32 %148, i32 %149)
  br label %174

151:                                              ; preds = %137
  %152 = load %struct.index_state*, %struct.index_state** %8, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %152, i8* %153, i32 %155, i32 0)
  store %struct.cache_entry* %156, %struct.cache_entry** %22, align 8
  %157 = load %struct.cache_entry*, %struct.cache_entry** %22, align 8
  %158 = icmp ne %struct.cache_entry* %157, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* @SYNC_STATUS_SYNCING, align 4
  store i32 %160, i32* %21, align 4
  br label %163

161:                                              ; preds = %151
  %162 = load i32, i32* @SYNC_STATUS_SYNCED, align 4
  store i32 %162, i32* %21, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** @seaf, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i8*, i8** %7, align 8
  %171 = load i32, i32* @S_IFDIR, align 4
  %172 = load i32, i32* %21, align 4
  %173 = call i32 @seaf_sync_manager_update_active_path(i32 %166, i32 %169, i8* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %163, %140
  br label %175

175:                                              ; preds = %32, %127, %174, %131, %128
  ret void
}

declare dso_local i8* @g_build_filename(i32, i8*, i32*) #1

declare dso_local i32* @g_dir_open(i8*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i8* @g_utf8_normalize(i8*, i32, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i8*, i32*) #1

declare dso_local i64 @should_ignore(i8*, i8*, i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @update_active_file(%struct.TYPE_7__*, i8*, %struct.stat*, %struct.index_state*, i64) #1

declare dso_local i32 @g_dir_close(i32*) #1

declare dso_local i32 @is_path_writable(i32, i32, i8*) #1

declare dso_local i32 @seaf_sync_manager_update_active_path(i32, i32, i8*, i32, i32) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
