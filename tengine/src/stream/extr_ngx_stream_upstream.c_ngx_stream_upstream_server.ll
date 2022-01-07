; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_server.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i8*, i8*, i8*, i32, i32, %struct.TYPE_17__, %struct.TYPE_17__, i64, i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"weight=\00", align 1
@NGX_STREAM_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"max_conns=\00", align 1
@NGX_STREAM_UPSTREAM_MAX_CONNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"max_fails=\00", align 1
@NGX_STREAM_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"fail_timeout=\00", align 1
@NGX_STREAM_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@NGX_STREAM_UPSTREAM_BACKUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@NGX_STREAM_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"no port in upstream \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"balancing method does not support parameter \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_stream_upstream_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_upstream_server(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_15__* @ngx_array_push(i32 %22)
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %17, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %25 = icmp eq %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %27, i8** %4, align 8
  br label %312

28:                                               ; preds = %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %30 = call i32 @ngx_memzero(%struct.TYPE_15__* %29, i32 96)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  store %struct.TYPE_17__* %35, %struct.TYPE_17__** %10, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %15, align 8
  store i32 10, i32* %9, align 4
  store i64 2, i64* %16, align 8
  br label %36

36:                                               ; preds = %229, %28
  %37 = load i64, i64* %16, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %37, %42
  br i1 %43, label %44, label %232

44:                                               ; preds = %36
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = load i64, i64* %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @ngx_strncmp(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NGX_STREAM_UPSTREAM_WEIGHT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %304

60:                                               ; preds = %52
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 7
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = load i64, i64* %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 7
  %73 = call i8* @ngx_atoi(i32* %66, i64 %72)
  store i8* %73, i8** %13, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** @NGX_ERROR, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = load i8*, i8** %13, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %60
  br label %296

81:                                               ; preds = %77
  br label %229

82:                                               ; preds = %44
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = load i64, i64* %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @ngx_strncmp(i32* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %82
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_CONNS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %304

98:                                               ; preds = %90
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %106 = load i64, i64* %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 10
  %111 = call i8* @ngx_atoi(i32* %104, i64 %110)
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** @NGX_ERROR, align 8
  %114 = icmp eq i8* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %296

116:                                              ; preds = %98
  br label %229

117:                                              ; preds = %82
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %119 = load i64, i64* %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @ngx_strncmp(i32* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %152

125:                                              ; preds = %117
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_FAILS, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  br label %304

133:                                              ; preds = %125
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = load i64, i64* %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 10
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = load i64, i64* %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, 10
  %146 = call i8* @ngx_atoi(i32* %139, i64 %145)
  store i8* %146, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = load i8*, i8** @NGX_ERROR, align 8
  %149 = icmp eq i8* %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %133
  br label %296

151:                                              ; preds = %133
  br label %229

152:                                              ; preds = %117
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = call i64 @ngx_strncmp(i32* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %190

160:                                              ; preds = %152
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NGX_STREAM_UPSTREAM_FAIL_TIMEOUT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %304

168:                                              ; preds = %160
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = sub nsw i64 %173, 13
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 1
  store i64 %174, i64* %175, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = load i64, i64* %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 13
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  store i32* %181, i32** %182, align 8
  %183 = call i32 @ngx_parse_time(%struct.TYPE_17__* %11, i32 1)
  store i32 %183, i32* %9, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i8*, i8** @NGX_ERROR, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %168
  br label %296

189:                                              ; preds = %168
  br label %229

190:                                              ; preds = %152
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call i64 @ngx_strcmp(i32* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %190
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @NGX_STREAM_UPSTREAM_BACKUP, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %198
  br label %304

206:                                              ; preds = %198
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %229

209:                                              ; preds = %190
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %211 = load i64, i64* %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i64 @ngx_strcmp(i32* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %209
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @NGX_STREAM_UPSTREAM_DOWN, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %217
  br label %304

225:                                              ; preds = %217
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  store i32 1, i32* %227, align 4
  br label %229

228:                                              ; preds = %209
  br label %296

229:                                              ; preds = %225, %206, %189, %151, %116, %81
  %230 = load i64, i64* %16, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %16, align 8
  br label %36

232:                                              ; preds = %36
  %233 = call i32 @ngx_memzero(%struct.TYPE_15__* %12, i32 96)
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 8
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i64 1
  %237 = bitcast %struct.TYPE_17__* %234 to i8*
  %238 = bitcast %struct.TYPE_17__* %236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %237, i8* align 8 %238, i64 16, i1 false)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @ngx_parse_url(i32 %241, %struct.TYPE_15__* %12)
  %243 = load i64, i64* @NGX_OK, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %259

245:                                              ; preds = %232
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 11
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %245
  %250 = load i32, i32* @NGX_LOG_EMERG, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = inttoptr i64 %253 to %struct.TYPE_17__*
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 8
  %256 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %250, %struct.TYPE_18__* %251, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_17__* %254, %struct.TYPE_17__* %255)
  br label %257

257:                                              ; preds = %249, %245
  %258 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %258, i8** %4, align 8
  br label %312

259:                                              ; preds = %232
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 10
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load i32, i32* @NGX_LOG_EMERG, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 8
  %267 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %264, %struct.TYPE_18__* %265, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_17__* %266)
  %268 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %268, i8** %4, align 8
  br label %312

269:                                              ; preds = %259
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 9
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 8
  %273 = bitcast %struct.TYPE_17__* %271 to i8*
  %274 = bitcast %struct.TYPE_17__* %272 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %273, i8* align 8 %274, i64 16, i1 false)
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 7
  store i32 %276, i32* %278, align 4
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 6
  store i32 %280, i32* %282, align 8
  %283 = load i8*, i8** %13, align 8
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 5
  store i8* %283, i8** %285, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 4
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 3
  store i8* %289, i8** %291, align 8
  %292 = load i32, i32* %9, align 4
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %295, i8** %4, align 8
  br label %312

296:                                              ; preds = %228, %188, %150, %115, %80
  %297 = load i32, i32* @NGX_LOG_EMERG, align 4
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %300 = load i64, i64* %16, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i64 %300
  %302 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %297, %struct.TYPE_18__* %298, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_17__* %301)
  %303 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %303, i8** %4, align 8
  br label %312

304:                                              ; preds = %224, %205, %167, %132, %97, %59
  %305 = load i32, i32* @NGX_LOG_EMERG, align 4
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %308 = load i64, i64* %16, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i64 %308
  %310 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*, ...) @ngx_conf_log_error(i32 %305, %struct.TYPE_18__* %306, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_17__* %309)
  %311 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %311, i8** %4, align 8
  br label %312

312:                                              ; preds = %304, %296, %269, %263, %257, %26
  %313 = load i8*, i8** %4, align 8
  ret i8* %313
}

declare dso_local %struct.TYPE_15__* @ngx_array_push(i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i8* @ngx_atoi(i32*, i64) #1

declare dso_local i32 @ngx_parse_time(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_strcmp(i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, %struct.TYPE_17__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
