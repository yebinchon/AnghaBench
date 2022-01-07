; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_duplicate.c_ngx_http_tfs_dedup_callback.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_duplicate.c_ngx_http_tfs_dedup_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__, i32*, i8*, i8*, %struct.TYPE_25__, i32, i32, %struct.TYPE_24__, %struct.TYPE_23__*, i32, i32, %struct.TYPE_30__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_UNLINK_DELETE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_NO = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i8* null, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tfs get meta segment failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"get remote block cache instance failed.\00", align 1
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @ngx_http_tfs_dedup_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_tfs_dedup_callback(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_29__* %9, %struct.TYPE_29__** %5, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 12
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_30__* %12, %struct.TYPE_30__** %6, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %302 [
    i32 137, label %18
    i32 136, label %149
  ]

18:                                               ; preds = %2
  %19 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %148 [
    i32 132, label %22
    i32 133, label %140
    i32 135, label %140
    i32 134, label %144
  ]

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NGX_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %124

26:                                               ; preds = %22
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = call i32 @ngx_http_tfs_dedup_check_filename(i32* %28, %struct.TYPE_21__* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @NGX_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %108

36:                                               ; preds = %26
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NGX_HTTP_TFS_UNLINK_DELETE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %107

43:                                               ; preds = %36
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 8
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %43
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  store i32 133, i32* %51, align 8
  %52 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 9
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ngx_http_tfs_dedup_remove(%struct.TYPE_20__* %67, i32 %70, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @NGX_ERROR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %49
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %80 = load i32, i32* @NGX_OK, align 4
  %81 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %49
  br label %303

83:                                               ; preds = %43
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 0
  store i32 134, i32* %85, align 8
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 11
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ngx_http_tfs_dedup_set(%struct.TYPE_20__* %91, i32 %94, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @NGX_ERROR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %83
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %104 = load i32, i32* @NGX_DONE, align 4
  %105 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %83
  br label %303

107:                                              ; preds = %36
  br label %108

108:                                              ; preds = %107, %26
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 9
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 0
  store i32 133, i32* %117, align 8
  %118 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %122 = load i32, i32* @NGX_OK, align 4
  %123 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %121, i32 %122)
  br label %303

124:                                              ; preds = %22
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 9
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  store i32 133, i32* %133, align 8
  %134 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 4
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %138 = load i32, i32* @NGX_OK, align 4
  %139 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %137, i32 %138)
  br label %303

140:                                              ; preds = %18, %18
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = load i32, i32* @NGX_OK, align 4
  %143 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %141, i32 %142)
  br label %303

144:                                              ; preds = %18
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %146 = load i32, i32* @NGX_DONE, align 4
  %147 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %145, i32 %146)
  br label %303

148:                                              ; preds = %18
  br label %302

149:                                              ; preds = %2
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %301 [
    i32 131, label %153
    i32 129, label %153
    i32 128, label %258
    i32 130, label %297
  ]

153:                                              ; preds = %149, %149
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @NGX_OK, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %199

157:                                              ; preds = %153
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 1
  %163 = call i32 @ngx_http_tfs_dedup_check_suffix(i32* %159, i32* %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @NGX_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %157
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %172, i32 0, i32 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 0
  %175 = call i32 @ngx_http_tfs_raw_fsname_parse(i32* %169, i32* %171, %struct.TYPE_21__* %174)
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @NGX_OK, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %193

179:                                              ; preds = %167
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  store i32 %184, i32* %187, align 8
  %188 = load i8*, i8** @NGX_HTTP_TFS_YES, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 4
  store i8* %188, i8** %190, align 8
  %191 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 0
  store i32 129, i32* %192, align 8
  br label %193

193:                                              ; preds = %179, %167
  br label %198

194:                                              ; preds = %157
  %195 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %194, %193
  br label %199

199:                                              ; preds = %198, %153
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %201 = call i32 @ngx_http_tfs_get_meta_segment(%struct.TYPE_29__* %200)
  store i32 %201, i32* %4, align 4
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @NGX_OK, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %199
  %206 = load i32, i32* @NGX_LOG_ERR, align 4
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ngx_log_error(i32 %206, i32 %209, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %215 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %216 = call i32 @ngx_http_tfs_finalize_request(i32 %213, %struct.TYPE_29__* %214, i32 %215)
  br label %303

217:                                              ; preds = %199
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 4
  %220 = load i8*, i8** %219, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %254

222:                                              ; preds = %217
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %251

227:                                              ; preds = %222
  %228 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 0
  %233 = call i32 @ngx_http_tfs_get_remote_block_cache_instance(i32* %230, i32* %232)
  store i32 %233, i32* %4, align 4
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @NGX_ERROR, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %227
  %238 = load i32, i32* @NGX_LOG_ERR, align 4
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i32 0, i32 6
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @ngx_log_error(i32 %238, i32 %241, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %250

243:                                              ; preds = %227
  %244 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %245 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %244
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %243, %237
  br label %251

251:                                              ; preds = %250, %222
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %253 = call i32 @ngx_http_tfs_lookup_block_cache(%struct.TYPE_29__* %252)
  br label %303

254:                                              ; preds = %217
  %255 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %256 = load i32, i32* @NGX_OK, align 4
  %257 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %255, i32 %256)
  br label %301

258:                                              ; preds = %149
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @NGX_OK, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %268

262:                                              ; preds = %258
  %263 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %263, i32 0, i32 0
  store i32 130, i32* %264, align 8
  %265 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %266 = load i32, i32* @NGX_DONE, align 4
  %267 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %265, i32 %266)
  br label %296

268:                                              ; preds = %258
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 0
  store i32 131, i32* %270, align 8
  %271 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 4
  store i8* %271, i8** %273, align 8
  %274 = load i8*, i8** @NGX_HTTP_TFS_NO, align 8
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %275, i32 0, i32 3
  store i8* %274, i8** %276, align 8
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 2
  store i32* null, i32** %278, align 8
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i64 0
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 1
  store i32 0, i32* %285, align 4
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i64 0
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 0
  store i32 0, i32* %292, align 4
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %294 = load i32, i32* @NGX_OK, align 4
  %295 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %293, i32 %294)
  br label %296

296:                                              ; preds = %268, %262
  br label %301

297:                                              ; preds = %149
  %298 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %299 = load i32, i32* @NGX_DONE, align 4
  %300 = call i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__* %298, i32 %299)
  br label %301

301:                                              ; preds = %149, %297, %296, %254
  br label %302

302:                                              ; preds = %301, %2, %148
  br label %303

303:                                              ; preds = %302, %251, %205, %144, %140, %124, %108, %106, %82
  ret void
}

declare dso_local i32 @ngx_http_tfs_dedup_check_filename(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_tfs_dedup_remove(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_finalize_state(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_http_tfs_dedup_set(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ngx_http_tfs_dedup_check_suffix(i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_raw_fsname_parse(i32*, i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_tfs_get_meta_segment(%struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_tfs_finalize_request(i32, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_http_tfs_get_remote_block_cache_instance(i32*, i32*) #1

declare dso_local i32 @ngx_http_tfs_lookup_block_cache(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
