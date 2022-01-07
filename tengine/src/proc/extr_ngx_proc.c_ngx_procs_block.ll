; ModuleID = '/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_block.c'
source_filename = "/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)*, i8* (%struct.TYPE_28__*, i32*, i32*)*, %struct.TYPE_23__, i32* (%struct.TYPE_28__*)*, %struct.TYPE_25__* (%struct.TYPE_28__*)* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32, i64, i32 }
%struct.TYPE_27__ = type { i32**, %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_procs_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_20__** null, align 8
@NGX_PROC_MODULE = common dso_local global i64 0, align 8
@NGX_PROC_MAIN_CONF = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_proc_core_module = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"proc_core\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_28__*, i32*, i8*)* @ngx_procs_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_procs_block(%struct.TYPE_28__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__, align 8
  %13 = alloca %struct.TYPE_26__**, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @ngx_pcalloc(i32 %19, i32 16)
  %21 = bitcast i8* %20 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %15, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %23 = icmp eq %struct.TYPE_27__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %25, i8** %4, align 8
  br label %374

26:                                               ; preds = %3
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_27__**
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %29, align 8
  store i32 0, i32* @ngx_procs_max_module, align 4
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %55, %26
  %31 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %31, i64 %32
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  %35 = icmp ne %struct.TYPE_20__* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %37, i64 %38
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NGX_PROC_MODULE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %55

46:                                               ; preds = %36
  %47 = load i32, i32* @ngx_procs_max_module, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @ngx_procs_max_module, align 4
  %49 = sext i32 %47 to i64
  %50 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %50, i64 %51
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i64 %49, i64* %54, align 8
  br label %55

55:                                               ; preds = %46, %45
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %30

58:                                               ; preds = %30
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ngx_procs_max_module, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i8* @ngx_pcalloc(i32 %61, i32 %65)
  %67 = bitcast i8* %66 to %struct.TYPE_25__**
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 1
  store %struct.TYPE_25__** %67, %struct.TYPE_25__*** %69, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %71, align 8
  %73 = icmp eq %struct.TYPE_25__** %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %75, i8** %4, align 8
  br label %374

76:                                               ; preds = %58
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ngx_procs_max_module, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 8, %81
  %83 = trunc i64 %82 to i32
  %84 = call i8* @ngx_pcalloc(i32 %79, i32 %83)
  %85 = bitcast i8* %84 to i32**
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  store i32** %85, i32*** %87, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = load i32**, i32*** %89, align 8
  %91 = icmp eq i32** %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %76
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %374

94:                                               ; preds = %76
  store i64 0, i64* %9, align 8
  br label %95

95:                                               ; preds = %176, %94
  %96 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %96, i64 %97
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = icmp ne %struct.TYPE_20__* %99, null
  br i1 %100, label %101, label %179

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %102, i64 %103
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NGX_PROC_MODULE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %176

111:                                              ; preds = %101
  %112 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %112, i64 %113
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %14, align 8
  %118 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %118, i64 %119
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %10, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_25__* (%struct.TYPE_28__*)*, %struct.TYPE_25__* (%struct.TYPE_28__*)** %125, align 8
  %127 = icmp ne %struct.TYPE_25__* (%struct.TYPE_28__*)* %126, null
  br i1 %127, label %128, label %149

128:                                              ; preds = %111
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_25__* (%struct.TYPE_28__*)*, %struct.TYPE_25__* (%struct.TYPE_28__*)** %130, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %133 = call %struct.TYPE_25__* %131(%struct.TYPE_28__* %132)
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %136, i64 %137
  store %struct.TYPE_25__* %133, %struct.TYPE_25__** %138, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %140, align 8
  %142 = load i64, i64* %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %141, i64 %142
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = icmp eq %struct.TYPE_25__* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %128
  %147 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %147, i8** %4, align 8
  br label %374

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148, %111
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 3
  %152 = load i32* (%struct.TYPE_28__*)*, i32* (%struct.TYPE_28__*)** %151, align 8
  %153 = icmp ne i32* (%struct.TYPE_28__*)* %152, null
  br i1 %153, label %154, label %175

154:                                              ; preds = %149
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 3
  %157 = load i32* (%struct.TYPE_28__*)*, i32* (%struct.TYPE_28__*)** %156, align 8
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %159 = call i32* %157(%struct.TYPE_28__* %158)
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32**, i32*** %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  store i32* %159, i32** %164, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i64, i64* %10, align 8
  %169 = getelementptr inbounds i32*, i32** %167, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %154
  %173 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %173, i8** %4, align 8
  br label %374

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174, %149
  br label %176

176:                                              ; preds = %175, %110
  %177 = load i64, i64* %9, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %9, align 8
  br label %95

179:                                              ; preds = %95
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %181 = bitcast %struct.TYPE_28__* %12 to i8*
  %182 = bitcast %struct.TYPE_28__* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 32, i1 false)
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  store %struct.TYPE_27__* %183, %struct.TYPE_27__** %185, align 8
  %186 = load i64, i64* @NGX_PROC_MODULE, align 8
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* @NGX_PROC_MAIN_CONF, align 4
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %193 = call i8* @ngx_conf_parse(%struct.TYPE_28__* %192, i32* null)
  store i8* %193, i8** %8, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i8*, i8** @NGX_CONF_OK, align 8
  %196 = icmp ne i8* %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %179
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %199 = bitcast %struct.TYPE_28__* %198 to i8*
  %200 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %199, i8* align 8 %200, i64 32, i1 false)
  %201 = load i8*, i8** %8, align 8
  store i8* %201, i8** %4, align 8
  br label %374

202:                                              ; preds = %179
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %204, align 8
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_proc_core_module, i32 0, i32 0), align 8
  %207 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %205, i64 %206
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %207, align 8
  store %struct.TYPE_25__* %208, %struct.TYPE_25__** %16, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %211, align 8
  store %struct.TYPE_26__** %212, %struct.TYPE_26__*** %13, align 8
  store i64 0, i64* %9, align 8
  br label %213

213:                                              ; preds = %366, %202
  %214 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %214, i64 %215
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %216, align 8
  %218 = icmp ne %struct.TYPE_20__* %217, null
  br i1 %218, label %219, label %369

219:                                              ; preds = %213
  %220 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %221 = load i64, i64* %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %220, i64 %221
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @NGX_PROC_MODULE, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  br label %366

229:                                              ; preds = %219
  %230 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %231 = load i64, i64* %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %230, i64 %231
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  store %struct.TYPE_24__* %235, %struct.TYPE_24__** %14, align 8
  %236 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %237 = load i64, i64* %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %236, i64 %237
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %10, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  store %struct.TYPE_27__* %242, %struct.TYPE_27__** %244, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = load i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)*, i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)** %246, align 8
  %248 = icmp ne i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)* %247, null
  br i1 %248, label %249, label %270

249:                                              ; preds = %229
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 0
  %252 = load i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)*, i8* (%struct.TYPE_28__*, %struct.TYPE_25__*)** %251, align 8
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %255, align 8
  %257 = load i64, i64* %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %256, i64 %257
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %258, align 8
  %260 = call i8* %252(%struct.TYPE_28__* %253, %struct.TYPE_25__* %259)
  store i8* %260, i8** %8, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = load i8*, i8** @NGX_CONF_OK, align 8
  %263 = icmp ne i8* %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %249
  %265 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %266 = bitcast %struct.TYPE_28__* %265 to i8*
  %267 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %266, i8* align 8 %267, i64 32, i1 false)
  %268 = load i8*, i8** %8, align 8
  store i8* %268, i8** %4, align 8
  br label %374

269:                                              ; preds = %249
  br label %270

270:                                              ; preds = %269, %229
  store i64 0, i64* %11, align 8
  br label %271

271:                                              ; preds = %362, %270
  %272 = load i64, i64* %11, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ult i64 %272, %276
  br i1 %277, label %278, label %365

278:                                              ; preds = %271
  %279 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %280 = load i64, i64* %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %279, i64 %280
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %283, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 0
  store %struct.TYPE_27__* %284, %struct.TYPE_27__** %286, align 8
  %287 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %292 = load i64, i64* %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %291, i64 %292
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @ngx_strcmp(i32 %290, i8* %297)
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %278
  %301 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @ngx_strcmp(i32 %304, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %361

307:                                              ; preds = %300, %278
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 1
  %310 = load i8* (%struct.TYPE_28__*, i32*, i32*)*, i8* (%struct.TYPE_28__*, i32*, i32*)** %309, align 8
  %311 = icmp ne i8* (%struct.TYPE_28__*, i32*, i32*)* %310, null
  br i1 %311, label %312, label %360

312:                                              ; preds = %307
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %313, i32 0, i32 1
  %315 = load i8* (%struct.TYPE_28__*, i32*, i32*)*, i8* (%struct.TYPE_28__*, i32*, i32*)** %314, align 8
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 0
  %319 = load i32**, i32*** %318, align 8
  %320 = load i64, i64* %10, align 8
  %321 = getelementptr inbounds i32*, i32** %319, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %324 = load i64, i64* %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %323, i64 %324
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_27__*, %struct.TYPE_27__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %328, i32 0, i32 0
  %330 = load i32**, i32*** %329, align 8
  %331 = load i64, i64* %10, align 8
  %332 = getelementptr inbounds i32*, i32** %330, i64 %331
  %333 = load i32*, i32** %332, align 8
  %334 = call i8* %315(%struct.TYPE_28__* %316, i32* %322, i32* %333)
  store i8* %334, i8** %8, align 8
  %335 = load i8*, i8** %8, align 8
  %336 = load i8*, i8** @NGX_CONF_OK, align 8
  %337 = icmp ne i8* %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %312
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %340 = bitcast %struct.TYPE_28__* %339 to i8*
  %341 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 %341, i64 32, i1 false)
  %342 = load i8*, i8** %8, align 8
  store i8* %342, i8** %4, align 8
  br label %374

343:                                              ; preds = %312
  %344 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %345 = load i64, i64* %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %344, i64 %345
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 0
  %351 = load i32**, i32*** %350, align 8
  %352 = load i64, i64* %10, align 8
  %353 = getelementptr inbounds i32*, i32** %351, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %356 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %355, i32 0, i32 0
  %357 = load i32**, i32*** %356, align 8
  %358 = load i64, i64* %10, align 8
  %359 = getelementptr inbounds i32*, i32** %357, i64 %358
  store i32* %354, i32** %359, align 8
  br label %360

360:                                              ; preds = %343, %307
  br label %361

361:                                              ; preds = %360, %300
  br label %362

362:                                              ; preds = %361
  %363 = load i64, i64* %11, align 8
  %364 = add i64 %363, 1
  store i64 %364, i64* %11, align 8
  br label %271

365:                                              ; preds = %271
  br label %366

366:                                              ; preds = %365, %228
  %367 = load i64, i64* %9, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %9, align 8
  br label %213

369:                                              ; preds = %213
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %371 = bitcast %struct.TYPE_28__* %370 to i8*
  %372 = bitcast %struct.TYPE_28__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %371, i8* align 8 %372, i64 32, i1 false)
  %373 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %373, i8** %4, align 8
  br label %374

374:                                              ; preds = %369, %338, %264, %197, %172, %146, %92, %74, %24
  %375 = load i8*, i8** %4, align 8
  ret i8* %375
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
