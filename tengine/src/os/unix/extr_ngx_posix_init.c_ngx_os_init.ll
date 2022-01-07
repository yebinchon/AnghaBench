; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_posix_init.c_ngx_os_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_posix_init.c_ngx_os_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i32 0, align 4
@NGX_CPU_CACHE_LINE = common dso_local global i64 0, align 8
@ngx_cacheline_size = common dso_local global i64 0, align 8
@ngx_pagesize_shift = common dso_local global i32 0, align 4
@ngx_ncpu = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@rlmt = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"getrlimit(RLIMIT_NOFILE) failed\00", align 1
@ngx_max_sockets = common dso_local global i64 0, align 8
@ngx_inherited_nonblocking = common dso_local global i32 0, align 4
@ngx_pid = common dso_local global i64 0, align 8
@_SC_LEVEL1_DCACHE_LINESIZE = common dso_local global i32 0, align 4
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_os_init(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @ngx_init_setproctitle(i32* %6)
  %8 = load i64, i64* @NGX_OK, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @NGX_ERROR, align 8
  store i64 %11, i64* %2, align 8
  br label %55

12:                                               ; preds = %1
  %13 = call i32 (...) @getpagesize()
  store i32 %13, i32* @ngx_pagesize, align 4
  %14 = load i64, i64* @NGX_CPU_CACHE_LINE, align 8
  store i64 %14, i64* @ngx_cacheline_size, align 8
  %15 = load i32, i32* @ngx_pagesize, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %21, %12
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* @ngx_pagesize_shift, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @ngx_pagesize_shift, align 4
  br label %16

24:                                               ; preds = %16
  %25 = load i32, i32* @ngx_ncpu, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* @ngx_ncpu, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = call i32 (...) @ngx_cpuinfo()
  %30 = load i32, i32* @RLIMIT_NOFILE, align 4
  %31 = call i32 @getrlimit(i32 %30, %struct.TYPE_6__* @rlmt)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @NGX_LOG_ALERT, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @ngx_log_error(i32 %34, i32* %35, i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %2, align 8
  br label %55

39:                                               ; preds = %28
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rlmt, i32 0, i32 0), align 8
  store i64 %40, i64* @ngx_max_sockets, align 8
  store i32 0, i32* @ngx_inherited_nonblocking, align 4
  %41 = call %struct.TYPE_5__* (...) @ngx_timeofday()
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %4, align 8
  %42 = load i64, i64* @ngx_pid, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 16
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %44, %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %48, %51
  %53 = call i32 @srandom(i32 %52)
  %54 = load i64, i64* @NGX_OK, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %39, %33, %10
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @ngx_init_setproctitle(i32*) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @ngx_cpuinfo(...) #1

declare dso_local i32 @getrlimit(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_5__* @ngx_timeofday(...) #1

declare dso_local i32 @srandom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
