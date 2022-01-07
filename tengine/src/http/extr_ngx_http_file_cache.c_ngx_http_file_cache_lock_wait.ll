; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lock_wait.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lock_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 (%struct.TYPE_15__*)*, %struct.TYPE_14__*, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i32, %struct.TYPE_12__*, %struct.TYPE_16__*, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@ngx_current_msec = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cache lock timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_17__*)* @ngx_http_file_cache_lock_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_file_cache_lock_wait(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = load i32, i32* @ngx_current_msec, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @NGX_LOG_INFO, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ngx_log_error(i32 %19, i32 %24, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  br label %75

28:                                               ; preds = %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %8, align 8
  store i32 0, i32* %5, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = call i32 @ngx_shmtx_lock(i32* %35)
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %28
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %50, %28
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = call i32 @ngx_shmtx_unlock(i32* %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %66, 500
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %68
  %72 = phi i32 [ 500, %68 ], [ %70, %69 ]
  %73 = call i32 @ngx_add_timer(i32* %65, i32 %72)
  br label %89

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %18
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = call i32 %86(%struct.TYPE_15__* %87)
  br label %89

89:                                               ; preds = %75, %71
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_add_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
