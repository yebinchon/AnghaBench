; ModuleID = '/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_start.c'
source_filename = "/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_28__*)*, %struct.TYPE_22__ }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_20__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_23__, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_26__** }

@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"start procs processes\00", align 1
@ngx_procs_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_CMD_OPEN_CHANNEL = common dso_local global i32 0, align 4
@ngx_proc_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_PROCESS_JUST_RESPAWN = common dso_local global i32 0, align 4
@NGX_PROCESS_RESPAWN = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_20__** null, align 8
@NGX_PROC_MODULE = common dso_local global i64 0, align 8
@NGX_PROCESS_NORESPAWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"start process %V\00", align 1
@ngx_procs_cycle = common dso_local global i32 0, align 4
@ngx_processes = common dso_local global %struct.TYPE_19__* null, align 8
@ngx_process_slot = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_procs_start(%struct.TYPE_28__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_29__, align 8
  %12 = alloca %struct.TYPE_27__**, align 8
  %13 = alloca %struct.TYPE_26__**, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %16, i32 %19, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ngx_procs_module, align 4
  %25 = call i32* @ngx_get_conf(i32 %23, i32 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @NGX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %270

29:                                               ; preds = %2
  %30 = load i32, i32* @NGX_CMD_OPEN_CHANNEL, align 4
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ngx_proc_core_module, align 4
  %36 = call %struct.TYPE_25__* @ngx_proc_get_main_conf(i32 %34, i32 %35)
  store %struct.TYPE_25__* %36, %struct.TYPE_25__** %15, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %39, align 8
  store %struct.TYPE_26__** %40, %struct.TYPE_26__*** %13, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 8, %48
  %50 = trunc i64 %49 to i32
  %51 = call i8* @ngx_pcalloc(i32 %43, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_27__**
  store %struct.TYPE_27__** %52, %struct.TYPE_27__*** %12, align 8
  %53 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %54 = icmp eq %struct.TYPE_27__** %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %29
  %56 = load i32, i32* @NGX_ERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %270

57:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %58
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @ngx_pcalloc(i32 %69, i32 16)
  %71 = bitcast i8* %70 to %struct.TYPE_27__*
  %72 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %72, i64 %73
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %74, align 8
  %75 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %75, i64 %76
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %77, align 8
  %79 = icmp eq %struct.TYPE_27__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* @NGX_ERROR, align 4
  store i32 %81, i32* %3, align 4
  br label %270

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %9, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %9, align 8
  br label %58

86:                                               ; preds = %58
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @NGX_PROCESS_JUST_RESPAWN, align 4
  br label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @NGX_PROCESS_RESPAWN, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  store i32 %94, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %95

95:                                               ; preds = %265, %93
  %96 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %96, i64 %97
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %98, align 8
  %100 = icmp ne %struct.TYPE_20__* %99, null
  br i1 %100, label %101, label %268

101:                                              ; preds = %95
  %102 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %103 = load i64, i64* %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %102, i64 %103
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @NGX_PROC_MODULE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %265

111:                                              ; preds = %101
  %112 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %112, i64 %113
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %14, align 8
  store i64 0, i64* %9, align 8
  br label %118

118:                                              ; preds = %261, %111
  %119 = load i64, i64* %9, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %119, %124
  br i1 %125, label %126, label %264

126:                                              ; preds = %118
  %127 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %127, i64 %128
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @ngx_strcmp(i64 %133, i32 %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %260

140:                                              ; preds = %126
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %142, align 8
  %144 = icmp ne i32 (%struct.TYPE_28__*)* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %140
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %147, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %150 = call i32 %148(%struct.TYPE_28__* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @NGX_OK, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  br label %264

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %140
  %157 = load i32, i32* %5, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %170

159:                                              ; preds = %156
  %160 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %160, i64 %161
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @NGX_PROCESS_JUST_RESPAWN, align 4
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %167, %159
  br label %183

170:                                              ; preds = %156
  %171 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %171, i64 %172
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i32, i32* @NGX_PROCESS_RESPAWN, align 4
  store i32 %179, i32* %7, align 4
  br label %182

180:                                              ; preds = %170
  %181 = load i32, i32* @NGX_PROCESS_NORESPAWN, align 4
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %180, %178
  br label %183

183:                                              ; preds = %182, %169
  store i64 0, i64* %10, align 8
  br label %184

184:                                              ; preds = %256, %183
  %185 = load i64, i64* %10, align 8
  %186 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %186, i64 %187
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ult i64 %185, %191
  br i1 %192, label %193, label %259

193:                                              ; preds = %184
  %194 = load %struct.TYPE_20__**, %struct.TYPE_20__*** @ngx_modules, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %194, i64 %195
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %199 = load i64, i64* %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %198, i64 %199
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 1
  store %struct.TYPE_20__* %197, %struct.TYPE_20__** %202, align 8
  %203 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %203, i64 %204
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %205, align 8
  %207 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %208 = load i64, i64* %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %207, i64 %208
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 0
  store %struct.TYPE_26__* %206, %struct.TYPE_26__** %211, align 8
  %212 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %217 = load i64, i64* %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %216, i64 %217
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 1
  %221 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %212, i32 %215, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_23__* %220)
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %223 = load i32, i32* @ngx_procs_cycle, align 4
  %224 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %12, align 8
  %225 = load i64, i64* %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %224, i64 %225
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %226, align 8
  %228 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %229 = load i64, i64* %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %228, i64 %229
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = inttoptr i64 %234 to i8*
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @ngx_spawn_process(%struct.TYPE_28__* %222, i32 %223, %struct.TYPE_27__* %227, i8* %235, i32 %236)
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ngx_processes, align 8
  %239 = load i64, i64* @ngx_process_slot, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %238, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 2
  store i32 %242, i32* %243, align 4
  %244 = load i64, i64* @ngx_process_slot, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  store i64 %244, i64* %245, align 8
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ngx_processes, align 8
  %247 = load i64, i64* @ngx_process_slot, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 1
  store i32 %252, i32* %253, align 8
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %255 = call i32 @ngx_procs_pass_open_channel(%struct.TYPE_28__* %254, %struct.TYPE_29__* %11)
  br label %256

256:                                              ; preds = %193
  %257 = load i64, i64* %10, align 8
  %258 = add i64 %257, 1
  store i64 %258, i64* %10, align 8
  br label %184

259:                                              ; preds = %184
  br label %260

260:                                              ; preds = %259, %126
  br label %261

261:                                              ; preds = %260
  %262 = load i64, i64* %9, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %9, align 8
  br label %118

264:                                              ; preds = %154, %118
  br label %265

265:                                              ; preds = %264, %110
  %266 = load i64, i64* %8, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %8, align 8
  br label %95

268:                                              ; preds = %95
  %269 = load i32, i32* @NGX_OK, align 4
  store i32 %269, i32* %3, align 4
  br label %270

270:                                              ; preds = %268, %80, %55, %27
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_get_conf(i32, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_proc_get_main_conf(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_strcmp(i64, i32) #1

declare dso_local i32 @ngx_spawn_process(%struct.TYPE_28__*, i32, %struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @ngx_procs_pass_open_channel(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
