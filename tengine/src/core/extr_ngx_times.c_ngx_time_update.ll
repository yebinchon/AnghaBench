; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_update.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i8*, i8* }
%struct.TYPE_19__ = type { i32* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i32 }

@ngx_time_lock = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i32 0, align 4
@cached_time = common dso_local global %struct.TYPE_17__* null, align 8
@slot = common dso_local global i64 0, align 8
@NGX_TIME_SLOTS = common dso_local global i32 0, align 4
@cached_http_time = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s, %02d %s %4d %02d:%02d:%02d GMT\00", align 1
@week = common dso_local global i32* null, align 8
@months = common dso_local global i32* null, align 8
@cached_gmtoff = common dso_local global i8* null, align 8
@cached_err_log_time = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%4d/%02d/%02d %02d:%02d:%02d\00", align 1
@cached_http_log_time = common dso_local global i32** null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"%02d/%s/%d:%02d:%02d:%02d %c%02i%02i\00", align 1
@cached_http_log_iso8601 = common dso_local global i32** null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"%4d-%02d-%02dT%02d:%02d:%02d%c%02i:%02i\00", align 1
@cached_syslog_time = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%s %2d %02d:%02d:%02d\00", align 1
@ngx_cached_time = common dso_local global %struct.TYPE_17__* null, align 8
@ngx_cached_http_time = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@ngx_cached_err_log_time = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@ngx_cached_http_log_time = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ngx_cached_http_log_iso8601 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ngx_cached_syslog_time = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@cached_http_log_tm = common dso_local global %struct.TYPE_16__* null, align 8
@ngx_cached_tm = common dso_local global %struct.TYPE_16__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_time_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca %struct.TYPE_16__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = call i32 @ngx_trylock(i32* @ngx_time_lock)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  br label %224

15:                                               ; preds = %0
  %16 = call i32 @ngx_gettimeofday(%struct.timeval* %11)
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 1000
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @ngx_monotonic_time(i64 %24, i8* %25)
  store i32 %26, i32* @ngx_current_msec, align 4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cached_time, align 8
  %28 = load i64, i64* @slot, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i64 %28
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %15
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = call i32 @ngx_unlock(i32* @ngx_time_lock)
  br label %224

40:                                               ; preds = %15
  %41 = load i64, i64* @slot, align 8
  %42 = load i32, i32* @NGX_TIME_SLOTS, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i64 0, i64* @slot, align 8
  br label %50

47:                                               ; preds = %40
  %48 = load i64, i64* @slot, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* @slot, align 8
  br label %50

50:                                               ; preds = %47, %46
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** @cached_time, align 8
  %52 = load i64, i64* @slot, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %52
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %10, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @ngx_gmtime(i64 %60, %struct.TYPE_16__* %7)
  %62 = load i32**, i32*** @cached_http_time, align 8
  %63 = load i64, i64* @slot, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32* %66, i32** %1, align 8
  %67 = load i32*, i32** %1, align 8
  %68 = load i32*, i32** @week, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @months, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %74, i32 %81, i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @ngx_localtime(i64 %91, %struct.TYPE_16__* %6)
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @ngx_timezone(i32 %94)
  store i8* %95, i8** @cached_gmtoff, align 8
  %96 = load i8*, i8** @cached_gmtoff, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load i32**, i32*** @cached_err_log_time, align 8
  %101 = load i64, i64* @slot, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32* %104, i32** %2, align 8
  %105 = load i32*, i32** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117)
  %119 = load i32**, i32*** @cached_http_log_time, align 8
  %120 = load i64, i64* @slot, align 8
  %121 = getelementptr inbounds i32*, i32** %119, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32* %123, i32** %3, align 8
  %124 = load i32*, i32** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @months, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 45, i32 43
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sdiv i32 %150, 60
  %152 = call i32 @ngx_abs(i32 %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = srem i32 %155, 60
  %157 = call i32 @ngx_abs(i32 %156)
  %158 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %126, i32 %133, i32 %135, i32 %137, i32 %139, i32 %141, i32 %147, i32 %152, i32 %157)
  %159 = load i32**, i32*** @cached_http_log_iso8601, align 8
  %160 = load i64, i64* @slot, align 8
  %161 = getelementptr inbounds i32*, i32** %159, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32* %163, i32** %4, align 8
  %164 = load i32*, i32** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %179, 0
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 45, i32 43
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = sdiv i32 %185, 60
  %187 = call i32 @ngx_abs(i32 %186)
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = srem i32 %190, 60
  %192 = call i32 @ngx_abs(i32 %191)
  %193 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %168, i32 %170, i32 %172, i32 %174, i32 %176, i32 %182, i32 %187, i32 %192)
  %194 = load i32**, i32*** @cached_syslog_time, align 8
  %195 = load i64, i64* @slot, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  store i32* %198, i32** %5, align 8
  %199 = load i32*, i32** %5, align 8
  %200 = load i32*, i32** @months, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 5
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %206, i32 %208, i32 %210, i32 %212, i32 %214)
  %216 = call i32 (...) @ngx_memory_barrier()
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %217, %struct.TYPE_17__** @ngx_cached_time, align 8
  %218 = load i32*, i32** %1, align 8
  store i32* %218, i32** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ngx_cached_http_time, i32 0, i32 0), align 8
  %219 = load i32*, i32** %2, align 8
  store i32* %219, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ngx_cached_err_log_time, i32 0, i32 0), align 8
  %220 = load i32*, i32** %3, align 8
  store i32* %220, i32** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_cached_http_log_time, i32 0, i32 0), align 8
  %221 = load i32*, i32** %4, align 8
  store i32* %221, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_cached_http_log_iso8601, i32 0, i32 0), align 8
  %222 = load i32*, i32** %5, align 8
  store i32* %222, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @ngx_cached_syslog_time, i32 0, i32 0), align 8
  %223 = call i32 @ngx_unlock(i32* @ngx_time_lock)
  br label %224

224:                                              ; preds = %50, %35, %14
  ret void
}

declare dso_local i32 @ngx_trylock(i32*) #1

declare dso_local i32 @ngx_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @ngx_monotonic_time(i64, i8*) #1

declare dso_local i32 @ngx_unlock(i32*) #1

declare dso_local i32 @ngx_gmtime(i64, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ngx_localtime(i64, %struct.TYPE_16__*) #1

declare dso_local i8* @ngx_timezone(i32) #1

declare dso_local i32 @ngx_abs(i32) #1

declare dso_local i32 @ngx_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
