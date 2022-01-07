; ModuleID = '/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_proc_process.c'
source_filename = "/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_proc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i8* (%struct.TYPE_27__*)*, %struct.TYPE_21__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, i32, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__**, %struct.TYPE_25__** }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@ngx_modules = common dso_local global %struct.TYPE_18__** null, align 8
@NGX_PROC_MODULE = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no %V process module\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_procs_max_module = common dso_local global i32 0, align 4
@ngx_proc_core_module = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"process repeat\00", align 1
@NGX_PROC_CONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_27__*, i32*, i8*)* @ngx_proc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_proc_process(%struct.TYPE_27__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__**, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %61, %3
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %27, i64 %28
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %26
  %33 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %34 = load i64, i64* %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %33, i64 %34
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NGX_PROC_MODULE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %61

42:                                               ; preds = %32
  %43 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %43, i64 %44
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %47, align 8
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %17, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i64 1
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ngx_strcmp(i32 %52, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %64

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %26

64:                                               ; preds = %59, %26
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* @NGX_LOG_EMERG, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i64 1
  %72 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ngx_conf_log_error(i32 %68, %struct.TYPE_27__* %69, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_22__* %71)
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %248

74:                                               ; preds = %64
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @ngx_pcalloc(i32 %77, i32 16)
  %79 = bitcast i8* %78 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %79, %struct.TYPE_26__** %18, align 8
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %81 = icmp eq %struct.TYPE_26__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %83, i8** %4, align 8
  br label %248

84:                                               ; preds = %74
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %86, align 8
  store %struct.TYPE_26__* %87, %struct.TYPE_26__** %19, align 8
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %89, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  store %struct.TYPE_24__** %90, %struct.TYPE_24__*** %92, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ngx_procs_max_module, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @ngx_pcalloc(i32 %95, i32 %99)
  %101 = bitcast i8* %100 to %struct.TYPE_25__**
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 1
  store %struct.TYPE_25__** %101, %struct.TYPE_25__*** %103, align 8
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %105, align 8
  %107 = icmp eq %struct.TYPE_25__** %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %84
  %109 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %109, i8** %4, align 8
  br label %248

110:                                              ; preds = %84
  store i64 0, i64* %14, align 8
  br label %111

111:                                              ; preds = %162, %110
  %112 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %113 = load i64, i64* %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %112, i64 %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = icmp ne %struct.TYPE_18__* %115, null
  br i1 %116, label %117, label %165

117:                                              ; preds = %111
  %118 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %119 = load i64, i64* %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %118, i64 %119
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NGX_PROC_MODULE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %162

127:                                              ; preds = %117
  %128 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %129 = load i64, i64* %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %128, i64 %129
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  store %struct.TYPE_23__* %133, %struct.TYPE_23__** %17, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i8* (%struct.TYPE_27__*)*, i8* (%struct.TYPE_27__*)** %135, align 8
  %137 = icmp ne i8* (%struct.TYPE_27__*)* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %127
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  %141 = load i8* (%struct.TYPE_27__*)*, i8* (%struct.TYPE_27__*)** %140, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %143 = call i8* %141(%struct.TYPE_27__* %142)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp eq i8* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %147, i8** %4, align 8
  br label %248

148:                                              ; preds = %138
  %149 = load i8*, i8** %9, align 8
  %150 = bitcast i8* %149 to %struct.TYPE_25__*
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %152, align 8
  %154 = load %struct.TYPE_18__**, %struct.TYPE_18__*** @ngx_modules, align 8
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %154, i64 %155
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %153, i64 %159
  store %struct.TYPE_25__* %150, %struct.TYPE_25__** %160, align 8
  br label %161

161:                                              ; preds = %148, %127
  br label %162

162:                                              ; preds = %161, %126
  %163 = load i64, i64* %14, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %14, align 8
  br label %111

165:                                              ; preds = %111
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %167, align 8
  %169 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ngx_proc_core_module, i32 0, i32 0), align 8
  %170 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %168, i64 %169
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %170, align 8
  store %struct.TYPE_25__* %171, %struct.TYPE_25__** %15, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 1
  store %struct.TYPE_26__* %172, %struct.TYPE_26__** %174, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i64 1
  %179 = bitcast %struct.TYPE_22__* %176 to i8*
  %180 = bitcast %struct.TYPE_22__* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 4 %180, i64 4, i1 false)
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %182, align 8
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ngx_proc_core_module, i32 0, i32 0), align 8
  %185 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %183, i64 %184
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %185, align 8
  store %struct.TYPE_24__* %186, %struct.TYPE_24__** %20, align 8
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 0
  %189 = call %struct.TYPE_25__** @ngx_array_push(%struct.TYPE_19__* %188)
  store %struct.TYPE_25__** %189, %struct.TYPE_25__*** %16, align 8
  %190 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %16, align 8
  %191 = icmp eq %struct.TYPE_25__** %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %165
  %193 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %193, i8** %4, align 8
  br label %248

194:                                              ; preds = %165
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %196 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %16, align 8
  store %struct.TYPE_25__* %195, %struct.TYPE_25__** %196, align 8
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %199, align 8
  store %struct.TYPE_25__** %200, %struct.TYPE_25__*** %16, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = sub i64 %204, 2
  store i64 %205, i64* %10, align 8
  br label %206

206:                                              ; preds = %229, %194
  %207 = load i64, i64* %10, align 8
  %208 = icmp uge i64 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %206
  %210 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %16, align 8
  %211 = load i64, i64* %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %210, i64 %211
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @ngx_strcmp(i32 %216, i32 %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %209
  %224 = load i32, i32* @NGX_LOG_EMERG, align 4
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %226 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ngx_conf_log_error(i32 %224, %struct.TYPE_27__* %225, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %227 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %227, i8** %4, align 8
  br label %248

228:                                              ; preds = %209
  br label %229

229:                                              ; preds = %228
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, -1
  store i64 %231, i64* %10, align 8
  br label %206

232:                                              ; preds = %206
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %234 = bitcast %struct.TYPE_27__* %13 to i8*
  %235 = bitcast %struct.TYPE_27__* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 32, i1 false)
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  store %struct.TYPE_26__* %236, %struct.TYPE_26__** %238, align 8
  %239 = load i32, i32* @NGX_PROC_CONF, align 4
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %243 = call i8* @ngx_conf_parse(%struct.TYPE_27__* %242, i32* null)
  store i8* %243, i8** %8, align 8
  %244 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %245 = bitcast %struct.TYPE_27__* %244 to i8*
  %246 = bitcast %struct.TYPE_27__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %245, i8* align 8 %246, i64 32, i1 false)
  %247 = load i8*, i8** %8, align 8
  store i8* %247, i8** %4, align 8
  br label %248

248:                                              ; preds = %232, %223, %192, %146, %108, %82, %67
  %249 = load i8*, i8** %4, align 8
  ret i8* %249
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_25__** @ngx_array_push(%struct.TYPE_19__*) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
