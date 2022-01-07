; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_sysguard_module/extr_ngx_http_sysguard_module.c_ngx_http_sysguard_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { double, i64, double, double, i32, double, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, double }

@NGX_DECLINED = common dso_local global i32 0, align 4
@ngx_http_sysguard_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global double 0.000000e+00, align 8
@ngx_http_sysguard_cached_load_exptime = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"http sysguard handler load: %1.3f %1.3f %V %V\00", align 1
@ngx_http_sysguard_cached_load = common dso_local global double 0.000000e+00, align 8
@NGX_HTTP_SYSGUARD_MODE_OR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"sysguard load limited, current:%1.3f conf:%1.3f\00", align 1
@NGX_HTTP_SYSGUARD_MODE_AND = common dso_local global i64 0, align 8
@ngx_http_sysguard_cached_cpuusage_exptime = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"http sysguard handler cpuusage: %d %d %V %V\00", align 1
@ngx_http_sysguard_cached_cpuusage = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"sysguard cpuusage limited, current:%d conf:%d\00", align 1
@ngx_http_sysguard_cached_mem_exptime = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"http sysguard handler swap: %i %i %V %V\00", align 1
@ngx_http_sysguard_cached_swapstat = common dso_local global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [42 x i8] c"sysguard swap limited, current:%i conf:%i\00", align 1
@NGX_CONF_UNSET_SIZE = common dso_local global i32 0, align 4
@ngx_http_sysguard_cached_free = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"http sysguard handler free: %uz %uz %V %V\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"sysguard free limited, current:%uzM conf:%uzM\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"http sysguard handler rt: %1.3f %1.3f\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"sysguard rt limited, current:%1.3f conf:%1.3f\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"sysguard cpu limited, current:%d conf:%1d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @ngx_http_sysguard_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_sysguard_handler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %18, i32* %2, align 4
  br label %565

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = load i32, i32* @ngx_http_sysguard_module, align 4
  %22 = call %struct.TYPE_17__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %20, i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %4, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %28, i32* %2, align 4
  br label %565

29:                                               ; preds = %19
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load double, double* @NGX_CONF_UNSET, align 8
  %38 = fcmp une double %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %29
  %40 = load i64, i64* @ngx_http_sysguard_cached_load_exptime, align 8
  %41 = call i64 (...) @ngx_time()
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ngx_http_sysguard_update_load(%struct.TYPE_18__* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load double, double* @ngx_http_sysguard_cached_load, align 8
  %57 = fmul double %56, 1.000000e+00
  %58 = fdiv double %57, 1.000000e+03
  %59 = fptosi double %58 to i32
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, 1.000000e+00
  %64 = fdiv double %63, 1.000000e+03
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 13
  %69 = call i32 @ngx_log_debug4(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, double %64, i32* %66, i32* %68)
  %70 = load double, double* @ngx_http_sysguard_cached_load, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load double, double* %72, align 8
  %74 = fcmp ogt double %70, %73
  br i1 %74, label %75, label %107

75:                                               ; preds = %49
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_OR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %75
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load double, double* @ngx_http_sysguard_cached_load, align 8
  %91 = fmul double %90, 1.000000e+00
  %92 = fdiv double %91, 1.000000e+03
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load double, double* %94, align 8
  %96 = fmul double %95, 1.000000e+00
  %97 = fdiv double %96, 1.000000e+03
  %98 = call i32 @ngx_log_error(i32 %84, i32 %89, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), double %92, double %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 13
  %102 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %99, i32* %101)
  store i32 %102, i32* %2, align 4
  br label %565

103:                                              ; preds = %75
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 13
  store i32* %105, i32** %10, align 8
  store i32 1, i32* %5, align 4
  br label %106

106:                                              ; preds = %103
  br label %115

107:                                              ; preds = %49
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %563

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %106
  br label %116

116:                                              ; preds = %115, %29
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load double, double* %118, align 8
  %120 = load double, double* @NGX_CONF_UNSET, align 8
  %121 = fcmp une double %119, %120
  br i1 %121, label %122, label %191

122:                                              ; preds = %116
  %123 = load i64, i64* @ngx_http_sysguard_cached_cpuusage_exptime, align 8
  %124 = call i64 (...) @ngx_time()
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ngx_http_sysguard_update_cpuusage(%struct.TYPE_18__* %127, i32 %130)
  br label %132

132:                                              ; preds = %126, %122
  %133 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load double, double* @ngx_http_sysguard_cached_cpuusage, align 8
  %140 = fptosi double %139 to i32
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 2
  %143 = load double, double* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 12
  %148 = call i32 @ngx_log_debug4(i32 %133, i32 %138, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %140, double %143, i32* %145, i32* %147)
  %149 = load double, double* @ngx_http_sysguard_cached_cpuusage, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load double, double* %151, align 8
  %153 = fcmp ogt double %149, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %132
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_OR, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %154
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load double, double* @ngx_http_sysguard_cached_cpuusage, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load double, double* %171, align 8
  %173 = call i32 @ngx_log_error(i32 %163, i32 %168, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), double %169, double %172)
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 12
  %177 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %174, i32* %176)
  store i32 %177, i32* %2, align 4
  br label %565

178:                                              ; preds = %154
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 12
  store i32* %180, i32** %10, align 8
  store i32 1, i32* %9, align 4
  br label %181

181:                                              ; preds = %178
  br label %190

182:                                              ; preds = %132
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  br label %563

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %181
  br label %191

191:                                              ; preds = %190, %116
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 3
  %194 = load double, double* %193, align 8
  %195 = load double, double* @NGX_CONF_UNSET, align 8
  %196 = fcmp une double %194, %195
  br i1 %196, label %197, label %266

197:                                              ; preds = %191
  %198 = load i64, i64* @ngx_http_sysguard_cached_mem_exptime, align 8
  %199 = call i64 (...) @ngx_time()
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %197
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 9
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @ngx_http_sysguard_update_mem(%struct.TYPE_18__* %202, i32 %205)
  br label %207

207:                                              ; preds = %201, %197
  %208 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load double, double* @ngx_http_sysguard_cached_swapstat, align 8
  %215 = fptosi double %214 to i32
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = load double, double* %217, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 11
  %223 = call i32 @ngx_log_debug4(i32 %208, i32 %213, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %215, double %218, i32* %220, i32* %222)
  %224 = load double, double* @ngx_http_sysguard_cached_swapstat, align 8
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 3
  %227 = load double, double* %226, align 8
  %228 = fcmp ogt double %224, %227
  br i1 %228, label %229, label %257

229:                                              ; preds = %207
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_OR, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %253

235:                                              ; preds = %229
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 7
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load double, double* @ngx_http_sysguard_cached_swapstat, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 3
  %247 = load double, double* %246, align 8
  %248 = call i32 @ngx_log_error(i32 %238, i32 %243, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), double %244, double %247)
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 11
  %252 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %249, i32* %251)
  store i32 %252, i32* %2, align 4
  br label %565

253:                                              ; preds = %229
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 11
  store i32* %255, i32** %10, align 8
  store i32 1, i32* %6, align 4
  br label %256

256:                                              ; preds = %253
  br label %265

257:                                              ; preds = %207
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %257
  br label %563

264:                                              ; preds = %257
  br label %265

265:                                              ; preds = %264, %256
  br label %266

266:                                              ; preds = %265, %191
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @NGX_CONF_UNSET_SIZE, align 4
  %271 = icmp ne i32 %269, %270
  br i1 %271, label %272, label %352

272:                                              ; preds = %266
  %273 = load i64, i64* @ngx_http_sysguard_cached_mem_exptime, align 8
  %274 = call i64 (...) @ngx_time()
  %275 = icmp slt i64 %273, %274
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @ngx_http_sysguard_update_mem(%struct.TYPE_18__* %277, i32 %280)
  br label %282

282:                                              ; preds = %276, %272
  %283 = load i32, i32* @ngx_http_sysguard_cached_free, align 4
  %284 = load i32, i32* @NGX_CONF_UNSET_SIZE, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %351

286:                                              ; preds = %282
  %287 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @ngx_http_sysguard_cached_free, align 4
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = sitofp i32 %296 to double
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 10
  %302 = call i32 @ngx_log_debug4(i32 %287, i32 %292, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %293, double %297, i32* %299, i32* %301)
  %303 = load i32, i32* @ngx_http_sysguard_cached_free, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = icmp slt i32 %303, %306
  br i1 %307, label %308, label %342

308:                                              ; preds = %286
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_OR, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %338

314:                                              ; preds = %308
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @ngx_http_sysguard_cached_free, align 4
  %324 = sdiv i32 %323, 1024
  %325 = sdiv i32 %324, 1024
  %326 = sitofp i32 %325 to double
  %327 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  %330 = sdiv i32 %329, 1024
  %331 = sdiv i32 %330, 1024
  %332 = sitofp i32 %331 to double
  %333 = call i32 @ngx_log_error(i32 %317, i32 %322, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), double %326, double %332)
  %334 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 10
  %337 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %334, i32* %336)
  store i32 %337, i32* %2, align 4
  br label %565

338:                                              ; preds = %308
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 10
  store i32* %340, i32** %10, align 8
  store i32 1, i32* %7, align 4
  br label %341

341:                                              ; preds = %338
  br label %350

342:                                              ; preds = %286
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %563

349:                                              ; preds = %342
  br label %350

350:                                              ; preds = %349, %341
  br label %351

351:                                              ; preds = %350, %282
  br label %352

352:                                              ; preds = %351, %266
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 5
  %355 = load double, double* %354, align 8
  %356 = load double, double* @NGX_CONF_UNSET, align 8
  %357 = fcmp une double %355, %356
  br i1 %357, label %358, label %446

358:                                              ; preds = %352
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 6
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = call i64 (...) @ngx_time()
  %365 = icmp slt i64 %363, %364
  br i1 %365, label %366, label %372

366:                                              ; preds = %358
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 9
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @ngx_http_sysguard_update_rt(%struct.TYPE_18__* %367, i32 %370)
  br label %372

372:                                              ; preds = %366, %358
  %373 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %374 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %374, i32 0, i32 0
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %379, i32 0, i32 6
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 1
  %383 = load double, double* %382, align 8
  %384 = fmul double %383, 1.000000e+00
  %385 = fdiv double %384, 1.000000e+03
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 5
  %388 = load double, double* %387, align 8
  %389 = fmul double %388, 1.000000e+00
  %390 = fdiv double %389, 1.000000e+03
  %391 = call i32 @ngx_log_debug2(i32 %373, i32 %378, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), double %385, double %390)
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 6
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 1
  %396 = load double, double* %395, align 8
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 5
  %399 = load double, double* %398, align 8
  %400 = fcmp ogt double %396, %399
  br i1 %400, label %401, label %437

401:                                              ; preds = %372
  %402 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_OR, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %433

407:                                              ; preds = %401
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %416, i32 0, i32 6
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 1
  %420 = load double, double* %419, align 8
  %421 = fmul double %420, 1.000000e+00
  %422 = fdiv double %421, 1.000000e+03
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 5
  %425 = load double, double* %424, align 8
  %426 = fmul double %425, 1.000000e+00
  %427 = fdiv double %426, 1.000000e+03
  %428 = call i32 @ngx_log_error(i32 %410, i32 %415, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), double %422, double %427)
  %429 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %430 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %430, i32 0, i32 8
  %432 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %429, i32* %431)
  store i32 %432, i32* %2, align 4
  br label %565

433:                                              ; preds = %401
  %434 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %434, i32 0, i32 8
  store i32* %435, i32** %10, align 8
  store i32 1, i32* %8, align 4
  br label %436

436:                                              ; preds = %433
  br label %445

437:                                              ; preds = %372
  %438 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %439 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %437
  br label %563

444:                                              ; preds = %437
  br label %445

445:                                              ; preds = %444, %436
  br label %446

446:                                              ; preds = %445, %352
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @NGX_HTTP_SYSGUARD_MODE_AND, align 8
  %451 = icmp eq i64 %449, %450
  br i1 %451, label %452, label %562

452:                                              ; preds = %446
  %453 = load i32*, i32** %10, align 8
  %454 = icmp ne i32* %453, null
  br i1 %454, label %455, label %562

455:                                              ; preds = %452
  %456 = load i32, i32* %5, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %476

458:                                              ; preds = %455
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %459, i32 0, i32 7
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 0
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load double, double* @ngx_http_sysguard_cached_load, align 8
  %468 = fmul double %467, 1.000000e+00
  %469 = fdiv double %468, 1.000000e+03
  %470 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %470, i32 0, i32 0
  %472 = load double, double* %471, align 8
  %473 = fmul double %472, 1.000000e+00
  %474 = fdiv double %473, 1.000000e+03
  %475 = call i32 @ngx_log_error(i32 %461, i32 %466, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), double %469, double %474)
  br label %476

476:                                              ; preds = %458, %455
  %477 = load i32, i32* %9, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %493

479:                                              ; preds = %476
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 7
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %483, i32 0, i32 0
  %485 = load %struct.TYPE_16__*, %struct.TYPE_16__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load double, double* @ngx_http_sysguard_cached_cpuusage, align 8
  %489 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %489, i32 0, i32 2
  %491 = load double, double* %490, align 8
  %492 = call i32 @ngx_log_error(i32 %482, i32 %487, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), double %488, double %491)
  br label %493

493:                                              ; preds = %479, %476
  %494 = load i32, i32* %6, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %510

496:                                              ; preds = %493
  %497 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %500, i32 0, i32 0
  %502 = load %struct.TYPE_16__*, %struct.TYPE_16__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 4
  %505 = load double, double* @ngx_http_sysguard_cached_swapstat, align 8
  %506 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %507 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %506, i32 0, i32 3
  %508 = load double, double* %507, align 8
  %509 = call i32 @ngx_log_error(i32 %499, i32 %504, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), double %505, double %508)
  br label %510

510:                                              ; preds = %496, %493
  %511 = load i32, i32* %7, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %533

513:                                              ; preds = %510
  %514 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 7
  %516 = load i32, i32* %515, align 8
  %517 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %518 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_16__*, %struct.TYPE_16__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @ngx_http_sysguard_cached_free, align 4
  %523 = sdiv i32 %522, 1024
  %524 = sdiv i32 %523, 1024
  %525 = sitofp i32 %524 to double
  %526 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %526, i32 0, i32 4
  %528 = load i32, i32* %527, align 8
  %529 = sdiv i32 %528, 1024
  %530 = sdiv i32 %529, 1024
  %531 = sitofp i32 %530 to double
  %532 = call i32 @ngx_log_error(i32 %516, i32 %521, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), double %525, double %531)
  br label %533

533:                                              ; preds = %513, %510
  %534 = load i32, i32* %8, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %558

536:                                              ; preds = %533
  %537 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %538 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %537, i32 0, i32 7
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %540, i32 0, i32 0
  %542 = load %struct.TYPE_16__*, %struct.TYPE_16__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %545, i32 0, i32 6
  %547 = load %struct.TYPE_14__*, %struct.TYPE_14__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %547, i32 0, i32 1
  %549 = load double, double* %548, align 8
  %550 = fmul double %549, 1.000000e+00
  %551 = fdiv double %550, 1.000000e+03
  %552 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %552, i32 0, i32 5
  %554 = load double, double* %553, align 8
  %555 = fmul double %554, 1.000000e+00
  %556 = fdiv double %555, 1.000000e+03
  %557 = call i32 @ngx_log_error(i32 %539, i32 %544, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), double %551, double %556)
  br label %558

558:                                              ; preds = %536, %533
  %559 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %560 = load i32*, i32** %10, align 8
  %561 = call i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__* %559, i32* %560)
  store i32 %561, i32* %2, align 4
  br label %565

562:                                              ; preds = %452, %446
  br label %563

563:                                              ; preds = %562, %443, %348, %263, %188, %113
  %564 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %564, i32* %2, align 4
  br label %565

565:                                              ; preds = %563, %558, %407, %314, %235, %160, %81, %27, %17
  %566 = load i32, i32* %2, align 4
  ret i32 %566
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_http_sysguard_update_load(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, double, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, double, double) #1

declare dso_local i32 @ngx_http_sysguard_do_redirect(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @ngx_http_sysguard_update_cpuusage(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_sysguard_update_mem(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_sysguard_update_rt(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
