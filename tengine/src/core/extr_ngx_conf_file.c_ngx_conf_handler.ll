; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_conf_file.c_ngx_conf_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_15__*, i64, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i8* (%struct.TYPE_17__*, %struct.TYPE_18__*, i8*)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }

@NGX_CONF_MODULE = common dso_local global i64 0, align 8
@NGX_CONF_BLOCK = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"directive \22%s\22 is not terminated by \22;\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_BLOCK_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"directive \22%s\22 has no opening \22{\22\00", align 1
@NGX_CONF_ANY = common dso_local global i32 0, align 4
@NGX_CONF_FLAG = common dso_local global i32 0, align 4
@NGX_CONF_1MORE = common dso_local global i32 0, align 4
@NGX_CONF_2MORE = common dso_local global i32 0, align 4
@NGX_CONF_MAX_ARGS = common dso_local global i32 0, align 4
@argument_number = common dso_local global i32* null, align 8
@NGX_DIRECT_CONF = common dso_local global i32 0, align 4
@NGX_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"\22%s\22 directive %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\22%s\22 directive is not allowed here\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"unknown directive \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"invalid number of arguments in \22%s\22 directive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, i64)* @ngx_conf_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_conf_handler(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %11, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %350, %2
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %22, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %23, i64 %24
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %353

28:                                               ; preds = %18
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %33, i64 %34
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %12, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = icmp eq %struct.TYPE_18__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %350

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %346, %42
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %349

49:                                               ; preds = %43
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %346

59:                                               ; preds = %49
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ngx_strcmp(i32 %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %346

70:                                               ; preds = %59
  store i64 1, i64* %10, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %75, i64 %76
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NGX_CONF_MODULE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %70
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %87, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %88, i64 %89
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  br label %346

99:                                               ; preds = %83, %70
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %99
  br label %346

109:                                              ; preds = %99
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @NGX_CONF_BLOCK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %109
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* @NGX_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %116
  %121 = load i32, i32* @NGX_LOG_EMERG, align 4
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %121, %struct.TYPE_17__* %122, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i64, i64* @NGX_ERROR, align 8
  store i64 %127, i64* %3, align 8
  br label %380

128:                                              ; preds = %116, %109
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @NGX_CONF_BLOCK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load i64, i64* %5, align 8
  %137 = load i64, i64* @NGX_CONF_BLOCK_START, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %135
  %140 = load i32, i32* @NGX_LOG_EMERG, align 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %140, %struct.TYPE_17__* %141, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load i64, i64* @NGX_ERROR, align 8
  store i64 %146, i64* %3, align 8
  br label %380

147:                                              ; preds = %135, %128
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @NGX_CONF_ANY, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %233, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @NGX_CONF_FLAG, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 2
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %372

169:                                              ; preds = %161
  br label %232

170:                                              ; preds = %154
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @NGX_CONF_1MORE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %372

185:                                              ; preds = %177
  br label %231

186:                                              ; preds = %170
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NGX_CONF_2MORE, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %186
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 3
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %372

201:                                              ; preds = %193
  br label %230

202:                                              ; preds = %186
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @NGX_CONF_MAX_ARGS, align 4
  %209 = icmp sgt i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %372

211:                                              ; preds = %202
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32*, i32** @argument_number, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sub nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %215, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %214, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %211
  br label %372

228:                                              ; preds = %211
  br label %229

229:                                              ; preds = %228
  br label %230

230:                                              ; preds = %229, %201
  br label %231

231:                                              ; preds = %230, %185
  br label %232

232:                                              ; preds = %231, %169
  br label %233

233:                                              ; preds = %232, %147
  store i8* null, i8** %7, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @NGX_DIRECT_CONF, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %233
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = inttoptr i64 %243 to i8**
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %248, align 8
  %250 = load i64, i64* %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %249, i64 %250
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds i8*, i8** %244, i64 %254
  %256 = load i8*, i8** %255, align 8
  store i8* %256, i8** %7, align 8
  br label %318

257:                                              ; preds = %233
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @NGX_MAIN_CONF, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %281

264:                                              ; preds = %257
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8**
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %272, align 8
  %274 = load i64, i64* %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %273, i64 %274
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds i8*, i8** %268, i64 %278
  %280 = bitcast i8** %279 to i8*
  store i8* %280, i8** %7, align 8
  br label %317

281:                                              ; preds = %257
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %316

286:                                              ; preds = %281
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = inttoptr i64 %289 to i8*
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %290, i64 %294
  %296 = bitcast i8* %295 to i8**
  %297 = load i8*, i8** %296, align 8
  %298 = bitcast i8* %297 to i8**
  store i8** %298, i8*** %8, align 8
  %299 = load i8**, i8*** %8, align 8
  %300 = icmp ne i8** %299, null
  br i1 %300, label %301, label %315

301:                                              ; preds = %286
  %302 = load i8**, i8*** %8, align 8
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %306, align 8
  %308 = load i64, i64* %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %307, i64 %308
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = getelementptr inbounds i8*, i8** %302, i64 %312
  %314 = load i8*, i8** %313, align 8
  store i8* %314, i8** %7, align 8
  br label %315

315:                                              ; preds = %301, %286
  br label %316

316:                                              ; preds = %315, %281
  br label %317

317:                                              ; preds = %316, %264
  br label %318

318:                                              ; preds = %317, %240
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %320 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %319, i32 0, i32 2
  %321 = load i8* (%struct.TYPE_17__*, %struct.TYPE_18__*, i8*)*, i8* (%struct.TYPE_17__*, %struct.TYPE_18__*, i8*)** %320, align 8
  %322 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %323 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %324 = load i8*, i8** %7, align 8
  %325 = call i8* %321(%struct.TYPE_17__* %322, %struct.TYPE_18__* %323, i8* %324)
  store i8* %325, i8** %6, align 8
  %326 = load i8*, i8** %6, align 8
  %327 = load i8*, i8** @NGX_CONF_OK, align 8
  %328 = icmp eq i8* %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %318
  %330 = load i64, i64* @NGX_OK, align 8
  store i64 %330, i64* %3, align 8
  br label %380

331:                                              ; preds = %318
  %332 = load i8*, i8** %6, align 8
  %333 = load i8*, i8** @NGX_CONF_ERROR, align 8
  %334 = icmp eq i8* %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i64, i64* @NGX_ERROR, align 8
  store i64 %336, i64* %3, align 8
  br label %380

337:                                              ; preds = %331
  %338 = load i32, i32* @NGX_LOG_EMERG, align 4
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = load i8*, i8** %6, align 8
  %344 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %338, %struct.TYPE_17__* %339, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %342, i8* %343)
  %345 = load i64, i64* @NGX_ERROR, align 8
  store i64 %345, i64* %3, align 8
  br label %380

346:                                              ; preds = %108, %98, %69, %58
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 1
  store %struct.TYPE_18__* %348, %struct.TYPE_18__** %12, align 8
  br label %43

349:                                              ; preds = %43
  br label %350

350:                                              ; preds = %349, %41
  %351 = load i64, i64* %9, align 8
  %352 = add i64 %351, 1
  store i64 %352, i64* %9, align 8
  br label %18

353:                                              ; preds = %18
  %354 = load i64, i64* %10, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %364

356:                                              ; preds = %353
  %357 = load i32, i32* @NGX_LOG_EMERG, align 4
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %357, %struct.TYPE_17__* %358, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %361)
  %363 = load i64, i64* @NGX_ERROR, align 8
  store i64 %363, i64* %3, align 8
  br label %380

364:                                              ; preds = %353
  %365 = load i32, i32* @NGX_LOG_EMERG, align 4
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %365, %struct.TYPE_17__* %366, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %369)
  %371 = load i64, i64* @NGX_ERROR, align 8
  store i64 %371, i64* %3, align 8
  br label %380

372:                                              ; preds = %227, %210, %200, %184, %168
  %373 = load i32, i32* @NGX_LOG_EMERG, align 4
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, i32, ...) @ngx_conf_log_error(i32 %373, %struct.TYPE_17__* %374, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %377)
  %379 = load i64, i64* @NGX_ERROR, align 8
  store i64 %379, i64* %3, align 8
  br label %380

380:                                              ; preds = %372, %364, %356, %337, %335, %329, %139, %120
  %381 = load i64, i64* %3, align 8
  ret i64 %381
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_17__*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
