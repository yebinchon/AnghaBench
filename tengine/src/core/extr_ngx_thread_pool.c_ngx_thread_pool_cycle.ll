; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_cycle.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32, i32, i32 (i32, i32)* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_6__** }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"thread in pool \22%V\22 started\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"pthread_sigmask() failed\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"run task #%ui in thread pool \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"complete task #%ui in thread pool \22%V\22\00", align 1
@ngx_thread_pool_done_lock = common dso_local global i32 0, align 4
@ngx_thread_pool_done = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@ngx_thread_pool_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ngx_thread_pool_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_thread_pool_cycle(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %4, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = call i32 @ngx_log_debug1(i32 %10, i32 %13, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = call i32 @sigfillset(i32* %6)
  %18 = load i32, i32* @SIGILL, align 4
  %19 = call i32 @sigdelset(i32* %6, i32 %18)
  %20 = load i32, i32* @SIGFPE, align 4
  %21 = call i32 @sigdelset(i32* %6, i32 %20)
  %22 = load i32, i32* @SIGSEGV, align 4
  %23 = call i32 @sigdelset(i32* %6, i32 %22)
  %24 = load i32, i32* @SIGBUS, align 4
  %25 = call i32 @sigdelset(i32* %6, i32 %24)
  %26 = load i32, i32* @SIG_BLOCK, align 4
  %27 = call i32 @pthread_sigmask(i32 %26, i32* %6, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @NGX_LOG_ALERT, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ngx_log_error(i32 %31, i32 %34, i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %153

37:                                               ; preds = %1
  br label %38

38:                                               ; preds = %111, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ngx_thread_mutex_lock(i32* %40, i32 %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %153

48:                                               ; preds = %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %77, %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = icmp eq %struct.TYPE_6__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @ngx_thread_cond_wait(i32* %61, i32* %63, i32 %66)
  %68 = load i64, i64* @NGX_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ngx_thread_mutex_unlock(i32* %72, i32 %75)
  store i8* null, i8** %2, align 8
  br label %153

77:                                               ; preds = %59
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %7, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = icmp eq %struct.TYPE_6__* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %78
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store %struct.TYPE_6__** %97, %struct.TYPE_6__*** %100, align 8
  br label %101

101:                                              ; preds = %94, %78
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @ngx_thread_mutex_unlock(i32* %103, i32 %106)
  %108 = load i64, i64* @NGX_OK, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  store i8* null, i8** %2, align 8
  br label %153

111:                                              ; preds = %101
  %112 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @ngx_log_debug2(i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32* %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 3
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %124(i32 %127, i32 %130)
  %132 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = call i32 @ngx_log_debug2(i32 %132, i32 %135, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32* %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %143, align 8
  %144 = call i32 @ngx_spinlock(i32* @ngx_thread_pool_done_lock, i32 1, i32 2048)
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_thread_pool_done, i32 0, i32 0), align 8
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %146, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store %struct.TYPE_6__** %148, %struct.TYPE_6__*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_thread_pool_done, i32 0, i32 0), align 8
  %149 = call i32 (...) @ngx_memory_barrier()
  %150 = call i32 @ngx_unlock(i32* @ngx_thread_pool_done_lock)
  %151 = load i32, i32* @ngx_thread_pool_handler, align 4
  %152 = call i32 @ngx_notify(i32 %151)
  br label %38

153:                                              ; preds = %110, %70, %47, %30
  %154 = load i8*, i8** %2, align 8
  ret i8* %154
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigdelset(i32*, i32) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_thread_mutex_lock(i32*, i32) #1

declare dso_local i64 @ngx_thread_cond_wait(i32*, i32*, i32) #1

declare dso_local i64 @ngx_thread_mutex_unlock(i32*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @ngx_spinlock(i32*, i32, i32) #1

declare dso_local i32 @ngx_memory_barrier(...) #1

declare dso_local i32 @ngx_unlock(i32*) #1

declare dso_local i32 @ngx_notify(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
