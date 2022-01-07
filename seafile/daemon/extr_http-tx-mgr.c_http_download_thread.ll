; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_download_thread.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_http_download_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i64, i8*, i32, i32, i32 }

@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Failed to create connection pool for host %s.\0A\00", align 1
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to get connection to host %s.\0A\00", align 1
@HTTP_TASK_RT_STATE_CHECK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Download permission denied for repo %.8s on server %s.\0A\00", align 1
@HTTP_TASK_STATE_CANCELED = common dso_local global i64 0, align 8
@HTTP_TASK_RT_STATE_COMMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"Failed to get server head commit for repo %.8s on server %s.\0A\00", align 1
@HTTP_TASK_RT_STATE_FS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Failed to get fs id list for repo %.8s on server %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Failed to get fs objects for repo %.8s on server %s.\0A\00", align 1
@HTTP_TASK_RT_STATE_BLOCK = common dso_local global i32 0, align 4
@REPO_PROP_DOWNLOAD_HEAD = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_WRITE_LOCAL_DATA = common dso_local global i8* null, align 8
@SYNC_ERROR_ID_FILE_LOCKED_BY_APP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @http_download_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_download_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @find_connection_pool(i32* %16, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %185

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = call i32* @connection_pool_get_connection(i32* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %185

44:                                               ; preds = %31
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @HTTP_TASK_RT_STATE_CHECK, align 4
  %50 = call i32 @transition_state(%struct.TYPE_12__* %45, i64 %48, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @check_permission(%struct.TYPE_12__* %51, i32* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  br label %185

63:                                               ; preds = %44
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %185

70:                                               ; preds = %63
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @HTTP_TASK_RT_STATE_COMMIT, align 4
  %76 = call i32 @transition_state(%struct.TYPE_12__* %71, i64 %74, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @get_commit_object(%struct.TYPE_12__* %77, i32* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %70
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %87)
  br label %185

89:                                               ; preds = %70
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %185

96:                                               ; preds = %89
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @HTTP_TASK_RT_STATE_FS, align 4
  %102 = call i32 @transition_state(%struct.TYPE_12__* %97, i64 %100, i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i64 @get_needed_fs_id_list(%struct.TYPE_12__* %103, i32* %104, i32** %7)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %96
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %113)
  br label %185

115:                                              ; preds = %96
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %185

122:                                              ; preds = %115
  br label %123

123:                                              ; preds = %146, %122
  %124 = load i32*, i32** %7, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = call i64 @get_fs_objects(%struct.TYPE_12__* %127, i32* %128, i32** %7)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i8*, i32, ...) @seaf_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %134, i32 %137)
  br label %185

139:                                              ; preds = %126
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @HTTP_TASK_STATE_CANCELED, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %185

146:                                              ; preds = %139
  br label %123

147:                                              ; preds = %123
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @HTTP_TASK_RT_STATE_BLOCK, align 4
  %153 = call i32 @transition_state(%struct.TYPE_12__* %148, i64 %151, i32 %152)
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @REPO_PROP_DOWNLOAD_HEAD, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @seaf_repo_manager_set_repo_property(i32 %156, i32 %159, i32 %160, i32 %163)
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @seaf_repo_fetch_and_checkout(%struct.TYPE_12__* %165, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  switch i32 %170, label %182 [
    i32 129, label %171
    i32 132, label %172
    i32 131, label %173
    i32 128, label %177
    i32 130, label %178
  ]

171:                                              ; preds = %147
  br label %182

172:                                              ; preds = %147
  br label %185

173:                                              ; preds = %147
  %174 = load i8*, i8** @SYNC_ERROR_ID_WRITE_LOCAL_DATA, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i8* %174, i8** %176, align 8
  br label %185

177:                                              ; preds = %147
  br label %185

178:                                              ; preds = %147
  %179 = load i8*, i8** @SYNC_ERROR_ID_FILE_LOCKED_BY_APP, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  store i8* %179, i8** %181, align 8
  br label %185

182:                                              ; preds = %147, %171
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %184 = call i32 @update_local_repo(%struct.TYPE_12__* %183)
  br label %185

185:                                              ; preds = %182, %178, %177, %173, %172, %145, %131, %121, %107, %95, %81, %69, %55, %36, %23
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = call i32 @connection_pool_return_connection(i32* %186, i32* %187)
  %189 = load i32*, i32** %7, align 8
  %190 = call i32 @string_list_free(i32* %189)
  %191 = load i8*, i8** %2, align 8
  ret i8* %191
}

declare dso_local i32* @find_connection_pool(i32*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32, ...) #1

declare dso_local i32* @connection_pool_get_connection(i32*) #1

declare dso_local i32 @transition_state(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i64 @check_permission(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @get_commit_object(%struct.TYPE_12__*, i32*) #1

declare dso_local i64 @get_needed_fs_id_list(%struct.TYPE_12__*, i32*, i32**) #1

declare dso_local i64 @get_fs_objects(%struct.TYPE_12__*, i32*, i32**) #1

declare dso_local i32 @seaf_repo_manager_set_repo_property(i32, i32, i32, i32) #1

declare dso_local i32 @seaf_repo_fetch_and_checkout(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @update_local_repo(%struct.TYPE_12__*) #1

declare dso_local i32 @connection_pool_return_connection(i32*, i32*) #1

declare dso_local i32 @string_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
