; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_update_variant.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_update_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_17__*, %struct.TYPE_22__*, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i64 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"http file cache main key\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_23__*)* @ngx_http_file_cache_update_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_file_cache_update_variant(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %7 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @NGX_OK, align 8
  store i64 %12, i64* %3, align 8
  br label %95

13:                                               ; preds = %2
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %27 = call i64 @ngx_memcmp(i32 %22, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %3, align 8
  br label %95

31:                                               ; preds = %19, %13
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %33, align 8
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %6, align 8
  %35 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ngx_log_debug0(i32 %35, i32 %40, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = call i32 @ngx_shmtx_lock(i32* %45)
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %58, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = call i32 @ngx_shmtx_unlock(i32* %62)
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %75 = call i32 @ngx_memcpy(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = call i64 @ngx_http_file_cache_exists(%struct.TYPE_22__* %76, %struct.TYPE_23__* %77)
  %79 = load i64, i64* @NGX_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %31
  %82 = load i64, i64* @NGX_ERROR, align 8
  store i64 %82, i64* %3, align 8
  br label %95

83:                                               ; preds = %31
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @ngx_http_file_cache_name(%struct.TYPE_21__* %84, i32 %87)
  %89 = load i64, i64* @NGX_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i64, i64* @NGX_ERROR, align 8
  store i64 %92, i64* %3, align 8
  br label %95

93:                                               ; preds = %83
  %94 = load i64, i64* @NGX_OK, align 8
  store i64 %94, i64* %3, align 8
  br label %95

95:                                               ; preds = %93, %91, %81, %29, %11
  %96 = load i64, i64* %3, align 8
  ret i64 %96
}

declare dso_local i64 @ngx_memcmp(i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_memcpy(i32, i32, i32) #1

declare dso_local i64 @ngx_http_file_cache_exists(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_file_cache_name(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
