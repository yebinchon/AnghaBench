; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_sigsafe_update.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_times.c_ngx_time_sigsafe_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64 }

@ngx_time_lock = common dso_local global i32 0, align 4
@cached_time = common dso_local global %struct.TYPE_8__* null, align 8
@slot = common dso_local global i64 0, align 8
@NGX_TIME_SLOTS = common dso_local global i32 0, align 4
@cached_gmtoff = common dso_local global i32 0, align 4
@cached_err_log_time = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%4d/%02d/%02d %02d:%02d:%02d\00", align 1
@cached_syslog_time = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s %2d %02d:%02d:%02d\00", align 1
@months = common dso_local global i32* null, align 8
@ngx_cached_err_log_time = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ngx_cached_syslog_time = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_time_sigsafe_update() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = call i32 @ngx_trylock(i32* @ngx_time_lock)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %91

10:                                               ; preds = %0
  %11 = call i32 @ngx_gettimeofday(%struct.timeval* %6)
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cached_time, align 8
  %15 = load i64, i64* @slot, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i64 %15
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %5, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = call i32 @ngx_unlock(i32* @ngx_time_lock)
  br label %91

24:                                               ; preds = %10
  %25 = load i64, i64* @slot, align 8
  %26 = load i32, i32* @NGX_TIME_SLOTS, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i64 0, i64* @slot, align 8
  br label %34

31:                                               ; preds = %24
  %32 = load i64, i64* @slot, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* @slot, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cached_time, align 8
  %36 = load i64, i64* @slot, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %36
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %5, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @cached_gmtoff, align 4
  %42 = mul nsw i32 %41, 60
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = call i32 @ngx_gmtime(i64 %44, %struct.TYPE_7__* %3)
  %46 = load i32**, i32*** @cached_err_log_time, align 8
  %47 = load i64, i64* @slot, align 8
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32* %50, i32** %1, align 8
  %51 = load i32*, i32** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %55, i32 %57, i32 %59, i32 %61, i32 %63)
  %65 = load i32**, i32*** @cached_syslog_time, align 8
  %66 = load i64, i64* @slot, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32* %69, i32** %2, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = load i32*, i32** @months, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32*, i8*, i32, i32, i32, i32, i32, ...) @ngx_sprintf(i32* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %79, i32 %81, i32 %83, i32 %85)
  %87 = call i32 (...) @ngx_memory_barrier()
  %88 = load i32*, i32** %1, align 8
  store i32* %88, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_cached_err_log_time, i32 0, i32 0), align 8
  %89 = load i32*, i32** %2, align 8
  store i32* %89, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ngx_cached_syslog_time, i32 0, i32 0), align 8
  %90 = call i32 @ngx_unlock(i32* @ngx_time_lock)
  br label %91

91:                                               ; preds = %34, %22, %9
  ret void
}

declare dso_local i32 @ngx_trylock(i32*) #1

declare dso_local i32 @ngx_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @ngx_unlock(i32*) #1

declare dso_local i32 @ngx_gmtime(i64, %struct.TYPE_7__*) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @ngx_memory_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
