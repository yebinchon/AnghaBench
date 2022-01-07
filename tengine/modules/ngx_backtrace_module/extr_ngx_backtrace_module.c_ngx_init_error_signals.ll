; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_backtrace_module/extr_ngx_backtrace_module.c_ngx_init_error_signals.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_backtrace_module/extr_ngx_backtrace_module.c_ngx_init_error_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.sigaction = type { i32, i32 }

@ngx_backtrace_signals = common dso_local global %struct.TYPE_3__* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sigaction(%s) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_init_error_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_init_error_signals(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.sigaction, align 4
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ngx_backtrace_signals, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  br label %7

7:                                                ; preds = %35, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %7
  %13 = call i32 @ngx_memzero(%struct.sigaction* %5, i32 8)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 0
  %19 = call i32 @sigemptyset(i32* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @sigaction(i64 %22, %struct.sigaction* %5, i32* null)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %34

25:                                               ; preds = %12
  %26 = load i32, i32* @NGX_LOG_EMERG, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @ngx_errno, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ngx_log_error(i32 %26, i32* %27, i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %12
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 1
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %4, align 8
  br label %7

38:                                               ; preds = %7
  %39 = load i32, i32* @NGX_OK, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @ngx_memzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i64, %struct.sigaction*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
