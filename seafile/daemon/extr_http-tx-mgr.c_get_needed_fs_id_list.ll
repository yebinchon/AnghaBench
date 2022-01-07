; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_needed_fs_id_list.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_needed_fs_id_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"seafhttp/\00", align 1
@seaf = common dso_local global %struct.TYPE_19__* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed to get branch master for repo %.8s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"%s/%srepo/%s/fs-id-list/?server-head=%s&client-head=%s\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"%s/%srepo/%s/fs-id-list/?server-head=%s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Bad response code for GET %s: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Invalid JSON response from the server: %s.\0A\00", align 1
@SYNC_ERROR_ID_SERVER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"Received fs object list size %lu from %s:%s.\0A\00", align 1
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"Invalid JSON response from the server.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i32**)* @get_needed_fs_id_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_needed_fs_id_list(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 9
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)
  store i8* %32, i8** %18, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %69, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** @seaf, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_15__* @seaf_branch_manager_get_branch(i32 %40, i32 %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %8, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  store i32 -1, i32* %4, align 4
  br label %265

52:                                               ; preds = %37
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* (i8*, i32, i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %55, i8* %56, i32 %59, i32 %62, i32 %65)
  store i8* %66, i8** %10, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = call i32 @seaf_branch_unref(%struct.TYPE_15__* %67)
  br label %81

69:                                               ; preds = %3
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = call i8* (i8*, i32, i8*, i32, i32, ...) @g_strdup_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %72, i8* %73, i32 %76, i32 %79)
  store i8* %80, i8** %10, align 8
  br label %81

81:                                               ; preds = %69, %52
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @http_get(i32* %85, i8* %86, i32 %89, i32* %11, i8** %12, i32* %13, i32* null, i32* null, i32 %95, i32* %19)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %81
  %99 = load i32, i32* @TRUE, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = load i32, i32* %19, align 4
  %104 = call i32 @handle_curl_errors(%struct.TYPE_16__* %102, i32 %103)
  store i32 -1, i32* %14, align 4
  br label %257

105:                                              ; preds = %81
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @HTTP_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %110, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @handle_http_errors(%struct.TYPE_16__* %113, i32 %114)
  store i32 -1, i32* %14, align 4
  br label %257

116:                                              ; preds = %105
  %117 = load i8*, i8** %12, align 8
  %118 = load i32, i32* %13, align 4
  %119 = call i32* @json_loadb(i8* %117, i32 %118, i32 0, %struct.TYPE_14__* %16)
  store i32* %119, i32** %15, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @SYNC_ERROR_ID_SERVER, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  store i32 -1, i32* %14, align 4
  br label %257

129:                                              ; preds = %116
  %130 = load i32*, i32** %15, align 8
  %131 = call i64 @json_array_size(i32* %130)
  store i64 %131, i64* %21, align 8
  %132 = load i64, i64* %21, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @seaf_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i64 %132, i32 %135, i32 %138)
  %140 = load i64, i64* %21, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* @g_str_hash, align 4
  %145 = load i32, i32* @g_str_equal, align 4
  %146 = call i32* @g_hash_table_new_full(i32 %144, i32 %145, i32 (i8*)* @g_free, i32* null)
  store i32* %146, i32** %23, align 8
  store i32 0, i32* %20, align 4
  br label %147

147:                                              ; preds = %249, %129
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %21, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %252

152:                                              ; preds = %147
  %153 = load i32*, i32** %15, align 8
  %154 = load i32, i32* %20, align 4
  %155 = call i32* @json_array_get(i32* %153, i32 %154)
  store i32* %155, i32** %22, align 8
  %156 = load i32*, i32** %22, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %165, label %158

158:                                              ; preds = %152
  %159 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32*, i32** %15, align 8
  %161 = call i32 @json_decref(i32* %160)
  %162 = load i32**, i32*** %7, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @string_list_free(i32* %163)
  store i32 -1, i32* %14, align 4
  br label %257

165:                                              ; preds = %152
  %166 = load i32*, i32** %22, align 8
  %167 = call i8* @json_string_value(i32* %166)
  store i8* %167, i8** %17, align 8
  %168 = load i32*, i32** %23, align 8
  %169 = load i8*, i8** %17, align 8
  %170 = call i64 @g_hash_table_lookup(i32* %168, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %249

177:                                              ; preds = %165
  %178 = load i8*, i8** %17, align 8
  %179 = call i8* @g_strdup(i8* %178)
  store i8* %179, i8** %24, align 8
  %180 = load i32*, i32** %23, align 8
  %181 = load i8*, i8** %24, align 8
  %182 = load i8*, i8** %24, align 8
  %183 = call i32 @g_hash_table_replace(i32* %180, i8* %181, i8* %182)
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** @seaf, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i8*, i8** %17, align 8
  %196 = call i32 @seaf_obj_store_obj_exists(i32 %188, i32 %191, i32 %194, i8* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %177
  %199 = load i32**, i32*** %7, align 8
  %200 = load i32*, i32** %199, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = call i8* @g_strdup(i8* %201)
  %203 = call i32* @g_list_prepend(i32* %200, i8* %202)
  %204 = load i32**, i32*** %7, align 8
  store i32* %203, i32** %204, align 8
  br label %248

205:                                              ; preds = %177
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %242

210:                                              ; preds = %205
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %25, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** @seaf, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load i8*, i8** %17, align 8
  %222 = load i32, i32* @FALSE, align 4
  %223 = call i32 @seaf_fs_manager_verify_object(%struct.TYPE_18__* %214, i32 %217, i32 %220, i8* %221, i32 %222, i32* %25)
  store i32 %223, i32* %26, align 4
  %224 = load i32, i32* %26, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %236, label %226

226:                                              ; preds = %210
  %227 = load i32, i32* %25, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  %230 = load i32**, i32*** %7, align 8
  %231 = load i32*, i32** %230, align 8
  %232 = load i8*, i8** %17, align 8
  %233 = call i8* @g_strdup(i8* %232)
  %234 = call i32* @g_list_prepend(i32* %231, i8* %233)
  %235 = load i32**, i32*** %7, align 8
  store i32* %234, i32** %235, align 8
  br label %241

236:                                              ; preds = %226, %210
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %236, %229
  br label %247

242:                                              ; preds = %205
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %242, %241
  br label %248

248:                                              ; preds = %247, %198
  br label %249

249:                                              ; preds = %248, %172
  %250 = load i32, i32* %20, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %20, align 4
  br label %147

252:                                              ; preds = %147
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @json_decref(i32* %253)
  %255 = load i32*, i32** %23, align 8
  %256 = call i32 @g_hash_table_destroy(i32* %255)
  br label %257

257:                                              ; preds = %252, %158, %122, %109, %98
  %258 = load i8*, i8** %10, align 8
  %259 = call i32 @g_free(i8* %258)
  %260 = load i8*, i8** %12, align 8
  %261 = call i32 @g_free(i8* %260)
  %262 = load i32*, i32** %9, align 8
  %263 = call i32 @curl_easy_reset(i32* %262)
  %264 = load i32, i32* %14, align 4
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %257, %47
  %266 = load i32, i32* %4, align 4
  ret i32 %266
}

declare dso_local %struct.TYPE_15__* @seaf_branch_manager_get_branch(i32, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @seaf_branch_unref(%struct.TYPE_15__*) #1

declare dso_local i64 @http_get(i32*, i8*, i32, i32*, i8**, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @handle_curl_errors(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @handle_http_errors(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i32 @seaf_debug(i8*, i64, i32, i32) #1

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32 (i8*)*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @string_list_free(i32*) #1

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i64 @g_hash_table_lookup(i32*, i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_replace(i32*, i8*, i8*) #1

declare dso_local i32 @seaf_obj_store_obj_exists(i32, i32, i32, i8*) #1

declare dso_local i32* @g_list_prepend(i32*, i8*) #1

declare dso_local i32 @seaf_fs_manager_verify_object(%struct.TYPE_18__*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
