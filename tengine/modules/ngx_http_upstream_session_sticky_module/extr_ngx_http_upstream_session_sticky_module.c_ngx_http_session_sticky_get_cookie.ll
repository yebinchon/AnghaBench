; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_get_cookie.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_session_sticky_get_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_22__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32, i32, i8*, i8*, %struct.TYPE_22__, %struct.TYPE_16__, %struct.TYPE_23__*, %struct.TYPE_16__ }
%struct.TYPE_23__ = type { i32, i64, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_16__ = type { i8*, i32 }

@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"session sticky cookie: \22%V\22\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"session sticky [firstseen]\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_PREFIX = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_INSERT = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"session_sticky mode [insert]\00", align 1
@NGX_HTTP_SESSION_STICKY_DELIMITER = common dso_local global i8 0, align 1
@NGX_HTTP_SESSION_STICKY_INDIRECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"session sticky sid [%V]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @ngx_http_session_sticky_get_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_session_sticky_get_cookie(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_21__**, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i32 1, i32* %13, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %22 = call %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_25__* %20, i32 %21)
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %17, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %18, align 8
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  store i8* null, i8** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %14, align 8
  %28 = call i8* (...) @ngx_time()
  store i8* %28, i8** %4, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_21__**
  store %struct.TYPE_21__** %34, %struct.TYPE_21__*** %16, align 8
  store i64 0, i64* %15, align 8
  br label %35

35:                                               ; preds = %88, %1
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %36, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %35
  %44 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %45 = load i64, i64* %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %44, i64 %45
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %14, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @ngx_strnstr(i8* %51, i8* %56, i32 %59)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %88

64:                                               ; preds = %43
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %86, label %75

75:                                               ; preds = %64
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 61
  br i1 %85, label %86, label %87

86:                                               ; preds = %75, %64
  br label %91

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %63
  %89 = load i64, i64* %15, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %15, align 8
  br label %35

91:                                               ; preds = %86, %35
  %92 = load i64, i64* %15, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp uge i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %210

100:                                              ; preds = %91
  %101 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %107, i64 %108
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = call i32 @ngx_log_debug1(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %111)
  %113 = load i8*, i8** %5, align 8
  store i8* %113, i8** %8, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  store i8* %121, i8** %6, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %124, i64 %128
  store i8* %129, i8** %9, align 8
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %206, %100
  %131 = load i8*, i8** %5, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = icmp ult i8* %131, %132
  br i1 %133, label %134, label %209

134:                                              ; preds = %130
  %135 = load i32, i32* %19, align 4
  switch i32 %135, label %205 [
    i32 0, label %136
    i32 1, label %150
    i32 2, label %164
    i32 3, label %178
    i32 4, label %187
  ]

136:                                              ; preds = %134
  %137 = load i8*, i8** %5, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 59
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %210

142:                                              ; preds = %136
  %143 = load i8*, i8** %5, align 8
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @is_space(i8 signext %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  store i32 1, i32* %19, align 4
  br label %148

148:                                              ; preds = %147, %142
  br label %149

149:                                              ; preds = %148
  br label %206

150:                                              ; preds = %134
  %151 = load i8*, i8** %5, align 8
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @is_space(i8 signext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %150
  store i32 2, i32* %19, align 4
  br label %163

156:                                              ; preds = %150
  %157 = load i8*, i8** %5, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 61
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 3, i32* %19, align 4
  br label %162

162:                                              ; preds = %161, %156
  br label %163

163:                                              ; preds = %162, %155
  br label %206

164:                                              ; preds = %134
  %165 = load i8*, i8** %5, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 61
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  store i32 3, i32* %19, align 4
  br label %177

170:                                              ; preds = %164
  %171 = load i8*, i8** %5, align 8
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @is_space(i8 signext %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %210

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176, %169
  br label %206

178:                                              ; preds = %134
  %179 = load i8*, i8** %5, align 8
  %180 = load i8, i8* %179, align 1
  %181 = call i32 @is_space(i8 signext %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  store i32 4, i32* %19, align 4
  %184 = load i8*, i8** %5, align 8
  %185 = getelementptr inbounds i8, i8* %184, i32 -1
  store i8* %185, i8** %5, align 8
  store i8* %184, i8** %6, align 8
  br label %186

186:                                              ; preds = %183, %178
  br label %206

187:                                              ; preds = %134
  %188 = load i8*, i8** %5, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp eq i32 %190, 59
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %10, align 8
  br label %261

195:                                              ; preds = %187
  %196 = load i8*, i8** %5, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 1
  %198 = load i8*, i8** %9, align 8
  %199 = icmp eq i8* %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load i8*, i8** %9, align 8
  store i8* %201, i8** %10, align 8
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %5, align 8
  br label %261

204:                                              ; preds = %195
  br label %206

205:                                              ; preds = %134
  br label %206

206:                                              ; preds = %205, %204, %186, %177, %163, %149
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %5, align 8
  br label %130

209:                                              ; preds = %130
  br label %210

210:                                              ; preds = %651, %290, %209, %175, %141, %99
  %211 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ngx_log_debug0(i32 %211, i32 %216, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 1
  store i32 1, i32* %219, align 4
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 1
  store i32 0, i32* %222, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  store i8* null, i8** %225, align 8
  %226 = load i8*, i8** %4, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 2
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** %4, align 8
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 3
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @ngx_http_session_sticky_tmtoa(%struct.TYPE_25__* %232, %struct.TYPE_16__* %234, i8* %237)
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 7
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @ngx_http_session_sticky_tmtoa(%struct.TYPE_25__* %239, %struct.TYPE_16__* %241, i8* %244)
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = icmp eq i8* %249, null
  br i1 %250, label %257, label %251

251:                                              ; preds = %210
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = icmp eq i8* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %251, %210
  %258 = load i32, i32* @NGX_ERROR, align 4
  store i32 %258, i32* %2, align 4
  br label %663

259:                                              ; preds = %251
  %260 = load i32, i32* @NGX_OK, align 4
  store i32 %260, i32* %2, align 4
  br label %663

261:                                              ; preds = %200, %192
  %262 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @NGX_HTTP_SESSION_STICKY_PREFIX, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %293

268:                                              ; preds = %261
  %269 = load i8*, i8** %6, align 8
  store i8* %269, i8** %7, align 8
  br label %270

270:                                              ; preds = %283, %268
  %271 = load i8*, i8** %7, align 8
  %272 = load i8*, i8** %5, align 8
  %273 = icmp ult i8* %271, %272
  br i1 %273, label %274, label %286

274:                                              ; preds = %270
  %275 = load i8*, i8** %7, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 126
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i8*, i8** %7, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 1
  store i8* %281, i8** %10, align 8
  br label %286

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282
  %284 = load i8*, i8** %7, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %7, align 8
  br label %270

286:                                              ; preds = %279, %270
  %287 = load i8*, i8** %7, align 8
  %288 = load i8*, i8** %5, align 8
  %289 = icmp uge i8* %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %286
  br label %210

291:                                              ; preds = %286
  %292 = load i8*, i8** %6, align 8
  store i8* %292, i8** %8, align 8
  br label %295

293:                                              ; preds = %261
  %294 = load i8*, i8** %5, align 8
  store i8* %294, i8** %7, align 8
  br label %295

295:                                              ; preds = %293, %291
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @NGX_HTTP_SESSION_STICKY_INSERT, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %564

302:                                              ; preds = %295
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @NGX_CONF_UNSET, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %564

308:                                              ; preds = %302
  %309 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %310, i32 0, i32 0
  %312 = load %struct.TYPE_19__*, %struct.TYPE_19__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @ngx_log_debug0(i32 %309, i32 %314, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %316 = load i8*, i8** %6, align 8
  store i8* %316, i8** %5, align 8
  br label %317

317:                                              ; preds = %421, %308
  %318 = load i8*, i8** %5, align 8
  %319 = load i8*, i8** %7, align 8
  %320 = icmp ult i8* %318, %319
  br i1 %320, label %321, label %424

321:                                              ; preds = %317
  %322 = load i8*, i8** %5, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = load i8, i8* @NGX_HTTP_SESSION_STICKY_DELIMITER, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %420

328:                                              ; preds = %321
  %329 = load i32, i32* %12, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %12, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %374

333:                                              ; preds = %328
  %334 = load i8*, i8** %5, align 8
  %335 = load i8*, i8** %6, align 8
  %336 = ptrtoint i8* %334 to i64
  %337 = ptrtoint i8* %335 to i64
  %338 = sub i64 %336, %337
  %339 = trunc i64 %338 to i32
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 1
  store i32 %339, i32* %342, align 8
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 4
  %348 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = call i8* @ngx_pnalloc(i32 %345, i32 %349)
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 4
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 0
  store i8* %350, i8** %353, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 4
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = icmp eq i8* %357, null
  br i1 %358, label %359, label %361

359:                                              ; preds = %333
  %360 = load i32, i32* @NGX_ERROR, align 4
  store i32 %360, i32* %2, align 4
  br label %663

361:                                              ; preds = %333
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = load i8*, i8** %6, align 8
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @ngx_memcpy(i8* %365, i8* %366, i32 %370)
  %372 = load i8*, i8** %5, align 8
  %373 = getelementptr inbounds i8, i8* %372, i64 1
  store i8* %373, i8** %6, align 8
  br label %419

374:                                              ; preds = %328
  %375 = load i32, i32* %12, align 4
  %376 = icmp eq i32 %375, 2
  br i1 %376, label %377, label %418

377:                                              ; preds = %374
  %378 = load i8*, i8** %5, align 8
  %379 = load i8*, i8** %6, align 8
  %380 = ptrtoint i8* %378 to i64
  %381 = ptrtoint i8* %379 to i64
  %382 = sub i64 %380, %381
  %383 = trunc i64 %382 to i32
  %384 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 1
  store i32 %383, i32* %386, align 8
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %391 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %390, i32 0, i32 5
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 8
  %394 = call i8* @ngx_pnalloc(i32 %389, i32 %393)
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  store i8* %394, i8** %397, align 8
  %398 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %399 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %398, i32 0, i32 5
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = icmp eq i8* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %377
  %404 = load i32, i32* @NGX_ERROR, align 4
  store i32 %404, i32* %2, align 4
  br label %663

405:                                              ; preds = %377
  %406 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = load i8*, i8** %6, align 8
  %411 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %412 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @ngx_memcpy(i8* %409, i8* %410, i32 %414)
  %416 = load i8*, i8** %5, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 1
  store i8* %417, i8** %6, align 8
  br label %424

418:                                              ; preds = %374
  store i32 0, i32* %13, align 4
  br label %604

419:                                              ; preds = %361
  br label %420

420:                                              ; preds = %419, %321
  br label %421

421:                                              ; preds = %420
  %422 = load i8*, i8** %5, align 8
  %423 = getelementptr inbounds i8, i8* %422, i32 1
  store i8* %423, i8** %5, align 8
  br label %317

424:                                              ; preds = %405, %317
  %425 = load i8*, i8** %5, align 8
  %426 = load i8*, i8** %7, align 8
  %427 = icmp uge i8* %425, %426
  br i1 %427, label %432, label %428

428:                                              ; preds = %424
  %429 = load i8*, i8** %6, align 8
  %430 = load i8*, i8** %7, align 8
  %431 = icmp uge i8* %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %428, %424
  store i32 0, i32* %13, align 4
  br label %604

433:                                              ; preds = %428
  %434 = load i8*, i8** %7, align 8
  %435 = load i8*, i8** %6, align 8
  %436 = ptrtoint i8* %434 to i64
  %437 = ptrtoint i8* %435 to i64
  %438 = sub i64 %436, %437
  %439 = trunc i64 %438 to i32
  %440 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %441 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %440, i32 0, i32 7
  %442 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %441, i32 0, i32 1
  store i32 %439, i32* %442, align 8
  %443 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 7
  %448 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 8
  %450 = call i8* @ngx_pnalloc(i32 %445, i32 %449)
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i32 0, i32 7
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 0
  store i8* %450, i8** %453, align 8
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 7
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  %457 = load i8*, i8** %456, align 8
  %458 = icmp eq i8* %457, null
  br i1 %458, label %459, label %461

459:                                              ; preds = %433
  %460 = load i32, i32* @NGX_ERROR, align 4
  store i32 %460, i32* %2, align 4
  br label %663

461:                                              ; preds = %433
  %462 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %463 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %462, i32 0, i32 7
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 0
  %465 = load i8*, i8** %464, align 8
  %466 = load i8*, i8** %6, align 8
  %467 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %468 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %467, i32 0, i32 7
  %469 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 8
  %471 = call i32 @ngx_memcpy(i8* %465, i8* %466, i32 %470)
  %472 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %473 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %472, i32 0, i32 7
  %474 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 7
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 1
  %479 = load i32, i32* %478, align 8
  %480 = call i8* @ngx_atotm(i8* %475, i32 %479)
  %481 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %482 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %481, i32 0, i32 2
  store i8* %480, i8** %482, align 8
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 5
  %485 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %484, i32 0, i32 0
  %486 = load i8*, i8** %485, align 8
  %487 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %488 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %487, i32 0, i32 5
  %489 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = call i8* @ngx_atotm(i8* %486, i32 %490)
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 3
  store i8* %491, i8** %493, align 8
  %494 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %495 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %494, i32 0, i32 2
  %496 = load i8*, i8** %495, align 8
  %497 = load i32, i32* @NGX_ERROR, align 4
  %498 = sext i32 %497 to i64
  %499 = inttoptr i64 %498 to i8*
  %500 = icmp eq i8* %496, %499
  br i1 %500, label %509, label %501

501:                                              ; preds = %461
  %502 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %503 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %502, i32 0, i32 3
  %504 = load i8*, i8** %503, align 8
  %505 = load i32, i32* @NGX_ERROR, align 4
  %506 = sext i32 %505 to i64
  %507 = inttoptr i64 %506 to i8*
  %508 = icmp eq i8* %504, %507
  br i1 %508, label %509, label %510

509:                                              ; preds = %501, %461
  store i32 0, i32* %13, align 4
  br label %604

510:                                              ; preds = %501
  %511 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %512 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %511, i32 0, i32 4
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %558

516:                                              ; preds = %510
  %517 = load i8*, i8** %4, align 8
  %518 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %518, i32 0, i32 3
  %520 = load i8*, i8** %519, align 8
  %521 = ptrtoint i8* %517 to i64
  %522 = ptrtoint i8* %520 to i64
  %523 = sub i64 %521, %522
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %11, align 4
  %525 = load i32, i32* %11, align 4
  %526 = sext i32 %525 to i64
  %527 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 6
  %529 = load %struct.TYPE_23__*, %struct.TYPE_23__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = icmp sgt i64 %526, %531
  br i1 %532, label %536, label %533

533:                                              ; preds = %516
  %534 = load i32, i32* %11, align 4
  %535 = icmp slt i32 %534, -86400
  br i1 %535, label %536, label %537

536:                                              ; preds = %533, %516
  store i32 0, i32* %13, align 4
  br label %604

537:                                              ; preds = %533
  %538 = load i8*, i8** %4, align 8
  %539 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %539, i32 0, i32 2
  %541 = load i8*, i8** %540, align 8
  %542 = ptrtoint i8* %538 to i64
  %543 = ptrtoint i8* %541 to i64
  %544 = sub i64 %542, %543
  %545 = trunc i64 %544 to i32
  store i32 %545, i32* %11, align 4
  %546 = load i32, i32* %11, align 4
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %547, i32 0, i32 6
  %549 = load %struct.TYPE_23__*, %struct.TYPE_23__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 8
  %552 = icmp sgt i32 %546, %551
  br i1 %552, label %556, label %553

553:                                              ; preds = %537
  %554 = load i32, i32* %11, align 4
  %555 = icmp slt i32 %554, -86400
  br i1 %555, label %556, label %557

556:                                              ; preds = %553, %537
  store i32 0, i32* %13, align 4
  br label %604

557:                                              ; preds = %553
  br label %558

558:                                              ; preds = %557, %510
  %559 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %560 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %560, i32 0, i32 5
  %562 = load i8*, i8** %4, align 8
  %563 = call i32 @ngx_http_session_sticky_tmtoa(%struct.TYPE_25__* %559, %struct.TYPE_16__* %561, i8* %562)
  br label %603

564:                                              ; preds = %302, %295
  %565 = load i8*, i8** %7, align 8
  %566 = load i8*, i8** %6, align 8
  %567 = ptrtoint i8* %565 to i64
  %568 = ptrtoint i8* %566 to i64
  %569 = sub i64 %567, %568
  %570 = trunc i64 %569 to i32
  %571 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %572 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %571, i32 0, i32 4
  %573 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %572, i32 0, i32 1
  store i32 %570, i32* %573, align 8
  %574 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 4
  %579 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %578, i32 0, i32 1
  %580 = load i32, i32* %579, align 8
  %581 = call i8* @ngx_pnalloc(i32 %576, i32 %580)
  %582 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %583 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %582, i32 0, i32 4
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 0
  store i8* %581, i8** %584, align 8
  %585 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %586 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %585, i32 0, i32 4
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %586, i32 0, i32 0
  %588 = load i8*, i8** %587, align 8
  %589 = icmp eq i8* %588, null
  br i1 %589, label %590, label %592

590:                                              ; preds = %564
  %591 = load i32, i32* @NGX_ERROR, align 4
  store i32 %591, i32* %2, align 4
  br label %663

592:                                              ; preds = %564
  %593 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %594 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %593, i32 0, i32 4
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i32 0, i32 0
  %596 = load i8*, i8** %595, align 8
  %597 = load i8*, i8** %6, align 8
  %598 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %599 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %598, i32 0, i32 4
  %600 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %599, i32 0, i32 1
  %601 = load i32, i32* %600, align 8
  %602 = call i32 @ngx_memcpy(i8* %596, i8* %597, i32 %601)
  br label %603

603:                                              ; preds = %592, %558
  br label %604

604:                                              ; preds = %603, %556, %536, %509, %432, %418
  %605 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %606 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = load i32, i32* @NGX_HTTP_SESSION_STICKY_PREFIX, align 4
  %609 = load i32, i32* @NGX_HTTP_SESSION_STICKY_INDIRECT, align 4
  %610 = or i32 %608, %609
  %611 = and i32 %607, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %648

613:                                              ; preds = %604
  %614 = load i8*, i8** %10, align 8
  %615 = load i8*, i8** %8, align 8
  %616 = ptrtoint i8* %614 to i64
  %617 = ptrtoint i8* %615 to i64
  %618 = sub i64 %616, %617
  %619 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %620 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 8
  %622 = sext i32 %621 to i64
  %623 = sub nsw i64 %622, %618
  %624 = trunc i64 %623 to i32
  store i32 %624, i32* %620, align 8
  %625 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %626 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 8
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %636

629:                                              ; preds = %613
  %630 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  %631 = load i64, i64* %15, align 8
  %632 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %630, i64 %631
  %633 = load %struct.TYPE_21__*, %struct.TYPE_21__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %633, i32 0, i32 0
  store i64 0, i64* %634, align 8
  %635 = load i32, i32* @NGX_OK, align 4
  store i32 %635, i32* %2, align 4
  br label %663

636:                                              ; preds = %613
  br label %637

637:                                              ; preds = %641, %636
  %638 = load i8*, i8** %10, align 8
  %639 = load i8*, i8** %9, align 8
  %640 = icmp ult i8* %638, %639
  br i1 %640, label %641, label %647

641:                                              ; preds = %637
  %642 = load i8*, i8** %10, align 8
  %643 = getelementptr inbounds i8, i8* %642, i32 1
  store i8* %643, i8** %10, align 8
  %644 = load i8, i8* %642, align 1
  %645 = load i8*, i8** %8, align 8
  %646 = getelementptr inbounds i8, i8* %645, i32 1
  store i8* %646, i8** %8, align 8
  store i8 %644, i8* %645, align 1
  br label %637

647:                                              ; preds = %637
  br label %648

648:                                              ; preds = %647, %604
  %649 = load i32, i32* %13, align 4
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %652

651:                                              ; preds = %648
  br label %210

652:                                              ; preds = %648
  %653 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %654 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %655 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %654, i32 0, i32 0
  %656 = load %struct.TYPE_19__*, %struct.TYPE_19__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %660 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %659, i32 0, i32 4
  %661 = call i32 @ngx_log_debug1(i32 %653, i32 %658, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %660)
  %662 = load i32, i32* @NGX_OK, align 4
  store i32 %662, i32* %2, align 4
  br label %663

663:                                              ; preds = %652, %629, %590, %459, %403, %359, %259, %257
  %664 = load i32, i32* %2, align 4
  ret i32 %664
}

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_ctx(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @ngx_time(...) #1

declare dso_local i8* @ngx_strnstr(i8*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @is_space(i8 signext) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_session_sticky_tmtoa(%struct.TYPE_25__*, %struct.TYPE_16__*, i8*) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i32) #1

declare dso_local i8* @ngx_atotm(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
