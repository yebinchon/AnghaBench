; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_mem.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"swapratio=\00", align 1
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"action=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"free=\00", align 1
@NGX_CONF_UNSET_SIZE = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, i32*, i8*)* @ngx_http_sysguard_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_sysguard_mem(%struct.TYPE_16__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %8, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %9, align 8
  store i64 1, i64* %11, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @ngx_strncmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %142

26:                                               ; preds = %3
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_CONF_UNSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %260

33:                                               ; preds = %26
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = load i64, i64* %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %38, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 37
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %252

51:                                               ; preds = %33
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 11
  %64 = call i64 @ngx_atofp(i8* %57, i32 %63, i32 2)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NGX_ERROR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %51
  br label %252

73:                                               ; preds = %51
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %81, i8** %4, align 8
  br label %260

82:                                               ; preds = %73
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @ngx_strncmp(i8* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %252

93:                                               ; preds = %82
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 7
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %252

101:                                              ; preds = %93
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 7
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 47
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 7
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 64
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %252

122:                                              ; preds = %111, %101
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 7
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  store i8* %128, i8** %131, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 7
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  %141 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %141, i8** %4, align 8
  br label %260

142:                                              ; preds = %3
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i64 @ngx_strncmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %250

150:                                              ; preds = %142
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @NGX_CONF_UNSET_SIZE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %260

157:                                              ; preds = %150
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %159 = load i64, i64* %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 5
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store i8* %163, i8** %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %169, 5
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i32 %170, i32* %171, align 8
  %172 = call i64 @ngx_parse_size(%struct.TYPE_14__* %10)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NGX_ERROR, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %157
  br label %252

181:                                              ; preds = %157
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %190

188:                                              ; preds = %181
  %189 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %189, i8** %4, align 8
  br label %260

190:                                              ; preds = %181
  %191 = load i64, i64* %11, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %11, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @ngx_strncmp(i8* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %252

201:                                              ; preds = %190
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = load i64, i64* %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 7
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %252

209:                                              ; preds = %201
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = load i64, i64* %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 7
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %217, 47
  br i1 %218, label %219, label %230

219:                                              ; preds = %209
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %221 = load i64, i64* %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 7
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 64
  br i1 %228, label %229, label %230

229:                                              ; preds = %219
  br label %252

230:                                              ; preds = %219, %209
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %232 = load i64, i64* %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 7
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  store i8* %236, i8** %239, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %241 = load i64, i64* %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = sub nsw i32 %244, 7
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 8
  %249 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %249, i8** %4, align 8
  br label %260

250:                                              ; preds = %142
  br label %251

251:                                              ; preds = %250
  br label %252

252:                                              ; preds = %251, %229, %208, %200, %180, %121, %100, %92, %72, %50
  %253 = load i32, i32* @NGX_LOG_EMERG, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = load i64, i64* %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i64 %256
  %258 = call i32 @ngx_conf_log_error(i32 %253, %struct.TYPE_16__* %254, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_14__* %257)
  %259 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %259, i8** %4, align 8
  br label %260

260:                                              ; preds = %252, %230, %188, %156, %122, %80, %32
  %261 = load i8*, i8** %4, align 8
  ret i8* %261
}

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ngx_atofp(i8*, i32, i32) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_16__*, i32, i8*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
