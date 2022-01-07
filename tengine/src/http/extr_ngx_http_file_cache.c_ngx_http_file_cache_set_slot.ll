; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_set_slot.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_set_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_27__*, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i8* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_28__ }
%struct.TYPE_29__ = type { i64, i32, i64, %struct.TYPE_32__*, %struct.TYPE_24__*, i8*, i8*, i64, i8*, i8*, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_29__*, i32, i32, i64*, %struct.TYPE_28__ }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_MAX_OFF_T_VALUE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"levels=\00", align 1
@NGX_MAX_PATH_LEVEL = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid \22levels\22 \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"use_temp_path=\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"invalid use_temp_path value \22%V\22, it must be \22on\22 or \22off\22\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"keys_zone=\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid keys zone size \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"keys zone \22%V\22 is too small\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"inactive=\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"invalid inactive value \22%V\22\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"max_size=\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"invalid max_size value \22%V\22\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"loader_files=\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"invalid loader_files value \22%V\22\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"loader_sleep=\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"invalid loader_sleep value \22%V\22\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"loader_threshold=\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"invalid loader_threshold value \22%V\22\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"manager_files=\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"invalid manager_files value \22%V\22\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"manager_sleep=\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"invalid manager_sleep value \22%V\22\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"manager_threshold=\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"invalid manager_threshold value \22%V\22\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"\22%V\22 must have \22keys_zone\22 parameter\00", align 1
@ngx_http_file_cache_manager = common dso_local global i32 0, align 4
@ngx_http_file_cache_loader = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [20 x i8] c"duplicate zone \22%V\22\00", align 1
@ngx_http_file_cache_init = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_file_cache_set_slot(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__, align 8
  %15 = alloca %struct.TYPE_28__, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_29__*, align 8
  %28 = alloca %struct.TYPE_29__**, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store i8* %2, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %8, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @ngx_pcalloc(i32 %32, i32 88)
  %34 = bitcast i8* %33 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %27, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %36 = icmp eq %struct.TYPE_29__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %806

39:                                               ; preds = %3
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @ngx_pcalloc(i32 %42, i32 4)
  %44 = bitcast i8* %43 to %struct.TYPE_24__*
  %45 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 4
  store %struct.TYPE_24__* %44, %struct.TYPE_24__** %46, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = icmp eq %struct.TYPE_24__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %52, i8** %4, align 8
  br label %806

53:                                               ; preds = %39
  store i64 1, i64* %25, align 8
  store i32 600, i32* %12, align 4
  store i64 100, i64* %17, align 8
  store i8* inttoptr (i64 50 to i8*), i8** %19, align 8
  store i8* inttoptr (i64 200 to i8*), i8** %21, align 8
  store i64 100, i64* %18, align 8
  store i8* inttoptr (i64 50 to i8*), i8** %20, align 8
  store i8* inttoptr (i64 200 to i8*), i8** %22, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i64 0, i64* %13, align 8
  %55 = load i64, i64* @NGX_MAX_OFF_T_VALUE, align 8
  store i64 %55, i64* %9, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %16, align 8
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 7
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i64 1
  %67 = bitcast %struct.TYPE_28__* %64 to i8*
  %68 = bitcast %struct.TYPE_28__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %74, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 47
  br i1 %86, label %87, label %95

87:                                               ; preds = %53
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %87, %53
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 7
  %103 = call i64 @ngx_conf_full_name(i32 %98, %struct.TYPE_28__* %102, i32 0)
  %104 = load i64, i64* @NGX_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %107, i8** %4, align 8
  br label %806

108:                                              ; preds = %95
  store i64 2, i64* %23, align 8
  br label %109

109:                                              ; preds = %663, %108
  %110 = load i64, i64* %23, align 8
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ult i64 %110, %115
  br i1 %116, label %117, label %666

117:                                              ; preds = %109
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %119 = load i64, i64* %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @ngx_strncmp(i8* %122, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %240

125:                                              ; preds = %117
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %127 = load i64, i64* %23, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 7
  store i8* %131, i8** %11, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %133 = load i64, i64* %23, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %138 = load i64, i64* %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %136, i64 %142
  store i8* %143, i8** %10, align 8
  store i64 0, i64* %24, align 8
  br label %144

144:                                              ; preds = %217, %125
  %145 = load i64, i64* %24, align 8
  %146 = load i64, i64* @NGX_MAX_PATH_LEVEL, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = icmp ult i8* %149, %150
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi i1 [ false, %144 ], [ %151, %148 ]
  br i1 %153, label %154, label %220

154:                                              ; preds = %152
  %155 = load i8*, i8** %11, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp sgt i32 %157, 48
  br i1 %158, label %159, label %216

159:                                              ; preds = %154
  %160 = load i8*, i8** %11, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp slt i32 %162, 51
  br i1 %163, label %164, label %216

164:                                              ; preds = %159
  %165 = load i8*, i8** %11, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %11, align 8
  %167 = load i8, i8* %165, align 1
  %168 = sext i8 %167 to i32
  %169 = sub nsw i32 %168, 48
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 6
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %24, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  store i64 %170, i64* %177, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 6
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %24, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, 1
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %186
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %10, align 8
  %197 = icmp eq i8* %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %164
  br label %220

199:                                              ; preds = %164
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %11, align 8
  %202 = load i8, i8* %200, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 58
  br i1 %204, label %205, label %215

205:                                              ; preds = %199
  %206 = load i64, i64* %24, align 8
  %207 = load i64, i64* @NGX_MAX_PATH_LEVEL, align 8
  %208 = sub i64 %207, 1
  %209 = icmp ult i64 %206, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i8*, i8** %11, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = icmp ult i8* %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  br label %217

215:                                              ; preds = %210, %205, %199
  br label %232

216:                                              ; preds = %159, %154
  br label %232

217:                                              ; preds = %214
  %218 = load i64, i64* %24, align 8
  %219 = add i64 %218, 1
  store i64 %219, i64* %24, align 8
  br label %144

220:                                              ; preds = %198, %152
  %221 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %222 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = load i64, i64* @NGX_MAX_PATH_LEVEL, align 8
  %228 = add i64 10, %227
  %229 = icmp ult i64 %226, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %663

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %216, %215
  %233 = load i32, i32* @NGX_LOG_EMERG, align 4
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %236 = load i64, i64* %23, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i64 %236
  %238 = call i32 @ngx_conf_log_error(i32 %233, %struct.TYPE_30__* %234, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__* %237)
  %239 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %239, i8** %4, align 8
  br label %806

240:                                              ; preds = %117
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %242 = load i64, i64* %23, align 8
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = call i64 @ngx_strncmp(i8* %245, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 14)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %278

248:                                              ; preds = %240
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %250 = load i64, i64* %23, align 8
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 14
  %255 = call i64 @ngx_strcmp(i8* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  store i64 1, i64* %25, align 8
  br label %277

258:                                              ; preds = %248
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %260 = load i64, i64* %23, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 14
  %265 = call i64 @ngx_strcmp(i8* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %258
  store i64 0, i64* %25, align 8
  br label %276

268:                                              ; preds = %258
  %269 = load i32, i32* @NGX_LOG_EMERG, align 4
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %271 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %272 = load i64, i64* %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i64 %272
  %274 = call i32 @ngx_conf_log_error(i32 %269, %struct.TYPE_30__* %270, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_28__* %273)
  %275 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %275, i8** %4, align 8
  br label %806

276:                                              ; preds = %267
  br label %277

277:                                              ; preds = %276, %257
  br label %663

278:                                              ; preds = %240
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %280 = load i64, i64* %23, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 1
  %283 = load i8*, i8** %282, align 8
  %284 = call i64 @ngx_strncmp(i8* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %366

286:                                              ; preds = %278
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %288 = load i64, i64* %23, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 10
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  store i8* %292, i8** %293, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = call i64 @ngx_strchr(i8* %295, i8 signext 58)
  %297 = inttoptr i64 %296 to i8*
  store i8* %297, i8** %11, align 8
  %298 = load i8*, i8** %11, align 8
  %299 = icmp eq i8* %298, null
  br i1 %299, label %300, label %308

300:                                              ; preds = %286
  %301 = load i32, i32* @NGX_LOG_EMERG, align 4
  %302 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %304 = load i64, i64* %23, align 8
  %305 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %303, i64 %304
  %306 = call i32 @ngx_conf_log_error(i32 %301, %struct.TYPE_30__* %302, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_28__* %305)
  %307 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %307, i8** %4, align 8
  br label %806

308:                                              ; preds = %286
  %309 = load i8*, i8** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = ptrtoint i8* %309 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = trunc i64 %314 to i32
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  store i32 %315, i32* %316, align 8
  %317 = load i8*, i8** %11, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 1
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %318, i8** %319, align 8
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %321 = load i64, i64* %23, align 8
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %326 = load i64, i64* %23, align 8
  %327 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %324, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = ptrtoint i8* %331 to i64
  %335 = ptrtoint i8* %333 to i64
  %336 = sub i64 %334, %335
  %337 = trunc i64 %336 to i32
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %337, i32* %338, align 8
  %339 = call i64 @ngx_parse_size(%struct.TYPE_28__* %14)
  store i64 %339, i64* %13, align 8
  %340 = load i64, i64* %13, align 8
  %341 = load i64, i64* @NGX_ERROR, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %351

343:                                              ; preds = %308
  %344 = load i32, i32* @NGX_LOG_EMERG, align 4
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %347 = load i64, i64* %23, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i64 %347
  %349 = call i32 @ngx_conf_log_error(i32 %344, %struct.TYPE_30__* %345, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_28__* %348)
  %350 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %350, i8** %4, align 8
  br label %806

351:                                              ; preds = %308
  %352 = load i64, i64* %13, align 8
  %353 = load i32, i32* @ngx_pagesize, align 4
  %354 = mul nsw i32 2, %353
  %355 = sext i32 %354 to i64
  %356 = icmp slt i64 %352, %355
  br i1 %356, label %357, label %365

357:                                              ; preds = %351
  %358 = load i32, i32* @NGX_LOG_EMERG, align 4
  %359 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %361 = load i64, i64* %23, align 8
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i64 %361
  %363 = call i32 @ngx_conf_log_error(i32 %358, %struct.TYPE_30__* %359, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_28__* %362)
  %364 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %364, i8** %4, align 8
  br label %806

365:                                              ; preds = %351
  br label %663

366:                                              ; preds = %278
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %368 = load i64, i64* %23, align 8
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %367, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 1
  %371 = load i8*, i8** %370, align 8
  %372 = call i64 @ngx_strncmp(i8* %371, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %404

374:                                              ; preds = %366
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %376 = load i64, i64* %23, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = sub nsw i32 %379, 9
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %380, i32* %381, align 8
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %383 = load i64, i64* %23, align 8
  %384 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %382, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 9
  %388 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %387, i8** %388, align 8
  %389 = call i8* @ngx_parse_time(%struct.TYPE_28__* %14, i32 1)
  %390 = ptrtoint i8* %389 to i32
  store i32 %390, i32* %12, align 4
  %391 = load i32, i32* %12, align 4
  %392 = load i64, i64* @NGX_ERROR, align 8
  %393 = trunc i64 %392 to i32
  %394 = icmp eq i32 %391, %393
  br i1 %394, label %395, label %403

395:                                              ; preds = %374
  %396 = load i32, i32* @NGX_LOG_EMERG, align 4
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %398 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %399 = load i64, i64* %23, align 8
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %398, i64 %399
  %401 = call i32 @ngx_conf_log_error(i32 %396, %struct.TYPE_30__* %397, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_28__* %400)
  %402 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %402, i8** %4, align 8
  br label %806

403:                                              ; preds = %374
  br label %663

404:                                              ; preds = %366
  %405 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %406 = load i64, i64* %23, align 8
  %407 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %405, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 1
  %409 = load i8*, i8** %408, align 8
  %410 = call i64 @ngx_strncmp(i8* %409, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 9)
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %412, label %439

412:                                              ; preds = %404
  %413 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %414 = load i64, i64* %23, align 8
  %415 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %413, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = sub nsw i32 %417, 9
  %419 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %418, i32* %419, align 8
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %421 = load i64, i64* %23, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %420, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %422, i32 0, i32 1
  %424 = load i8*, i8** %423, align 8
  %425 = getelementptr inbounds i8, i8* %424, i64 9
  %426 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %425, i8** %426, align 8
  %427 = call i64 @ngx_parse_offset(%struct.TYPE_28__* %14)
  store i64 %427, i64* %9, align 8
  %428 = load i64, i64* %9, align 8
  %429 = icmp slt i64 %428, 0
  br i1 %429, label %430, label %438

430:                                              ; preds = %412
  %431 = load i32, i32* @NGX_LOG_EMERG, align 4
  %432 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %433 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %434 = load i64, i64* %23, align 8
  %435 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %433, i64 %434
  %436 = call i32 @ngx_conf_log_error(i32 %431, %struct.TYPE_30__* %432, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_28__* %435)
  %437 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %437, i8** %4, align 8
  br label %806

438:                                              ; preds = %412
  br label %663

439:                                              ; preds = %404
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %441 = load i64, i64* %23, align 8
  %442 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %442, i32 0, i32 1
  %444 = load i8*, i8** %443, align 8
  %445 = call i64 @ngx_strncmp(i8* %444, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 13)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %473

447:                                              ; preds = %439
  %448 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %449 = load i64, i64* %23, align 8
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %448, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %450, i32 0, i32 1
  %452 = load i8*, i8** %451, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 13
  %454 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %455 = load i64, i64* %23, align 8
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %454, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 8
  %459 = sub nsw i32 %458, 13
  %460 = call i64 @ngx_atoi(i8* %453, i32 %459)
  store i64 %460, i64* %17, align 8
  %461 = load i64, i64* %17, align 8
  %462 = load i64, i64* @NGX_ERROR, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %472

464:                                              ; preds = %447
  %465 = load i32, i32* @NGX_LOG_EMERG, align 4
  %466 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %467 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %468 = load i64, i64* %23, align 8
  %469 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %467, i64 %468
  %470 = call i32 @ngx_conf_log_error(i32 %465, %struct.TYPE_30__* %466, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_28__* %469)
  %471 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %471, i8** %4, align 8
  br label %806

472:                                              ; preds = %447
  br label %663

473:                                              ; preds = %439
  %474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %475 = load i64, i64* %23, align 8
  %476 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %476, i32 0, i32 1
  %478 = load i8*, i8** %477, align 8
  %479 = call i64 @ngx_strncmp(i8* %478, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 13)
  %480 = icmp eq i64 %479, 0
  br i1 %480, label %481, label %510

481:                                              ; preds = %473
  %482 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %483 = load i64, i64* %23, align 8
  %484 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %482, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = sub nsw i32 %486, 13
  %488 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %487, i32* %488, align 8
  %489 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %490 = load i64, i64* %23, align 8
  %491 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %489, i64 %490
  %492 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %491, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 13
  %495 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %494, i8** %495, align 8
  %496 = call i8* @ngx_parse_time(%struct.TYPE_28__* %14, i32 0)
  store i8* %496, i8** %19, align 8
  %497 = load i8*, i8** %19, align 8
  %498 = load i64, i64* @NGX_ERROR, align 8
  %499 = inttoptr i64 %498 to i8*
  %500 = icmp eq i8* %497, %499
  br i1 %500, label %501, label %509

501:                                              ; preds = %481
  %502 = load i32, i32* @NGX_LOG_EMERG, align 4
  %503 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %504 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %505 = load i64, i64* %23, align 8
  %506 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %504, i64 %505
  %507 = call i32 @ngx_conf_log_error(i32 %502, %struct.TYPE_30__* %503, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_28__* %506)
  %508 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %508, i8** %4, align 8
  br label %806

509:                                              ; preds = %481
  br label %663

510:                                              ; preds = %473
  %511 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %512 = load i64, i64* %23, align 8
  %513 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %511, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %513, i32 0, i32 1
  %515 = load i8*, i8** %514, align 8
  %516 = call i64 @ngx_strncmp(i8* %515, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 17)
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %547

518:                                              ; preds = %510
  %519 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %520 = load i64, i64* %23, align 8
  %521 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %519, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = sub nsw i32 %523, 17
  %525 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %524, i32* %525, align 8
  %526 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %527 = load i64, i64* %23, align 8
  %528 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %526, i64 %527
  %529 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %528, i32 0, i32 1
  %530 = load i8*, i8** %529, align 8
  %531 = getelementptr inbounds i8, i8* %530, i64 17
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %531, i8** %532, align 8
  %533 = call i8* @ngx_parse_time(%struct.TYPE_28__* %14, i32 0)
  store i8* %533, i8** %21, align 8
  %534 = load i8*, i8** %21, align 8
  %535 = load i64, i64* @NGX_ERROR, align 8
  %536 = inttoptr i64 %535 to i8*
  %537 = icmp eq i8* %534, %536
  br i1 %537, label %538, label %546

538:                                              ; preds = %518
  %539 = load i32, i32* @NGX_LOG_EMERG, align 4
  %540 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %541 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %542 = load i64, i64* %23, align 8
  %543 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %541, i64 %542
  %544 = call i32 @ngx_conf_log_error(i32 %539, %struct.TYPE_30__* %540, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_28__* %543)
  %545 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %545, i8** %4, align 8
  br label %806

546:                                              ; preds = %518
  br label %663

547:                                              ; preds = %510
  %548 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %549 = load i64, i64* %23, align 8
  %550 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %548, i64 %549
  %551 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %550, i32 0, i32 1
  %552 = load i8*, i8** %551, align 8
  %553 = call i64 @ngx_strncmp(i8* %552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 14)
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %581

555:                                              ; preds = %547
  %556 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %557 = load i64, i64* %23, align 8
  %558 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %558, i32 0, i32 1
  %560 = load i8*, i8** %559, align 8
  %561 = getelementptr inbounds i8, i8* %560, i64 14
  %562 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %563 = load i64, i64* %23, align 8
  %564 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %562, i64 %563
  %565 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 8
  %567 = sub nsw i32 %566, 14
  %568 = call i64 @ngx_atoi(i8* %561, i32 %567)
  store i64 %568, i64* %18, align 8
  %569 = load i64, i64* %18, align 8
  %570 = load i64, i64* @NGX_ERROR, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %580

572:                                              ; preds = %555
  %573 = load i32, i32* @NGX_LOG_EMERG, align 4
  %574 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %576 = load i64, i64* %23, align 8
  %577 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %575, i64 %576
  %578 = call i32 @ngx_conf_log_error(i32 %573, %struct.TYPE_30__* %574, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_28__* %577)
  %579 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %579, i8** %4, align 8
  br label %806

580:                                              ; preds = %555
  br label %663

581:                                              ; preds = %547
  %582 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %583 = load i64, i64* %23, align 8
  %584 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %582, i64 %583
  %585 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %584, i32 0, i32 1
  %586 = load i8*, i8** %585, align 8
  %587 = call i64 @ngx_strncmp(i8* %586, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 14)
  %588 = icmp eq i64 %587, 0
  br i1 %588, label %589, label %618

589:                                              ; preds = %581
  %590 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %591 = load i64, i64* %23, align 8
  %592 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %590, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 8
  %595 = sub nsw i32 %594, 14
  %596 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %595, i32* %596, align 8
  %597 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %598 = load i64, i64* %23, align 8
  %599 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %597, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %599, i32 0, i32 1
  %601 = load i8*, i8** %600, align 8
  %602 = getelementptr inbounds i8, i8* %601, i64 14
  %603 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %602, i8** %603, align 8
  %604 = call i8* @ngx_parse_time(%struct.TYPE_28__* %14, i32 0)
  store i8* %604, i8** %20, align 8
  %605 = load i8*, i8** %20, align 8
  %606 = load i64, i64* @NGX_ERROR, align 8
  %607 = inttoptr i64 %606 to i8*
  %608 = icmp eq i8* %605, %607
  br i1 %608, label %609, label %617

609:                                              ; preds = %589
  %610 = load i32, i32* @NGX_LOG_EMERG, align 4
  %611 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %612 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %613 = load i64, i64* %23, align 8
  %614 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %612, i64 %613
  %615 = call i32 @ngx_conf_log_error(i32 %610, %struct.TYPE_30__* %611, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_28__* %614)
  %616 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %616, i8** %4, align 8
  br label %806

617:                                              ; preds = %589
  br label %663

618:                                              ; preds = %581
  %619 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %620 = load i64, i64* %23, align 8
  %621 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %619, i64 %620
  %622 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %621, i32 0, i32 1
  %623 = load i8*, i8** %622, align 8
  %624 = call i64 @ngx_strncmp(i8* %623, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 18)
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %626, label %655

626:                                              ; preds = %618
  %627 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %628 = load i64, i64* %23, align 8
  %629 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %627, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 8
  %632 = sub nsw i32 %631, 18
  %633 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  store i32 %632, i32* %633, align 8
  %634 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %635 = load i64, i64* %23, align 8
  %636 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %634, i64 %635
  %637 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %636, i32 0, i32 1
  %638 = load i8*, i8** %637, align 8
  %639 = getelementptr inbounds i8, i8* %638, i64 18
  %640 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 1
  store i8* %639, i8** %640, align 8
  %641 = call i8* @ngx_parse_time(%struct.TYPE_28__* %14, i32 0)
  store i8* %641, i8** %22, align 8
  %642 = load i8*, i8** %22, align 8
  %643 = load i64, i64* @NGX_ERROR, align 8
  %644 = inttoptr i64 %643 to i8*
  %645 = icmp eq i8* %642, %644
  br i1 %645, label %646, label %654

646:                                              ; preds = %626
  %647 = load i32, i32* @NGX_LOG_EMERG, align 4
  %648 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %649 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %650 = load i64, i64* %23, align 8
  %651 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %649, i64 %650
  %652 = call i32 @ngx_conf_log_error(i32 %647, %struct.TYPE_30__* %648, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_28__* %651)
  %653 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %653, i8** %4, align 8
  br label %806

654:                                              ; preds = %626
  br label %663

655:                                              ; preds = %618
  %656 = load i32, i32* @NGX_LOG_EMERG, align 4
  %657 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %658 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %659 = load i64, i64* %23, align 8
  %660 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %658, i64 %659
  %661 = call i32 @ngx_conf_log_error(i32 %656, %struct.TYPE_30__* %657, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), %struct.TYPE_28__* %660)
  %662 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %662, i8** %4, align 8
  br label %806

663:                                              ; preds = %654, %617, %580, %546, %509, %472, %438, %403, %365, %277, %230
  %664 = load i64, i64* %23, align 8
  %665 = add i64 %664, 1
  store i64 %665, i64* %23, align 8
  br label %109

666:                                              ; preds = %109
  %667 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %673, label %670

670:                                              ; preds = %666
  %671 = load i64, i64* %13, align 8
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %670, %666
  %674 = load i32, i32* @NGX_LOG_EMERG, align 4
  %675 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %676 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %677 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %676, i32 0, i32 2
  %678 = call i32 @ngx_conf_log_error(i32 %674, %struct.TYPE_30__* %675, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), %struct.TYPE_28__* %677)
  %679 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %679, i8** %4, align 8
  br label %806

680:                                              ; preds = %670
  %681 = load i32, i32* @ngx_http_file_cache_manager, align 4
  %682 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %683 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %682, i32 0, i32 4
  %684 = load %struct.TYPE_24__*, %struct.TYPE_24__** %683, align 8
  %685 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %684, i32 0, i32 5
  store i32 %681, i32* %685, align 4
  %686 = load i32, i32* @ngx_http_file_cache_loader, align 4
  %687 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %688 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %687, i32 0, i32 4
  %689 = load %struct.TYPE_24__*, %struct.TYPE_24__** %688, align 8
  %690 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %689, i32 0, i32 4
  store i32 %686, i32* %690, align 8
  %691 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %692 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %693 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %692, i32 0, i32 4
  %694 = load %struct.TYPE_24__*, %struct.TYPE_24__** %693, align 8
  %695 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %694, i32 0, i32 3
  store %struct.TYPE_29__* %691, %struct.TYPE_29__** %695, align 8
  %696 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %697 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %696, i32 0, i32 0
  %698 = load %struct.TYPE_27__*, %struct.TYPE_27__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %698, i32 0, i32 1
  %700 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %700, i32 0, i32 0
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %704 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %703, i32 0, i32 4
  %705 = load %struct.TYPE_24__*, %struct.TYPE_24__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %705, i32 0, i32 2
  store i32 %702, i32* %706, align 8
  %707 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %708 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %707, i32 0, i32 0
  %709 = load %struct.TYPE_27__*, %struct.TYPE_27__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %709, i32 0, i32 0
  %711 = load i32, i32* %710, align 4
  %712 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %713 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %712, i32 0, i32 4
  %714 = load %struct.TYPE_24__*, %struct.TYPE_24__** %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %714, i32 0, i32 1
  store i32 %711, i32* %715, align 4
  %716 = load i64, i64* %17, align 8
  %717 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %718 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %717, i32 0, i32 10
  store i64 %716, i64* %718, align 8
  %719 = load i8*, i8** %19, align 8
  %720 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %721 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %720, i32 0, i32 9
  store i8* %719, i8** %721, align 8
  %722 = load i8*, i8** %21, align 8
  %723 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %724 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %723, i32 0, i32 8
  store i8* %722, i8** %724, align 8
  %725 = load i64, i64* %18, align 8
  %726 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %727 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %726, i32 0, i32 7
  store i64 %725, i64* %727, align 8
  %728 = load i8*, i8** %20, align 8
  %729 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %730 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %729, i32 0, i32 6
  store i8* %728, i8** %730, align 8
  %731 = load i8*, i8** %22, align 8
  %732 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %733 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %732, i32 0, i32 5
  store i8* %731, i8** %733, align 8
  %734 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %735 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %736 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %735, i32 0, i32 4
  %737 = call i64 @ngx_add_path(%struct.TYPE_30__* %734, %struct.TYPE_24__** %736)
  %738 = load i64, i64* @NGX_OK, align 8
  %739 = icmp ne i64 %737, %738
  br i1 %739, label %740, label %742

740:                                              ; preds = %680
  %741 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %741, i8** %4, align 8
  br label %806

742:                                              ; preds = %680
  %743 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %744 = load i64, i64* %13, align 8
  %745 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %746 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %745, i32 0, i32 1
  %747 = load i32, i32* %746, align 4
  %748 = call %struct.TYPE_32__* @ngx_shared_memory_add(%struct.TYPE_30__* %743, %struct.TYPE_28__* %15, i64 %744, i32 %747)
  %749 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %750 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %749, i32 0, i32 3
  store %struct.TYPE_32__* %748, %struct.TYPE_32__** %750, align 8
  %751 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %752 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %751, i32 0, i32 3
  %753 = load %struct.TYPE_32__*, %struct.TYPE_32__** %752, align 8
  %754 = icmp eq %struct.TYPE_32__* %753, null
  br i1 %754, label %755, label %757

755:                                              ; preds = %742
  %756 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %756, i8** %4, align 8
  br label %806

757:                                              ; preds = %742
  %758 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %759 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %758, i32 0, i32 3
  %760 = load %struct.TYPE_32__*, %struct.TYPE_32__** %759, align 8
  %761 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %760, i32 0, i32 0
  %762 = load %struct.TYPE_29__*, %struct.TYPE_29__** %761, align 8
  %763 = icmp ne %struct.TYPE_29__* %762, null
  br i1 %763, label %764, label %769

764:                                              ; preds = %757
  %765 = load i32, i32* @NGX_LOG_EMERG, align 4
  %766 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %767 = call i32 @ngx_conf_log_error(i32 %765, %struct.TYPE_30__* %766, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), %struct.TYPE_28__* %15)
  %768 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %768, i8** %4, align 8
  br label %806

769:                                              ; preds = %757
  %770 = load i32, i32* @ngx_http_file_cache_init, align 4
  %771 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %772 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %771, i32 0, i32 3
  %773 = load %struct.TYPE_32__*, %struct.TYPE_32__** %772, align 8
  %774 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %773, i32 0, i32 1
  store i32 %770, i32* %774, align 8
  %775 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %776 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %777 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %776, i32 0, i32 3
  %778 = load %struct.TYPE_32__*, %struct.TYPE_32__** %777, align 8
  %779 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %778, i32 0, i32 0
  store %struct.TYPE_29__* %775, %struct.TYPE_29__** %779, align 8
  %780 = load i64, i64* %25, align 8
  %781 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %782 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %781, i32 0, i32 0
  store i64 %780, i64* %782, align 8
  %783 = load i32, i32* %12, align 4
  %784 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %785 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %784, i32 0, i32 1
  store i32 %783, i32* %785, align 8
  %786 = load i64, i64* %9, align 8
  %787 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %788 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %787, i32 0, i32 2
  store i64 %786, i64* %788, align 8
  %789 = load i8*, i8** %8, align 8
  %790 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %791 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %790, i32 0, i32 0
  %792 = load i32, i32* %791, align 8
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i8, i8* %789, i64 %793
  %795 = bitcast i8* %794 to i32*
  store i32* %795, i32** %26, align 8
  %796 = load i32*, i32** %26, align 8
  %797 = call %struct.TYPE_29__** @ngx_array_push(i32* %796)
  store %struct.TYPE_29__** %797, %struct.TYPE_29__*** %28, align 8
  %798 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %28, align 8
  %799 = icmp eq %struct.TYPE_29__** %798, null
  br i1 %799, label %800, label %802

800:                                              ; preds = %769
  %801 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %801, i8** %4, align 8
  br label %806

802:                                              ; preds = %769
  %803 = load %struct.TYPE_29__*, %struct.TYPE_29__** %27, align 8
  %804 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %28, align 8
  store %struct.TYPE_29__* %803, %struct.TYPE_29__** %804, align 8
  %805 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %805, i8** %4, align 8
  br label %806

806:                                              ; preds = %802, %800, %764, %755, %740, %673, %655, %646, %609, %572, %538, %501, %464, %430, %395, %357, %343, %300, %268, %232, %106, %51, %37
  %807 = load i8*, i8** %4, align 8
  ret i8* %807
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_30__*, i32, i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_strchr(i8*, i8 signext) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_28__*) #1

declare dso_local i8* @ngx_parse_time(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_parse_offset(%struct.TYPE_28__*) #1

declare dso_local i64 @ngx_atoi(i8*, i32) #1

declare dso_local i64 @ngx_add_path(%struct.TYPE_30__*, %struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_32__* @ngx_shared_memory_add(%struct.TYPE_30__*, %struct.TYPE_28__*, i64, i32) #1

declare dso_local %struct.TYPE_29__** @ngx_array_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
