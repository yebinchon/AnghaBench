; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_permission.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }

@HTTP_TASK_TYPE_DOWNLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"download\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"upload\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"seafhttp/\00", align 1
@seaf = common dso_local global %struct.TYPE_13__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"%s/%srepo/%s/permission-check/?op=%s&client_id=%s&client_name=%s\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s/%srepo/%s/permission-check/?op=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Bad response code for GET %s: %d.\0A\00", align 1
@HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Parse check permission response failed: %s.\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"no write permission\00", align 1
@SYNC_ERROR_ID_NO_WRITE_PERMISSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"unsyncable share permission\00", align 1
@SYNC_ERROR_ID_PERM_NOT_SYNCABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"unsyncable_path\00", align 1
@SYNC_ERROR_ID_ACCESS_DENIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @check_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_permission(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_10__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @HTTP_TASK_TYPE_DOWNLOAD, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %30, i8** %17, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  store i8* %36, i8** %18, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %2
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i8* @g_uri_escape_string(i64 %44, i32* null, i32 %45)
  store i8* %46, i8** %19, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %18, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** @seaf, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = call i8* (i8*, i32, i8*, i32, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %49, i8* %50, i32 %53, i8* %54, i32 %57, i8* %58)
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %19, align 8
  %61 = call i32 @g_free(i8* %60)
  br label %72

62:                                               ; preds = %2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i8* (i8*, i32, i8*, i32, i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %65, i8* %66, i32 %69, i8* %70)
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %62, %41
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TRUE, align 4
  %79 = call i64 @http_get(i32* %73, i8* %74, i32 %77, i32* %7, i8** %8, i32* %9, i32* null, i32* null, i32 %78, i32* %20)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @TRUE, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @handle_curl_errors(%struct.TYPE_11__* %85, i32 %86)
  store i32 -1, i32* %10, align 4
  br label %182

88:                                               ; preds = %72
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @HTTP_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %181

92:                                               ; preds = %88
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @HTTP_FORBIDDEN, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99, %92
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @handle_http_errors(%struct.TYPE_11__* %103, i32 %104)
  store i32 -1, i32* %10, align 4
  br label %182

106:                                              ; preds = %99
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32* @json_loadb(i8* %107, i32 %108, i32 0, %struct.TYPE_10__* %16)
  store i32* %109, i32** %11, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %123, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @handle_http_errors(%struct.TYPE_11__* %118, i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @json_decref(i32* %121)
  store i32 -1, i32* %10, align 4
  br label %182

123:                                              ; preds = %106
  %124 = load i32*, i32** %11, align 8
  %125 = call i32* @json_object_get(i32* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32* %125, i32** %12, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @handle_http_errors(%struct.TYPE_11__* %129, i32 %130)
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 @json_decref(i32* %132)
  store i32 -1, i32* %10, align 4
  br label %182

134:                                              ; preds = %123
  %135 = load i32*, i32** %12, align 8
  %136 = call i8* @json_string_value(i32* %135)
  store i8* %136, i8** %14, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = call i64 @g_strcmp0(i8* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i32, i32* @SYNC_ERROR_ID_NO_WRITE_PERMISSION, align 4
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  br label %180

144:                                              ; preds = %134
  %145 = load i8*, i8** %14, align 8
  %146 = call i64 @g_strcmp0(i8* %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %175

148:                                              ; preds = %144
  %149 = load i32, i32* @SYNC_ERROR_ID_PERM_NOT_SYNCABLE, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i32* @json_object_get(i32* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32* %153, i32** %13, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %148
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @json_decref(i32* %157)
  store i32 -1, i32* %10, align 4
  br label %182

159:                                              ; preds = %148
  %160 = load i32*, i32** %13, align 8
  %161 = call i8* @json_string_value(i32* %160)
  store i8* %161, i8** %15, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %15, align 8
  %172 = load i32, i32* @SYNC_ERROR_ID_PERM_NOT_SYNCABLE, align 4
  %173 = call i32 @seaf_repo_manager_record_sync_error(i32 %167, i32 %170, i8* %171, i32 %172)
  br label %174

174:                                              ; preds = %164, %159
  br label %179

175:                                              ; preds = %144
  %176 = load i32, i32* @SYNC_ERROR_ID_ACCESS_DENIED, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %174
  br label %180

180:                                              ; preds = %179, %140
  store i32 -1, i32* %10, align 4
  br label %181

181:                                              ; preds = %180, %88
  br label %182

182:                                              ; preds = %181, %156, %128, %112, %102, %81
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @g_free(i8* %183)
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @g_free(i8* %185)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @curl_easy_reset(i32* %187)
  %189 = load i32, i32* %10, align 4
  ret i32 %189
}

declare dso_local i8* @g_uri_escape_string(i64, i32*, i32) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @http_get(i32*, i8*, i32, i32*, i8**, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @handle_curl_errors(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i32 @handle_http_errors(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i64 @g_strcmp0(i8*, i8*) #1

declare dso_local i32 @seaf_repo_manager_record_sync_error(i32, i32, i8*, i32) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
