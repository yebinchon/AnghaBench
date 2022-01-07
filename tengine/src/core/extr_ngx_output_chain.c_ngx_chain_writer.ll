; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_output_chain.c_ngx_chain_writer.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_output_chain.c_ngx_chain_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_19__**, %struct.TYPE_20__*, i32, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_19__* (%struct.TYPE_17__*, %struct.TYPE_19__*, i32)* }

@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"zero size buf in chain writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"negative size buf in chain writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"chain writer buf fl:%d s:%uO\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"chain writer in: %p\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"chain writer out: %p\00", align 1
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_19__* null, align 8
@NGX_AGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_chain_writer(i8* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %6, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %192, %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = icmp ne %struct.TYPE_19__* %18, null
  br i1 %19, label %20, label %196

20:                                               ; preds = %17
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = call i64 @ngx_buf_size(%struct.TYPE_16__* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %86

26:                                               ; preds = %20
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = call i32 @ngx_buf_special(%struct.TYPE_16__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %86, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @NGX_LOG_ALERT, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ngx_log_error(i32 %33, i32 %38, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48, i32 %53, i32 %58, i32 %63, i32 %68, i32 %73, i32 %78, i32 %83)
  %85 = call i32 (...) @ngx_debug_point()
  br label %192

86:                                               ; preds = %26, %20
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %88, align 8
  %90 = call i64 @ngx_buf_size(%struct.TYPE_16__* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %147

92:                                               ; preds = %86
  %93 = load i32, i32* @NGX_LOG_ALERT, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ngx_log_error(i32 %93, i32 %98, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %108, i32 %113, i32 %118, i32 %123, i32 %128, i32 %133, i32 %138, i32 %143)
  %145 = call i32 (...) @ngx_debug_point()
  %146 = load i32, i32* @NGX_ERROR, align 4
  store i32 %146, i32* %3, align 4
  br label %427

147:                                              ; preds = %86
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %149, align 8
  %151 = call i64 @ngx_buf_size(%struct.TYPE_16__* %150)
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %7, align 8
  %154 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = call i64 @ngx_buf_size(%struct.TYPE_16__* %165)
  %167 = call i32 @ngx_log_debug2(i32 %154, i32 %157, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %162, i64 %166)
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = call %struct.TYPE_19__* @ngx_alloc_chain_link(%struct.TYPE_20__* %170)
  store %struct.TYPE_19__* %171, %struct.TYPE_19__** %8, align 8
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %173 = icmp eq %struct.TYPE_19__* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %147
  %175 = load i32, i32* @NGX_ERROR, align 4
  store i32 %175, i32* %3, align 4
  br label %427

176:                                              ; preds = %147
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  store %struct.TYPE_16__* %179, %struct.TYPE_16__** %181, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %183, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %186, align 8
  store %struct.TYPE_19__* %184, %struct.TYPE_19__** %187, align 8
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  store %struct.TYPE_19__** %189, %struct.TYPE_19__*** %191, align 8
  br label %192

192:                                              ; preds = %176, %32
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  store %struct.TYPE_19__* %195, %struct.TYPE_19__** %5, align 8
  br label %17

196:                                              ; preds = %17
  %197 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %202, align 8
  %204 = call i32 @ngx_log_debug1(i32 %197, i32 %200, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_19__* %203)
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  store %struct.TYPE_19__* %207, %struct.TYPE_19__** %8, align 8
  br label %208

208:                                              ; preds = %345, %196
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = icmp ne %struct.TYPE_19__* %209, null
  br i1 %210, label %211, label %349

211:                                              ; preds = %208
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %213, align 8
  %215 = call i64 @ngx_buf_size(%struct.TYPE_16__* %214)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %277

217:                                              ; preds = %211
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = call i32 @ngx_buf_special(%struct.TYPE_16__* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %277, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @NGX_LOG_ALERT, align 4
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 6
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ngx_log_error(i32 %224, i32 %229, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %234, i32 %239, i32 %244, i32 %249, i32 %254, i32 %259, i32 %264, i32 %269, i32 %274)
  %276 = call i32 (...) @ngx_debug_point()
  br label %345

277:                                              ; preds = %217, %211
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %279, align 8
  %281 = call i64 @ngx_buf_size(%struct.TYPE_16__* %280)
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %283, label %338

283:                                              ; preds = %277
  %284 = load i32, i32* @NGX_LOG_ALERT, align 4
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 8
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %310, i32 0, i32 1
  %312 = load %struct.TYPE_16__*, %struct.TYPE_16__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @ngx_log_error(i32 %284, i32 %289, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %294, i32 %299, i32 %304, i32 %309, i32 %314, i32 %319, i32 %324, i32 %329, i32 %334)
  %336 = call i32 (...) @ngx_debug_point()
  %337 = load i32, i32* @NGX_ERROR, align 4
  store i32 %337, i32* %3, align 4
  br label %427

338:                                              ; preds = %277
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %340, align 8
  %342 = call i64 @ngx_buf_size(%struct.TYPE_16__* %341)
  %343 = load i64, i64* %7, align 8
  %344 = add nsw i64 %343, %342
  store i64 %344, i64* %7, align 8
  br label %345

345:                                              ; preds = %338, %223
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %347, align 8
  store %struct.TYPE_19__* %348, %struct.TYPE_19__** %8, align 8
  br label %208

349:                                              ; preds = %208
  %350 = load i64, i64* %7, align 8
  %351 = icmp eq i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %349
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %352
  %358 = load i32, i32* @NGX_OK, align 4
  store i32 %358, i32* %3, align 4
  br label %427

359:                                              ; preds = %352, %349
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 2
  %362 = load %struct.TYPE_19__* (%struct.TYPE_17__*, %struct.TYPE_19__*, i32)*, %struct.TYPE_19__* (%struct.TYPE_17__*, %struct.TYPE_19__*, i32)** %361, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_19__*, %struct.TYPE_19__** %365, align 8
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = call %struct.TYPE_19__* %362(%struct.TYPE_17__* %363, %struct.TYPE_19__* %366, i32 %369)
  store %struct.TYPE_19__* %370, %struct.TYPE_19__** %10, align 8
  %371 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %372 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %376 = call i32 @ngx_log_debug1(i32 %371, i32 %374, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_19__* %375)
  %377 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** @NGX_CHAIN_ERROR, align 8
  %379 = icmp eq %struct.TYPE_19__* %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %359
  %381 = load i32, i32* @NGX_ERROR, align 4
  store i32 %381, i32* %3, align 4
  br label %427

382:                                              ; preds = %359
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_19__*, %struct.TYPE_19__** %384, align 8
  store %struct.TYPE_19__* %385, %struct.TYPE_19__** %8, align 8
  br label %386

386:                                              ; preds = %395, %382
  %387 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %388 = icmp ne %struct.TYPE_19__* %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %391 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %392 = icmp ne %struct.TYPE_19__* %390, %391
  br label %393

393:                                              ; preds = %389, %386
  %394 = phi i1 [ false, %386 ], [ %392, %389 ]
  br i1 %394, label %395, label %405

395:                                              ; preds = %393
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %396, %struct.TYPE_19__** %9, align 8
  %397 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %397, i32 0, i32 0
  %399 = load %struct.TYPE_19__*, %struct.TYPE_19__** %398, align 8
  store %struct.TYPE_19__* %399, %struct.TYPE_19__** %8, align 8
  %400 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %400, i32 0, i32 2
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %401, align 8
  %403 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %404 = call i32 @ngx_free_chain(%struct.TYPE_20__* %402, %struct.TYPE_19__* %403)
  br label %386

405:                                              ; preds = %393
  %406 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %407 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %407, i32 0, i32 0
  store %struct.TYPE_19__* %406, %struct.TYPE_19__** %408, align 8
  %409 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %409, i32 0, i32 0
  %411 = load %struct.TYPE_19__*, %struct.TYPE_19__** %410, align 8
  %412 = icmp eq %struct.TYPE_19__* %411, null
  br i1 %412, label %413, label %425

413:                                              ; preds = %405
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %416, i32 0, i32 1
  store %struct.TYPE_19__** %415, %struct.TYPE_19__*** %417, align 8
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %413
  %423 = load i32, i32* @NGX_OK, align 4
  store i32 %423, i32* %3, align 4
  br label %427

424:                                              ; preds = %413
  br label %425

425:                                              ; preds = %424, %405
  %426 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %426, i32* %3, align 4
  br label %427

427:                                              ; preds = %425, %422, %380, %357, %283, %174, %92
  %428 = load i32, i32* %3, align 4
  ret i32 %428
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_buf_special(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

declare dso_local %struct.TYPE_19__* @ngx_alloc_chain_link(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_free_chain(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
