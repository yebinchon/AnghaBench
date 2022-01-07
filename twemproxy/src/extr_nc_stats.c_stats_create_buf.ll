; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_create_buf.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_stats.c_stats_create_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { %struct.TYPE_19__, i32, %struct.TYPE_15__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.stats_pool = type { i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.stats_metric = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.stats_server = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@NC_ALIGNMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"create stats buffer of size %zu failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@NC_ENOMEM = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"stats buffer size %zu\00", align 1
@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stats*)* @stats_create_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_create_buf(%struct.stats* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stats_pool*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.stats_metric*, align 8
  %13 = alloca %struct.stats_server*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.stats_metric*, align 8
  store %struct.stats* %0, %struct.stats** %3, align 8
  store i64 20, i64* %4, align 8
  store i64 8, i64* %5, align 8
  store i64 8, i64* %6, align 8
  store i64 8, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load %struct.stats*, %struct.stats** %3, align 8
  %17 = getelementptr inbounds %struct.stats, %struct.stats* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.stats*, %struct.stats** %3, align 8
  %23 = getelementptr inbounds %struct.stats, %struct.stats* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br label %27

27:                                               ; preds = %21, %1
  %28 = phi i1 [ false, %1 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load %struct.stats*, %struct.stats** %3, align 8
  %34 = getelementptr inbounds %struct.stats, %struct.stats* %33, i32 0, i32 11
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load %struct.stats*, %struct.stats** %3, align 8
  %40 = getelementptr inbounds %struct.stats, %struct.stats* %39, i32 0, i32 10
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %8, align 8
  %48 = load %struct.stats*, %struct.stats** %3, align 8
  %49 = getelementptr inbounds %struct.stats, %struct.stats* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load %struct.stats*, %struct.stats** %3, align 8
  %55 = getelementptr inbounds %struct.stats, %struct.stats* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load %struct.stats*, %struct.stats** %3, align 8
  %64 = getelementptr inbounds %struct.stats, %struct.stats* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load %struct.stats*, %struct.stats** %3, align 8
  %70 = getelementptr inbounds %struct.stats, %struct.stats* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load %struct.stats*, %struct.stats** %3, align 8
  %79 = getelementptr inbounds %struct.stats, %struct.stats* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load %struct.stats*, %struct.stats** %3, align 8
  %91 = getelementptr inbounds %struct.stats, %struct.stats* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %8, align 8
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %8, align 8
  %98 = add i64 %97, %96
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %8, align 8
  %102 = load %struct.stats*, %struct.stats** %3, align 8
  %103 = getelementptr inbounds %struct.stats, %struct.stats* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %8, align 8
  %114 = load %struct.stats*, %struct.stats** %3, align 8
  %115 = getelementptr inbounds %struct.stats, %struct.stats* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %8, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %126

126:                                              ; preds = %228, %27
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.stats*, %struct.stats** %3, align 8
  %129 = getelementptr inbounds %struct.stats, %struct.stats* %128, i32 0, i32 1
  %130 = call i64 @array_n(i32* %129)
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %231

132:                                              ; preds = %126
  %133 = load %struct.stats*, %struct.stats** %3, align 8
  %134 = getelementptr inbounds %struct.stats, %struct.stats* %133, i32 0, i32 1
  %135 = load i64, i64* %9, align 8
  %136 = call i8* @array_get(i32* %134, i64 %135)
  %137 = bitcast i8* %136 to %struct.stats_pool*
  store %struct.stats_pool* %137, %struct.stats_pool** %10, align 8
  %138 = load %struct.stats_pool*, %struct.stats_pool** %10, align 8
  %139 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %8, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* %8, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %8, align 8
  store i64 0, i64* %11, align 8
  br label %147

147:                                              ; preds = %171, %132
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.stats_pool*, %struct.stats_pool** %10, align 8
  %150 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %149, i32 0, i32 1
  %151 = call i64 @array_n(i32* %150)
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %147
  %154 = load %struct.stats_pool*, %struct.stats_pool** %10, align 8
  %155 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %154, i32 0, i32 1
  %156 = load i64, i64* %11, align 8
  %157 = call i8* @array_get(i32* %155, i64 %156)
  %158 = bitcast i8* %157 to %struct.stats_metric*
  store %struct.stats_metric* %158, %struct.stats_metric** %12, align 8
  %159 = load %struct.stats_metric*, %struct.stats_metric** %12, align 8
  %160 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %163, %162
  store i64 %164, i64* %8, align 8
  %165 = load i64, i64* %4, align 8
  %166 = load i64, i64* %8, align 8
  %167 = add i64 %166, %165
  store i64 %167, i64* %8, align 8
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = add i64 %169, %168
  store i64 %170, i64* %8, align 8
  br label %171

171:                                              ; preds = %153
  %172 = load i64, i64* %11, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %11, align 8
  br label %147

174:                                              ; preds = %147
  store i64 0, i64* %11, align 8
  br label %175

175:                                              ; preds = %224, %174
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.stats_pool*, %struct.stats_pool** %10, align 8
  %178 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %177, i32 0, i32 0
  %179 = call i64 @array_n(i32* %178)
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %227

181:                                              ; preds = %175
  %182 = load %struct.stats_pool*, %struct.stats_pool** %10, align 8
  %183 = getelementptr inbounds %struct.stats_pool, %struct.stats_pool* %182, i32 0, i32 0
  %184 = load i64, i64* %11, align 8
  %185 = call i8* @array_get(i32* %183, i64 %184)
  %186 = bitcast i8* %185 to %struct.stats_server*
  store %struct.stats_server* %186, %struct.stats_server** %13, align 8
  %187 = load %struct.stats_server*, %struct.stats_server** %13, align 8
  %188 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* %8, align 8
  %192 = add i64 %191, %190
  store i64 %192, i64* %8, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* %8, align 8
  %195 = add i64 %194, %193
  store i64 %195, i64* %8, align 8
  store i64 0, i64* %14, align 8
  br label %196

196:                                              ; preds = %220, %181
  %197 = load i64, i64* %14, align 8
  %198 = load %struct.stats_server*, %struct.stats_server** %13, align 8
  %199 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %198, i32 0, i32 0
  %200 = call i64 @array_n(i32* %199)
  %201 = icmp slt i64 %197, %200
  br i1 %201, label %202, label %223

202:                                              ; preds = %196
  %203 = load %struct.stats_server*, %struct.stats_server** %13, align 8
  %204 = getelementptr inbounds %struct.stats_server, %struct.stats_server* %203, i32 0, i32 0
  %205 = load i64, i64* %14, align 8
  %206 = call i8* @array_get(i32* %204, i64 %205)
  %207 = bitcast i8* %206 to %struct.stats_metric*
  store %struct.stats_metric* %207, %struct.stats_metric** %15, align 8
  %208 = load %struct.stats_metric*, %struct.stats_metric** %15, align 8
  %209 = getelementptr inbounds %struct.stats_metric, %struct.stats_metric* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %8, align 8
  %214 = load i64, i64* %4, align 8
  %215 = load i64, i64* %8, align 8
  %216 = add i64 %215, %214
  store i64 %216, i64* %8, align 8
  %217 = load i64, i64* %5, align 8
  %218 = load i64, i64* %8, align 8
  %219 = add i64 %218, %217
  store i64 %219, i64* %8, align 8
  br label %220

220:                                              ; preds = %202
  %221 = load i64, i64* %14, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %14, align 8
  br label %196

223:                                              ; preds = %196
  br label %224

224:                                              ; preds = %223
  %225 = load i64, i64* %11, align 8
  %226 = add nsw i64 %225, 1
  store i64 %226, i64* %11, align 8
  br label %175

227:                                              ; preds = %175
  br label %228

228:                                              ; preds = %227
  %229 = load i64, i64* %9, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %9, align 8
  br label %126

231:                                              ; preds = %126
  %232 = load i64, i64* %8, align 8
  %233 = add i64 %232, 2
  store i64 %233, i64* %8, align 8
  %234 = load i64, i64* %8, align 8
  %235 = load i32, i32* @NC_ALIGNMENT, align 4
  %236 = call i64 @NC_ALIGN(i64 %234, i32 %235)
  store i64 %236, i64* %8, align 8
  %237 = load i64, i64* %8, align 8
  %238 = call i32* @nc_alloc(i64 %237)
  %239 = load %struct.stats*, %struct.stats** %3, align 8
  %240 = getelementptr inbounds %struct.stats, %struct.stats* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  store i32* %238, i32** %241, align 8
  %242 = load %struct.stats*, %struct.stats** %3, align 8
  %243 = getelementptr inbounds %struct.stats, %struct.stats* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %253

247:                                              ; preds = %231
  %248 = load i64, i64* %8, align 8
  %249 = load i32, i32* @errno, align 4
  %250 = call i32 @strerror(i32 %249)
  %251 = call i32 @log_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %248, i32 %250)
  %252 = load i32, i32* @NC_ENOMEM, align 4
  store i32 %252, i32* %2, align 4
  br label %262

253:                                              ; preds = %231
  %254 = load i64, i64* %8, align 8
  %255 = load %struct.stats*, %struct.stats** %3, align 8
  %256 = getelementptr inbounds %struct.stats, %struct.stats* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  store i64 %254, i64* %257, align 8
  %258 = load i32, i32* @LOG_DEBUG, align 4
  %259 = load i64, i64* %8, align 8
  %260 = call i32 @log_debug(i32 %258, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %259)
  %261 = load i32, i32* @NC_OK, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %253, %247
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @array_n(i32*) #1

declare dso_local i8* @array_get(i32*, i64) #1

declare dso_local i64 @NC_ALIGN(i64, i32) #1

declare dso_local i32* @nc_alloc(i64) #1

declare dso_local i32 @log_error(i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @log_debug(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
