; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_slab_stat/extr_ngx_http_slab_stat_module.c_ngx_http_slab_stat_buf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_slab_stat/extr_ngx_http_slab_stat_module.c_ngx_http_slab_stat_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, i32*, i32* }
%struct.TYPE_17__ = type { i32, i64, i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_18__* }

@ngx_cycle = common dso_local global %struct.TYPE_12__* null, align 8
@ngx_pagesize_shift = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"* shared memory: %V\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"total:%12z(KB) free:%12z(KB) size:%12z(KB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pages:%12z(KB) start:%p end:%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"slot:%12z(Bytes) total:%12z used:%12z reqs:%12z fails:%12z\0A\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_SLAB_PAGE_ENTRY_FORMAT = common dso_local global i32 0, align 4
@NGX_SLAB_PAGE_ENTRY_SIZE = common dso_local global i64 0, align 8
@NGX_SLAB_SHM_FORMAT = common dso_local global i32 0, align 4
@NGX_SLAB_SHM_SIZE = common dso_local global i64 0, align 8
@NGX_SLAB_SLOT_ENTRY_FORMAT = common dso_local global i32 0, align 4
@NGX_SLAB_SLOT_ENTRY_SIZE = common dso_local global i64 0, align 8
@NGX_SLAB_SUMMARY_FORMAT = common dso_local global i32 0, align 4
@NGX_SLAB_SUMMARY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_21__*)* @ngx_http_slab_stat_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_slab_stat_buf(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i64 0, i64* %7, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %16, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %22 = load volatile %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %102, %2
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load volatile i64, i64* %26, align 8
  %28 = icmp uge i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = load volatile %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %105

35:                                               ; preds = %29
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 2
  %38 = load volatile %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %16, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load volatile %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %35, %23
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 18, %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 67
  store i64 %54, i64* %7, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %13, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = call i32 @ngx_shmtx_lock(i32* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %14, align 8
  br label %69

69:                                               ; preds = %77, %42
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 6
  %73 = icmp ne %struct.TYPE_18__* %70, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 67
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %14, align 8
  br label %69

81:                                               ; preds = %69
  %82 = load i32, i32* @ngx_pagesize_shift, align 4
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %11, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  %90 = call i32 @ngx_shmtx_unlock(i32* %89)
  store i64 0, i64* %10, align 8
  br label %91

91:                                               ; preds = %98, %81
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 99
  store i64 %97, i64* %7, align 8
  br label %98

98:                                               ; preds = %95
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %91

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %23

105:                                              ; preds = %34
  %106 = load i32*, i32** %4, align 8
  %107 = load i64, i64* %7, align 8
  %108 = mul i64 %107, 2
  %109 = call i32* @ngx_palloc(i32* %106, i64 %108)
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @NGX_ERROR, align 4
  store i32 %113, i32* %3, align 4
  br label %284

114:                                              ; preds = %105
  %115 = load i32*, i32** %6, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 3
  store i32* %115, i32** %117, align 8
  %118 = load i32, i32* @ngx_pagesize_shift, align 4
  %119 = shl i32 1, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %8, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  store %struct.TYPE_20__* %123, %struct.TYPE_20__** %16, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load volatile %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  store %struct.TYPE_19__* %126, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %127

127:                                              ; preds = %272, %114
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load volatile i64, i64* %130, align 8
  %132 = icmp uge i64 %128, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 2
  %136 = load volatile %struct.TYPE_20__*, %struct.TYPE_20__** %135, align 8
  %137 = icmp eq %struct.TYPE_20__* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %275

139:                                              ; preds = %133
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = load volatile %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  store %struct.TYPE_20__* %142, %struct.TYPE_20__** %16, align 8
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = load volatile %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  store %struct.TYPE_19__* %145, %struct.TYPE_19__** %12, align 8
  store i64 0, i64* %9, align 8
  br label %146

146:                                              ; preds = %139, %127
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %153, %struct.TYPE_17__** %13, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %156 = load i64, i64* %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 18, %161
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 1
  %168 = call i32* (i32*, i64, i32, ...) @ngx_snprintf(i32* %154, i64 %162, i32 ptrtoint ([21 x i8]* @.str to i32), %struct.TYPE_14__* %167)
  store i32* %168, i32** %6, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = call i32 @ngx_shmtx_lock(i32* %170)
  %172 = load i32*, i32** %6, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %174 = load i64, i64* %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sdiv i32 %178, 1024
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %8, align 8
  %184 = mul i64 %182, %183
  %185 = udiv i64 %184, 1024
  %186 = load i64, i64* %8, align 8
  %187 = udiv i64 %186, 1024
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = call i32* (i32*, i64, i32, ...) @ngx_snprintf(i32* %172, i64 67, i32 ptrtoint ([44 x i8]* @.str.1 to i32), i32 %179, i64 %185, i64 %187, i64 %190)
  store i32* %191, i32** %6, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 6
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %14, align 8
  br label %196

196:                                              ; preds = %216, %146
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 6
  %200 = icmp ne %struct.TYPE_18__* %197, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %196
  %202 = load i32*, i32** %6, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = mul i64 %205, %206
  %208 = udiv i64 %207, 1024
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = call i32* (i32*, i64, i32, ...) @ngx_snprintf(i32* %202, i64 67, i32 ptrtoint ([32 x i8]* @.str.2 to i32), i64 %208, i32 %211, i32 %214)
  store i32* %215, i32** %6, align 8
  br label %216

216:                                              ; preds = %201
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %218, align 8
  store %struct.TYPE_18__* %219, %struct.TYPE_18__** %14, align 8
  br label %196

220:                                              ; preds = %196
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  store %struct.TYPE_16__* %223, %struct.TYPE_16__** %15, align 8
  %224 = load i32, i32* @ngx_pagesize_shift, align 4
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %224, %227
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %230

230:                                              ; preds = %265, %220
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* %11, align 8
  %233 = icmp ult i64 %231, %232
  br i1 %233, label %234, label %268

234:                                              ; preds = %230
  %235 = load i32*, i32** %6, align 8
  %236 = load i64, i64* %10, align 8
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = add i64 %236, %240
  %242 = trunc i64 %241 to i32
  %243 = shl i32 1, %242
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %250 = load i64, i64* %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %260 = load i64, i64* %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32* (i32*, i64, i32, ...) @ngx_snprintf(i32* %235, i64 99, i32 ptrtoint ([60 x i8]* @.str.3 to i32), i32 %243, i32 %248, i32 %253, i32 %258, i32 %263)
  store i32* %264, i32** %6, align 8
  br label %265

265:                                              ; preds = %234
  %266 = load i64, i64* %10, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %10, align 8
  br label %230

268:                                              ; preds = %230
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %269, i32 0, i32 2
  %271 = call i32 @ngx_shmtx_unlock(i32* %270)
  br label %272

272:                                              ; preds = %268
  %273 = load i64, i64* %9, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %9, align 8
  br label %127

275:                                              ; preds = %138
  %276 = load i32*, i32** %6, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 2
  store i32* %276, i32** %278, align 8
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  store i32 1, i32* %280, align 8
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 1
  store i32 1, i32* %282, align 4
  %283 = load i32, i32* @NGX_OK, align 4
  store i32 %283, i32* %3, align 4
  br label %284

284:                                              ; preds = %275, %112
  %285 = load i32, i32* %3, align 4
  ret i32 %285
}

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32* @ngx_palloc(i32*, i64) #1

declare dso_local i32* @ngx_snprintf(i32*, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
