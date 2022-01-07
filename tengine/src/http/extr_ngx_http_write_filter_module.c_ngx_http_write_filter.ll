; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_write_filter_module.c_ngx_http_write_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_write_filter_module.c_ngx_http_write_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i64, i32, i32*, %struct.TYPE_26__*, i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i64, %struct.TYPE_22__*, i32, %struct.TYPE_26__* (%struct.TYPE_25__*, %struct.TYPE_26__*, i64)*, i64 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_24__ = type { i64, i32, i32, i64 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"write old buf t:%d f:%d %p, pos %p, size: %z file: %O, size: %O\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"zero size buf in writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"negative size buf in writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"write new buf t:%d f:%d %p, pos %p, size: %z file: %O, size: %O\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"http write filter: l:%ui f:%ui s:%O\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_WRITE_BUFFERED = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOWLEVEL_BUFFERED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"the http output chain is empty\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"http write filter limit %O\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"http write filter %p\00", align 1
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_26__* null, align 8
@ngx_pagesize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_write_filter(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_26__**, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  store %struct.TYPE_25__* %22, %struct.TYPE_25__** %18, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %3, align 8
  br label %888

29:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 6
  store %struct.TYPE_26__** %31, %struct.TYPE_26__*** %16, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %33, align 8
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %14, align 8
  br label %35

35:                                               ; preds = %254, %29
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %37 = icmp ne %struct.TYPE_26__* %36, null
  br i1 %37, label %38, label %258

38:                                               ; preds = %35
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 0
  store %struct.TYPE_26__** %40, %struct.TYPE_26__*** %16, align 8
  %41 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %69, %74
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %85, %90
  %92 = call i32 @ngx_log_debug7(i32 %41, i32 %44, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %59, i64 %64, i64 %75, i64 %80, i64 %91)
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = call i64 @ngx_buf_size(%struct.TYPE_21__* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %157

98:                                               ; preds = %38
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %100, align 8
  %102 = call i32 @ngx_buf_special(%struct.TYPE_21__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %157, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @NGX_LOG_ALERT, align 4
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 11
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 9
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 8
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %105, i32 %108, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %113, i64 %118, i32 %123, i32 %128, i64 %133, i64 %138, i32 %143, i64 %148, i64 %153)
  %155 = call i32 (...) @ngx_debug_point()
  %156 = load i64, i64* @NGX_ERROR, align 8
  store i64 %156, i64* %3, align 8
  br label %888

157:                                              ; preds = %98, %38
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = call i64 @ngx_buf_size(%struct.TYPE_21__* %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %216

163:                                              ; preds = %157
  %164 = load i32, i32* @NGX_LOG_ALERT, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 11
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 8
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %164, i32 %167, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %172, i64 %177, i32 %182, i32 %187, i64 %192, i64 %197, i32 %202, i64 %207, i64 %212)
  %214 = call i32 (...) @ngx_debug_point()
  %215 = load i64, i64* @NGX_ERROR, align 8
  store i64 %215, i64* %3, align 8
  br label %888

216:                                              ; preds = %157
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = call i64 @ngx_buf_size(%struct.TYPE_21__* %219)
  %221 = load i64, i64* %6, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, i64* %6, align 8
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %216
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229, %216
  store i32 1, i32* %11, align 4
  br label %237

237:                                              ; preds = %236, %229
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  store i32 1, i32* %12, align 4
  br label %245

245:                                              ; preds = %244, %237
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  store i32 1, i32* %10, align 4
  br label %253

253:                                              ; preds = %252, %245
  br label %254

254:                                              ; preds = %253
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %256, align 8
  store %struct.TYPE_26__* %257, %struct.TYPE_26__** %14, align 8
  br label %35

258:                                              ; preds = %35
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_26__* %259, %struct.TYPE_26__** %15, align 8
  br label %260

260:                                              ; preds = %495, %258
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %262 = icmp ne %struct.TYPE_26__* %261, null
  br i1 %262, label %263, label %499

263:                                              ; preds = %260
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 8
  %267 = call %struct.TYPE_26__* @ngx_alloc_chain_link(i32 %266)
  store %struct.TYPE_26__* %267, %struct.TYPE_26__** %14, align 8
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %269 = icmp eq %struct.TYPE_26__* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i64, i64* @NGX_ERROR, align 8
  store i64 %271, i64* %3, align 8
  br label %888

272:                                              ; preds = %263
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %274, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %276, i32 0, i32 1
  store %struct.TYPE_21__* %275, %struct.TYPE_21__** %277, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %279 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %16, align 8
  store %struct.TYPE_26__* %278, %struct.TYPE_26__** %279, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 0
  store %struct.TYPE_26__** %281, %struct.TYPE_26__*** %16, align 8
  %282 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 4
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_21__*, %struct.TYPE_21__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %288, i32 0, i32 11
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %293, i32 0, i32 10
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_21__*, %struct.TYPE_21__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %302 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_21__*, %struct.TYPE_21__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 8
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 7
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %313, i32 0, i32 8
  %315 = load i64, i64* %314, align 8
  %316 = sub nsw i64 %310, %315
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %324, i32 0, i32 4
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = sub nsw i64 %326, %331
  %333 = call i32 @ngx_log_debug7(i32 %282, i32 %285, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %290, i32 %295, i32 %300, i64 %305, i64 %316, i64 %321, i64 %332)
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_21__*, %struct.TYPE_21__** %335, align 8
  %337 = call i64 @ngx_buf_size(%struct.TYPE_21__* %336)
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %398

339:                                              ; preds = %272
  %340 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_21__*, %struct.TYPE_21__** %341, align 8
  %343 = call i32 @ngx_buf_special(%struct.TYPE_21__* %342)
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %398, label %345

345:                                              ; preds = %339
  %346 = load i32, i32* @NGX_LOG_ALERT, align 4
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 11
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 1
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 2
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_21__*, %struct.TYPE_21__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %362, i32 0, i32 10
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 1
  %367 = load %struct.TYPE_21__*, %struct.TYPE_21__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 8
  %370 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %370, i32 0, i32 1
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 8
  %374 = load i64, i64* %373, align 8
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 1
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 7
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 1
  %382 = load %struct.TYPE_21__*, %struct.TYPE_21__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_21__*, %struct.TYPE_21__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %387, i32 0, i32 5
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %391 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_21__*, %struct.TYPE_21__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %346, i32 %349, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %354, i64 %359, i32 %364, i32 %369, i64 %374, i64 %379, i32 %384, i64 %389, i64 %394)
  %396 = call i32 (...) @ngx_debug_point()
  %397 = load i64, i64* @NGX_ERROR, align 8
  store i64 %397, i64* %3, align 8
  br label %888

398:                                              ; preds = %339, %272
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %400, align 8
  %402 = call i64 @ngx_buf_size(%struct.TYPE_21__* %401)
  %403 = icmp slt i64 %402, 0
  br i1 %403, label %404, label %457

404:                                              ; preds = %398
  %405 = load i32, i32* @NGX_LOG_ALERT, align 4
  %406 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_21__*, %struct.TYPE_21__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %411, i32 0, i32 11
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %420 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_21__*, %struct.TYPE_21__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i32 0, i32 10
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 1
  %426 = load %struct.TYPE_21__*, %struct.TYPE_21__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %430 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %429, i32 0, i32 1
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 8
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %435 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i32 0, i32 1
  %436 = load %struct.TYPE_21__*, %struct.TYPE_21__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %436, i32 0, i32 7
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_21__*, %struct.TYPE_21__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 6
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %445 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %444, i32 0, i32 1
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %446, i32 0, i32 5
  %448 = load i64, i64* %447, align 8
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %450 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_21__*, %struct.TYPE_21__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %451, i32 0, i32 4
  %453 = load i64, i64* %452, align 8
  %454 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %405, i32 %408, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %413, i64 %418, i32 %423, i32 %428, i64 %433, i64 %438, i32 %443, i64 %448, i64 %453)
  %455 = call i32 (...) @ngx_debug_point()
  %456 = load i64, i64* @NGX_ERROR, align 8
  store i64 %456, i64* %3, align 8
  br label %888

457:                                              ; preds = %398
  %458 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_21__*, %struct.TYPE_21__** %459, align 8
  %461 = call i64 @ngx_buf_size(%struct.TYPE_21__* %460)
  %462 = load i64, i64* %6, align 8
  %463 = add nsw i64 %462, %461
  store i64 %463, i64* %6, align 8
  %464 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %465 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %464, i32 0, i32 1
  %466 = load %struct.TYPE_21__*, %struct.TYPE_21__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %477, label %470

470:                                              ; preds = %457
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %472 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %471, i32 0, i32 1
  %473 = load %struct.TYPE_21__*, %struct.TYPE_21__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %470, %457
  store i32 1, i32* %11, align 4
  br label %478

478:                                              ; preds = %477, %470
  %479 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %480 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_21__*, %struct.TYPE_21__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %478
  store i32 1, i32* %12, align 4
  br label %486

486:                                              ; preds = %485, %478
  %487 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_21__*, %struct.TYPE_21__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %494

493:                                              ; preds = %486
  store i32 1, i32* %10, align 4
  br label %494

494:                                              ; preds = %493, %486
  br label %495

495:                                              ; preds = %494
  %496 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %497 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %496, i32 0, i32 0
  %498 = load %struct.TYPE_26__*, %struct.TYPE_26__** %497, align 8
  store %struct.TYPE_26__* %498, %struct.TYPE_26__** %15, align 8
  br label %260

499:                                              ; preds = %260
  %500 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %16, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %500, align 8
  %501 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %502 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %503 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* %10, align 4
  %506 = load i32, i32* %11, align 4
  %507 = load i64, i64* %6, align 8
  %508 = call i32 @ngx_log_debug3(i32 %501, i32 %504, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %505, i32 %506, i64 %507)
  %509 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %510 = load i32, i32* @ngx_http_core_module, align 4
  %511 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %509, i32 %510)
  store %struct.TYPE_24__* %511, %struct.TYPE_24__** %19, align 8
  %512 = load i32, i32* %10, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %528, label %514

514:                                              ; preds = %499
  %515 = load i32, i32* %11, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %528, label %517

517:                                              ; preds = %514
  %518 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %519 = icmp ne %struct.TYPE_26__* %518, null
  br i1 %519, label %520, label %528

520:                                              ; preds = %517
  %521 = load i64, i64* %6, align 8
  %522 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %523 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %522, i32 0, i32 3
  %524 = load i64, i64* %523, align 8
  %525 = icmp slt i64 %521, %524
  br i1 %525, label %526, label %528

526:                                              ; preds = %520
  %527 = load i64, i64* @NGX_OK, align 8
  store i64 %527, i64* %3, align 8
  br label %888

528:                                              ; preds = %520, %517, %514, %499
  %529 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %530 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %529, i32 0, i32 3
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %542

535:                                              ; preds = %528
  %536 = load i32, i32* @NGX_HTTP_WRITE_BUFFERED, align 4
  %537 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %538 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 4
  %541 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %541, i64* %3, align 8
  br label %888

542:                                              ; preds = %528
  %543 = load i64, i64* %6, align 8
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %604

545:                                              ; preds = %542
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @NGX_LOWLEVEL_BUFFERED, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %604, label %552

552:                                              ; preds = %545
  %553 = load i32, i32* %10, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %560

555:                                              ; preds = %552
  %556 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %557 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %556, i32 0, i32 6
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %604, label %560

560:                                              ; preds = %555, %552
  %561 = load i32, i32* %10, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %569, label %563

563:                                              ; preds = %560
  %564 = load i32, i32* %11, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load i32, i32* %12, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %596

569:                                              ; preds = %566, %563, %560
  %570 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %570, i32 0, i32 6
  %572 = load %struct.TYPE_26__*, %struct.TYPE_26__** %571, align 8
  store %struct.TYPE_26__* %572, %struct.TYPE_26__** %14, align 8
  br label %573

573:                                              ; preds = %576, %569
  %574 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %575 = icmp ne %struct.TYPE_26__* %574, null
  br i1 %575, label %576, label %586

576:                                              ; preds = %573
  %577 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %577, %struct.TYPE_26__** %15, align 8
  %578 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %579 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %578, i32 0, i32 0
  %580 = load %struct.TYPE_26__*, %struct.TYPE_26__** %579, align 8
  store %struct.TYPE_26__* %580, %struct.TYPE_26__** %14, align 8
  %581 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %581, i32 0, i32 7
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %585 = call i32 @ngx_free_chain(i32 %583, %struct.TYPE_26__* %584)
  br label %573

586:                                              ; preds = %573
  %587 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %588 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %587, i32 0, i32 6
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %588, align 8
  %589 = load i32, i32* @NGX_HTTP_WRITE_BUFFERED, align 4
  %590 = xor i32 %589, -1
  %591 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %592 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  %594 = and i32 %593, %590
  store i32 %594, i32* %592, align 4
  %595 = load i64, i64* @NGX_OK, align 8
  store i64 %595, i64* %3, align 8
  br label %888

596:                                              ; preds = %566
  %597 = load i32, i32* @NGX_LOG_ALERT, align 4
  %598 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %599 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %598, i32 0, i32 4
  %600 = load i32, i32* %599, align 8
  %601 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %597, i32 %600, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %602 = call i32 (...) @ngx_debug_point()
  %603 = load i64, i64* @NGX_ERROR, align 8
  store i64 %603, i64* %3, align 8
  br label %888

604:                                              ; preds = %555, %545, %542
  %605 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %606 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %620, label %609

609:                                              ; preds = %604
  %610 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %611 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %612 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 4
  %614 = call i8* @ngx_http_complex_value_size(%struct.TYPE_23__* %610, i32 %613, i32 0)
  %615 = ptrtoint i8* %614 to i32
  %616 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %617 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %616, i32 0, i32 1
  store i32 %615, i32* %617, align 4
  %618 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %619 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %618, i32 0, i32 0
  store i32 1, i32* %619, align 8
  br label %620

620:                                              ; preds = %609, %604
  %621 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %622 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %621, i32 0, i32 1
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %706

625:                                              ; preds = %620
  %626 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %627 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %626, i32 0, i32 2
  %628 = load i32, i32* %627, align 8
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %641, label %630

630:                                              ; preds = %625
  %631 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %632 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %633 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 8
  %635 = call i8* @ngx_http_complex_value_size(%struct.TYPE_23__* %631, i32 %634, i32 0)
  %636 = ptrtoint i8* %635 to i64
  %637 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %638 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %637, i32 0, i32 3
  store i64 %636, i64* %638, align 8
  %639 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 2
  store i32 1, i32* %640, align 8
  br label %641

641:                                              ; preds = %630, %625
  %642 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %643 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  %646 = call i32 (...) @ngx_time()
  %647 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %648 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %647, i32 0, i32 4
  %649 = load i32, i32* %648, align 8
  %650 = sub nsw i32 %646, %649
  %651 = add nsw i32 %650, 1
  %652 = sext i32 %651 to i64
  %653 = mul nsw i64 %645, %652
  %654 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %655 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %654, i32 0, i32 2
  %656 = load i64, i64* %655, align 8
  %657 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %658 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %657, i32 0, i32 3
  %659 = load i64, i64* %658, align 8
  %660 = sub nsw i64 %656, %659
  %661 = sub nsw i64 %653, %660
  store i64 %661, i64* %9, align 8
  %662 = load i64, i64* %9, align 8
  %663 = icmp sle i64 %662, 0
  br i1 %663, label %664, label %690

664:                                              ; preds = %641
  %665 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %666 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %665, i32 0, i32 3
  %667 = load %struct.TYPE_22__*, %struct.TYPE_22__** %666, align 8
  %668 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %667, i32 0, i32 0
  store i32 1, i32* %668, align 8
  %669 = load i64, i64* %9, align 8
  %670 = sub nsw i64 0, %669
  %671 = mul nsw i64 %670, 1000
  %672 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %673 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = sext i32 %674 to i64
  %676 = sdiv i64 %671, %675
  %677 = add nsw i64 %676, 1
  store i64 %677, i64* %13, align 8
  %678 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %679 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %678, i32 0, i32 3
  %680 = load %struct.TYPE_22__*, %struct.TYPE_22__** %679, align 8
  %681 = load i64, i64* %13, align 8
  %682 = trunc i64 %681 to i32
  %683 = call i32 @ngx_add_timer(%struct.TYPE_22__* %680, i32 %682)
  %684 = load i32, i32* @NGX_HTTP_WRITE_BUFFERED, align 4
  %685 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %686 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 4
  %688 = or i32 %687, %684
  store i32 %688, i32* %686, align 4
  %689 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %689, i64* %3, align 8
  br label %888

690:                                              ; preds = %641
  %691 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %692 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %691, i32 0, i32 0
  %693 = load i64, i64* %692, align 8
  %694 = icmp ne i64 %693, 0
  br i1 %694, label %695, label %705

695:                                              ; preds = %690
  %696 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %697 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %696, i32 0, i32 0
  %698 = load i64, i64* %697, align 8
  %699 = load i64, i64* %9, align 8
  %700 = icmp slt i64 %698, %699
  br i1 %700, label %701, label %705

701:                                              ; preds = %695
  %702 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %703 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %702, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %9, align 8
  br label %705

705:                                              ; preds = %701, %695, %690
  br label %710

706:                                              ; preds = %620
  %707 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %708 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %707, i32 0, i32 0
  %709 = load i64, i64* %708, align 8
  store i64 %709, i64* %9, align 8
  br label %710

710:                                              ; preds = %706, %705
  %711 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %712 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %711, i32 0, i32 2
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %7, align 8
  %714 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %715 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %716 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %715, i32 0, i32 4
  %717 = load i32, i32* %716, align 8
  %718 = load i64, i64* %9, align 8
  %719 = inttoptr i64 %718 to %struct.TYPE_26__*
  %720 = call i32 @ngx_log_debug1(i32 %714, i32 %717, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_26__* %719)
  %721 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %722 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %721, i32 0, i32 5
  %723 = load %struct.TYPE_26__* (%struct.TYPE_25__*, %struct.TYPE_26__*, i64)*, %struct.TYPE_26__* (%struct.TYPE_25__*, %struct.TYPE_26__*, i64)** %722, align 8
  %724 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %725 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %726 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %725, i32 0, i32 6
  %727 = load %struct.TYPE_26__*, %struct.TYPE_26__** %726, align 8
  %728 = load i64, i64* %9, align 8
  %729 = call %struct.TYPE_26__* %723(%struct.TYPE_25__* %724, %struct.TYPE_26__* %727, i64 %728)
  store %struct.TYPE_26__* %729, %struct.TYPE_26__** %17, align 8
  %730 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %731 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %732 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %731, i32 0, i32 4
  %733 = load i32, i32* %732, align 8
  %734 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %735 = call i32 @ngx_log_debug1(i32 %730, i32 %733, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_26__* %734)
  %736 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %737 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NGX_CHAIN_ERROR, align 8
  %738 = icmp eq %struct.TYPE_26__* %736, %737
  br i1 %738, label %739, label %743

739:                                              ; preds = %710
  %740 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %741 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %740, i32 0, i32 0
  store i32 1, i32* %741, align 8
  %742 = load i64, i64* @NGX_ERROR, align 8
  store i64 %742, i64* %3, align 8
  br label %888

743:                                              ; preds = %710
  %744 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %745 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 4
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %799

748:                                              ; preds = %743
  %749 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %750 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %749, i32 0, i32 2
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %8, align 8
  %752 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %753 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %752, i32 0, i32 3
  %754 = load i64, i64* %753, align 8
  %755 = icmp ne i64 %754, 0
  br i1 %755, label %756, label %775

756:                                              ; preds = %748
  %757 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %758 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %757, i32 0, i32 3
  %759 = load i64, i64* %758, align 8
  %760 = load i64, i64* %7, align 8
  %761 = sub nsw i64 %760, %759
  store i64 %761, i64* %7, align 8
  %762 = load i64, i64* %7, align 8
  %763 = icmp slt i64 %762, 0
  br i1 %763, label %764, label %765

764:                                              ; preds = %756
  store i64 0, i64* %7, align 8
  br label %765

765:                                              ; preds = %764, %756
  %766 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %767 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %766, i32 0, i32 3
  %768 = load i64, i64* %767, align 8
  %769 = load i64, i64* %8, align 8
  %770 = sub nsw i64 %769, %768
  store i64 %770, i64* %8, align 8
  %771 = load i64, i64* %8, align 8
  %772 = icmp slt i64 %771, 0
  br i1 %772, label %773, label %774

773:                                              ; preds = %765
  store i64 0, i64* %8, align 8
  br label %774

774:                                              ; preds = %773, %765
  br label %775

775:                                              ; preds = %774, %748
  %776 = load i64, i64* %8, align 8
  %777 = load i64, i64* %7, align 8
  %778 = sub nsw i64 %776, %777
  %779 = mul nsw i64 %778, 1000
  %780 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %781 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %780, i32 0, i32 1
  %782 = load i32, i32* %781, align 4
  %783 = sext i32 %782 to i64
  %784 = sdiv i64 %779, %783
  store i64 %784, i64* %13, align 8
  %785 = load i64, i64* %13, align 8
  %786 = icmp sgt i64 %785, 0
  br i1 %786, label %787, label %798

787:                                              ; preds = %775
  store i64 0, i64* %9, align 8
  %788 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %789 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %788, i32 0, i32 3
  %790 = load %struct.TYPE_22__*, %struct.TYPE_22__** %789, align 8
  %791 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %790, i32 0, i32 0
  store i32 1, i32* %791, align 8
  %792 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %793 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %792, i32 0, i32 3
  %794 = load %struct.TYPE_22__*, %struct.TYPE_22__** %793, align 8
  %795 = load i64, i64* %13, align 8
  %796 = trunc i64 %795 to i32
  %797 = call i32 @ngx_add_timer(%struct.TYPE_22__* %794, i32 %796)
  br label %798

798:                                              ; preds = %787, %775
  br label %799

799:                                              ; preds = %798, %743
  %800 = load i64, i64* %9, align 8
  %801 = icmp ne i64 %800, 0
  br i1 %801, label %802, label %830

802:                                              ; preds = %799
  %803 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %804 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %803, i32 0, i32 3
  %805 = load %struct.TYPE_22__*, %struct.TYPE_22__** %804, align 8
  %806 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %805, i32 0, i32 1
  %807 = load i64, i64* %806, align 8
  %808 = icmp ne i64 %807, 0
  br i1 %808, label %809, label %830

809:                                              ; preds = %802
  %810 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %811 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %810, i32 0, i32 2
  %812 = load i64, i64* %811, align 8
  %813 = load i64, i64* %7, align 8
  %814 = sub nsw i64 %812, %813
  %815 = load i64, i64* %9, align 8
  %816 = load i32, i32* @ngx_pagesize, align 4
  %817 = mul nsw i32 2, %816
  %818 = sext i32 %817 to i64
  %819 = sub nsw i64 %815, %818
  %820 = icmp sge i64 %814, %819
  br i1 %820, label %821, label %830

821:                                              ; preds = %809
  %822 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %823 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %822, i32 0, i32 3
  %824 = load %struct.TYPE_22__*, %struct.TYPE_22__** %823, align 8
  %825 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %824, i32 0, i32 0
  store i32 1, i32* %825, align 8
  %826 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %827 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %826, i32 0, i32 3
  %828 = load %struct.TYPE_22__*, %struct.TYPE_22__** %827, align 8
  %829 = call i32 @ngx_add_timer(%struct.TYPE_22__* %828, i32 1)
  br label %830

830:                                              ; preds = %821, %809, %802, %799
  %831 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %832 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %831, i32 0, i32 6
  %833 = load %struct.TYPE_26__*, %struct.TYPE_26__** %832, align 8
  store %struct.TYPE_26__* %833, %struct.TYPE_26__** %14, align 8
  br label %834

834:                                              ; preds = %843, %830
  %835 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %836 = icmp ne %struct.TYPE_26__* %835, null
  br i1 %836, label %837, label %841

837:                                              ; preds = %834
  %838 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %839 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %840 = icmp ne %struct.TYPE_26__* %838, %839
  br label %841

841:                                              ; preds = %837, %834
  %842 = phi i1 [ false, %834 ], [ %840, %837 ]
  br i1 %842, label %843, label %853

843:                                              ; preds = %841
  %844 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %844, %struct.TYPE_26__** %15, align 8
  %845 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %846 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %845, i32 0, i32 0
  %847 = load %struct.TYPE_26__*, %struct.TYPE_26__** %846, align 8
  store %struct.TYPE_26__* %847, %struct.TYPE_26__** %14, align 8
  %848 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %849 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %848, i32 0, i32 7
  %850 = load i32, i32* %849, align 8
  %851 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %852 = call i32 @ngx_free_chain(i32 %850, %struct.TYPE_26__* %851)
  br label %834

853:                                              ; preds = %841
  %854 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %855 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %856 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %855, i32 0, i32 6
  store %struct.TYPE_26__* %854, %struct.TYPE_26__** %856, align 8
  %857 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %858 = icmp ne %struct.TYPE_26__* %857, null
  br i1 %858, label %859, label %866

859:                                              ; preds = %853
  %860 = load i32, i32* @NGX_HTTP_WRITE_BUFFERED, align 4
  %861 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %862 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %861, i32 0, i32 1
  %863 = load i32, i32* %862, align 4
  %864 = or i32 %863, %860
  store i32 %864, i32* %862, align 4
  %865 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %865, i64* %3, align 8
  br label %888

866:                                              ; preds = %853
  %867 = load i32, i32* @NGX_HTTP_WRITE_BUFFERED, align 4
  %868 = xor i32 %867, -1
  %869 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %870 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %869, i32 0, i32 1
  %871 = load i32, i32* %870, align 4
  %872 = and i32 %871, %868
  store i32 %872, i32* %870, align 4
  %873 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %874 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %873, i32 0, i32 1
  %875 = load i32, i32* %874, align 4
  %876 = load i32, i32* @NGX_LOWLEVEL_BUFFERED, align 4
  %877 = and i32 %875, %876
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %886

879:                                              ; preds = %866
  %880 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %881 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %880, i32 0, i32 5
  %882 = load i32*, i32** %881, align 8
  %883 = icmp eq i32* %882, null
  br i1 %883, label %884, label %886

884:                                              ; preds = %879
  %885 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %885, i64* %3, align 8
  br label %888

886:                                              ; preds = %879, %866
  %887 = load i64, i64* @NGX_OK, align 8
  store i64 %887, i64* %3, align 8
  br label %888

888:                                              ; preds = %886, %884, %859, %739, %664, %596, %586, %535, %526, %404, %345, %270, %163, %104, %27
  %889 = load i64, i64* %3, align 8
  ret i64 %889
}

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_buf_special(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local %struct.TYPE_26__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i64) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_26__*) #1

declare dso_local i8* @ngx_http_complex_value_size(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ngx_time(...) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
