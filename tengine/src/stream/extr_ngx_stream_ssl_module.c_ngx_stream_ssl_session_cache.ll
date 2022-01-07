; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_session_cache.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_session_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_SSL_NO_SCACHE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@NGX_SSL_NONE_SCACHE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@NGX_SSL_DFLT_BUILTIN_SCACHE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"builtin:\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"shared:\00", align 1
@ngx_pagesize = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"session cache \22%V\22 is too small\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_ssl_module = common dso_local global i32 0, align 4
@ngx_ssl_session_cache_init = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@NGX_SSL_NO_BUILTIN_SCACHE = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"invalid session cache \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_15__*, i32*, i8*)* @ngx_stream_ssl_session_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_ssl_session_cache(%struct.TYPE_15__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %10, align 8
  store i64 1, i64* %14, align 8
  br label %23

23:                                               ; preds = %223, %3
  %24 = load i64, i64* %14, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %226

31:                                               ; preds = %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @ngx_strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* @NGX_SSL_NO_SCACHE, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %223

43:                                               ; preds = %31
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = load i64, i64* %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @ngx_strcmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i64, i64* @NGX_SSL_NONE_SCACHE, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %223

55:                                               ; preds = %43
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @ngx_strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load i64, i64* @NGX_SSL_DFLT_BUILTIN_SCACHE, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %223

67:                                               ; preds = %55
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %73, 8
  br i1 %74, label %75, label %108

75:                                               ; preds = %67
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @ngx_strncmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %108

83:                                               ; preds = %75
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 9
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = load i64, i64* %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = sub i64 %96, 8
  %98 = trunc i64 %97 to i32
  %99 = call i64 @ngx_atoi(i8* %90, i32 %98)
  store i64 %99, i64* %13, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* @NGX_ERROR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %83
  br label %243

104:                                              ; preds = %83
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %223

108:                                              ; preds = %75, %67
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = load i64, i64* %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = icmp ugt i64 %114, 7
  br i1 %115, label %116, label %222

116:                                              ; preds = %108
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @ngx_strncmp(i8* %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %222

124:                                              ; preds = %116
  store i64 0, i64* %9, align 8
  store i64 7, i64* %15, align 8
  br label %125

125:                                              ; preds = %149, %124
  %126 = load i64, i64* %15, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = icmp ult i64 %126, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %125
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %136 = load i64, i64* %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 58
  br i1 %144, label %145, label %146

145:                                              ; preds = %134
  br label %152

146:                                              ; preds = %134
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %146
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %15, align 8
  br label %125

152:                                              ; preds = %145, %125
  %153 = load i64, i64* %9, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %243

156:                                              ; preds = %152
  %157 = load i64, i64* %9, align 8
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 %158, i32* %159, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 8
  %166 = getelementptr inbounds i8, i8* %165, i64 -1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %166, i8** %167, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %169 = load i64, i64* %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %15, align 8
  %175 = sub i64 %173, %174
  %176 = sub i64 %175, 1
  %177 = trunc i64 %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  store i32 %177, i32* %178, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i64, i64* %9, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  store i8* %183, i8** %184, align 8
  %185 = call i64 @ngx_parse_size(%struct.TYPE_14__* %12)
  store i64 %185, i64* %13, align 8
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* @NGX_ERROR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %156
  br label %243

190:                                              ; preds = %156
  %191 = load i64, i64* %13, align 8
  %192 = load i32, i32* @ngx_pagesize, align 4
  %193 = mul nsw i32 8, %192
  %194 = sext i32 %193 to i64
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load i32, i32* @NGX_LOG_EMERG, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %200 = load i64, i64* %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i64 %200
  %202 = call i32 @ngx_conf_log_error(i32 %197, %struct.TYPE_15__* %198, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_14__* %201)
  %203 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %203, i8** %4, align 8
  br label %251

204:                                              ; preds = %190
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = load i64, i64* %13, align 8
  %207 = call %struct.TYPE_16__* @ngx_shared_memory_add(%struct.TYPE_15__* %205, %struct.TYPE_14__* %11, i64 %206, i32* @ngx_stream_ssl_module)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  store %struct.TYPE_16__* %207, %struct.TYPE_16__** %209, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = icmp eq %struct.TYPE_16__* %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %204
  %215 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %215, i8** %4, align 8
  br label %251

216:                                              ; preds = %204
  %217 = load i32, i32* @ngx_ssl_session_cache_init, align 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  store i32 %217, i32* %221, align 4
  br label %223

222:                                              ; preds = %116, %108
  br label %243

223:                                              ; preds = %216, %104, %63, %51, %39
  %224 = load i64, i64* %14, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %14, align 8
  br label %23

226:                                              ; preds = %23
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = icmp ne %struct.TYPE_16__* %229, null
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @NGX_CONF_UNSET, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = load i64, i64* @NGX_SSL_NO_BUILTIN_SCACHE, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %237, %231, %226
  %242 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %242, i8** %4, align 8
  br label %251

243:                                              ; preds = %222, %189, %155, %103
  %244 = load i32, i32* @NGX_LOG_EMERG, align 4
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %247 = load i64, i64* %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 %247
  %249 = call i32 @ngx_conf_log_error(i32 %244, %struct.TYPE_15__* %245, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_14__* %248)
  %250 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %250, i8** %4, align 8
  br label %251

251:                                              ; preds = %243, %241, %214, %196
  %252 = load i8*, i8** %4, align 8
  ret i8* %252
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_atoi(i8*, i32) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_15__*, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @ngx_shared_memory_add(%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
