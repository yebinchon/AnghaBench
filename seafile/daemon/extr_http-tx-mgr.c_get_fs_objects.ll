; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_fs_objects.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_get_fs_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_18__ = type { i32, i32, i32 }

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@GET_FS_OBJECT_N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Requesting %d fs objects from %s:%s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s/seafhttp/repo/%s/pack-fs/\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s/repo/%s/pack-fs/\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Bad response code for POST %s: %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Incomplete object package received for repo %.8s.\0A\00", align 1
@SYNC_ERROR_ID_SERVER = common dso_local global i32 0, align 4
@seaf = common dso_local global %struct.TYPE_22__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"Failed to write fs object %s in repo %.8s.\0A\00", align 1
@SYNC_ERROR_ID_WRITE_LOCAL_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Received %d fs objects from %s:%s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_20__**)* @get_fs_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fs_objects(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__** %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca [41 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %6, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %17, align 4
  %30 = load i32, i32* @g_str_hash, align 4
  %31 = load i32, i32* @g_str_equal, align 4
  %32 = call i32* @g_hash_table_new_full(i32 %30, i32 %31, i32 (i8*)* @g_free, i32* null)
  store i32* %32, i32** %18, align 8
  %33 = call i32* (...) @json_array()
  store i32* %33, i32** %7, align 8
  br label %34

34:                                               ; preds = %62, %3
  %35 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @json_string(i8* %44)
  %46 = call i32 @json_array_append_new(i32* %43, i32 %45)
  %47 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = call %struct.TYPE_20__* @g_list_delete_link(%struct.TYPE_20__* %48, %struct.TYPE_20__* %50)
  %52 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* %51, %struct.TYPE_20__** %52, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @g_hash_table_replace(i32* %53, i8* %54, i8* %55)
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @GET_FS_OBJECT_N, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %38
  br label %63

62:                                               ; preds = %38
  br label %34

63:                                               ; preds = %61, %34
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @seaf_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67, i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @json_dumps(i32* %72, i32 0)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @strlen(i8* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @json_decref(i32* %76)
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %12, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %63
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %91)
  store i8* %92, i8** %13, align 8
  br label %101

93:                                               ; preds = %63
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %99)
  store i8* %100, i8** %13, align 8
  br label %101

101:                                              ; preds = %93, %85
  %102 = load i32*, i32** %12, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i64 @http_post(i32* %102, i8* %103, i32 %106, i8* %107, i32 %108, i32* %14, i8** %15, i32* %16, i32 %109, i32* %19)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load i32, i32* @TRUE, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @handle_curl_errors(%struct.TYPE_19__* %116, i32 %117)
  store i32 -1, i32* %17, align 4
  br label %245

119:                                              ; preds = %101
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @HTTP_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* %14, align 4
  %126 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %124, i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @handle_http_errors(%struct.TYPE_19__* %127, i32 %128)
  store i32 -1, i32* %17, align 4
  br label %245

130:                                              ; preds = %119
  store i32 0, i32* %20, align 4
  %131 = load i8*, i8** %15, align 8
  store i8* %131, i8** %21, align 8
  %132 = load i8*, i8** %21, align 8
  %133 = bitcast i8* %132 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %133, %struct.TYPE_18__** %22, align 8
  store i32 0, i32* %24, align 4
  br label %134

134:                                              ; preds = %198, %130
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %220

138:                                              ; preds = %134
  %139 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 0
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @memcpy(i8* %139, i32 %142, i32 40)
  %144 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 40
  store i8 0, i8* %144, align 8
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @ntohl(i32 %147)
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = add i64 %150, 12
  %152 = load i32, i32* %25, align 4
  %153 = sext i32 %152 to i64
  %154 = add i64 %151, %153
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ugt i64 %154, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %138
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @SYNC_ERROR_ID_SERVER, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  store i32 -1, i32* %17, align 4
  br label %245

166:                                              ; preds = %138
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @seaf, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 0
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %25, align 4
  %185 = load i32, i32* @FALSE, align 4
  %186 = call i32 @seaf_obj_store_write_obj(i32 %173, i32 %176, i32 %179, i8* %180, i32 %183, i32 %184, i32 %185)
  store i32 %186, i32* %26, align 4
  %187 = load i32, i32* %26, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %166
  %190 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 0
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %190, i32 %193)
  %195 = load i32, i32* @SYNC_ERROR_ID_WRITE_LOCAL_DATA, align 4
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  store i32 -1, i32* %17, align 4
  br label %245

198:                                              ; preds = %166
  %199 = load i32*, i32** %18, align 8
  %200 = getelementptr inbounds [41 x i8], [41 x i8]* %23, i64 0, i64 0
  %201 = call i32 @g_hash_table_remove(i32* %199, i8* %200)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = add i64 12, %207
  %209 = load i8*, i8** %21, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 %208
  store i8* %210, i8** %21, align 8
  %211 = load i32, i32* %25, align 4
  %212 = sext i32 %211 to i64
  %213 = add i64 12, %212
  %214 = load i32, i32* %24, align 4
  %215 = sext i32 %214 to i64
  %216 = add i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %24, align 4
  %218 = load i8*, i8** %21, align 8
  %219 = bitcast i8* %218 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %219, %struct.TYPE_18__** %22, align 8
  br label %134

220:                                              ; preds = %134
  %221 = load i32, i32* %20, align 4
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @seaf_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %221, i32 %224, i32 %227)
  %229 = load i32*, i32** %18, align 8
  %230 = call i32 @g_hash_table_iter_init(i32* %27, i32* %229)
  br label %231

231:                                              ; preds = %234, %220
  %232 = call i64 @g_hash_table_iter_next(i32* %27, i8** %28, i8** %29)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i8*, i8** %28, align 8
  store i8* %235, i8** %8, align 8
  %236 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %236, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @g_strdup(i8* %238)
  %240 = call %struct.TYPE_20__* @g_list_prepend(%struct.TYPE_20__* %237, i32 %239)
  %241 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %6, align 8
  store %struct.TYPE_20__* %240, %struct.TYPE_20__** %241, align 8
  br label %231

242:                                              ; preds = %231
  %243 = load i32*, i32** %18, align 8
  %244 = call i32 @g_hash_table_destroy(i32* %243)
  br label %245

245:                                              ; preds = %242, %189, %158, %123, %112
  %246 = load i8*, i8** %13, align 8
  %247 = call i32 @g_free(i8* %246)
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 @g_free(i8* %248)
  %250 = load i8*, i8** %15, align 8
  %251 = call i32 @g_free(i8* %250)
  %252 = load i32*, i32** %12, align 8
  %253 = call i32 @curl_easy_reset(i32* %252)
  %254 = load i32, i32* %17, align 4
  ret i32 %254
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32 (i8*)*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local %struct.TYPE_20__* @g_list_delete_link(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @g_hash_table_replace(i32*, i8*, i8*) #1

declare dso_local i32 @seaf_debug(i8*, i32, i32, i32) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i8* @g_strdup_printf(i8*, i32, i32) #1

declare dso_local i64 @http_post(i32*, i8*, i32, i8*, i32, i32*, i8**, i32*, i32, i32*) #1

declare dso_local i32 @handle_curl_errors(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @handle_http_errors(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @seaf_obj_store_write_obj(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @g_hash_table_remove(i32*, i8*) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32*) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, i8**, i8**) #1

declare dso_local %struct.TYPE_20__* @g_list_prepend(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @curl_easy_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
