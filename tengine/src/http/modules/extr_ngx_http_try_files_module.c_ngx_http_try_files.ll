; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_try_files_module.c_ngx_http_try_files.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_try_files_module.c_ngx_http_try_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_18__* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid code \22%*s\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_try_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_try_files(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %8, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %262

22:                                               ; preds = %3
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 32
  %33 = trunc i64 %32 to i32
  %34 = call %struct.TYPE_16__* @ngx_pcalloc(i32 %25, i32 %33)
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %13, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %38, i8** %4, align 8
  br label %262

39:                                               ; preds = %22
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %42, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %189, %39
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %49, %55
  br i1 %56, label %57, label %192

57:                                               ; preds = %48
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %66
  %68 = bitcast %struct.TYPE_14__* %62 to i8*
  %69 = bitcast %struct.TYPE_14__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %138

78:                                               ; preds = %57
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %85, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %99, label %138

99:                                               ; preds = %78
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 2
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %99
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %128, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %108, %99, %78, %57
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = call i32 @ngx_http_script_variables_count(%struct.TYPE_14__* %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %138
  %148 = call i32 @ngx_memzero(%struct.TYPE_17__* %14, i32 48)
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 6
  store %struct.TYPE_18__* %149, %struct.TYPE_18__** %150, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 5
  store %struct.TYPE_14__* %155, %struct.TYPE_14__** %156, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  store i32* %161, i32** %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  store i32* %167, i32** %168, align 8
  %169 = load i32, i32* %12, align 4
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %169, i32* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 1, i32* %171, align 4
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 2
  store i32 1, i32* %172, align 8
  %173 = call i64 @ngx_http_script_compile(%struct.TYPE_17__* %14)
  %174 = load i64, i64* @NGX_OK, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %147
  %177 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %177, i8** %4, align 8
  br label %262

178:                                              ; preds = %147
  br label %188

179:                                              ; preds = %138
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %179, %178
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %48

192:                                              ; preds = %48
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 61
  br i1 %204, label %205, label %260

205:                                              ; preds = %192
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %216 = load i32, i32* %11, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = sub nsw i32 %222, 2
  %224 = call i32 @ngx_atoi(i8* %214, i32 %223)
  store i32 %224, i32* %10, align 4
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @NGX_ERROR, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %231, label %228

228:                                              ; preds = %205
  %229 = load i32, i32* %10, align 4
  %230 = icmp sgt i32 %229, 999
  br i1 %230, label %231, label %253

231:                                              ; preds = %228, %205
  %232 = load i32, i32* @NGX_LOG_EMERG, align 4
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @ngx_conf_log_error(i32 %232, %struct.TYPE_18__* %233, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %242, i8* %250)
  %252 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %252, i8** %4, align 8
  br label %262

253:                                              ; preds = %228
  %254 = load i32, i32* %10, align 4
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  store i32 %254, i32* %259, align 4
  br label %260

260:                                              ; preds = %253, %192
  %261 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %261, i8** %4, align 8
  br label %262

262:                                              ; preds = %260, %231, %176, %37, %21
  %263 = load i8*, i8** %4, align 8
  ret i8* %263
}

declare dso_local %struct.TYPE_16__* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_script_variables_count(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_atoi(i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
