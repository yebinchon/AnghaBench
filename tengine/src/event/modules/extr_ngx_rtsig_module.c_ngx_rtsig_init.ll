; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_init.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }

@ngx_rtsig_module = common dso_local global i32 0, align 4
@set = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sigprocmask() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@overflow_list = common dso_local global i32* null, align 8
@ngx_os_io = common dso_local global i32 0, align 4
@ngx_io = common dso_local global i32 0, align 4
@ngx_rtsig_module_ctx = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ngx_event_actions = common dso_local global i32 0, align 4
@NGX_USE_RTSIG_EVENT = common dso_local global i32 0, align 4
@NGX_USE_GREEDY_EVENT = common dso_local global i32 0, align 4
@NGX_USE_FD_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @ngx_rtsig_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtsig_init(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ngx_rtsig_module, align 4
  %11 = call %struct.TYPE_6__* @ngx_event_get_conf(i32 %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = call i32 @sigemptyset(i32* @set)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @sigaddset(i32* @set, i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = call i32 @sigaddset(i32* @set, i32 %22)
  %24 = load i32, i32* @SIGIO, align 4
  %25 = call i32 @sigaddset(i32* @set, i32 %24)
  %26 = load i32, i32* @SIGALRM, align 4
  %27 = call i32 @sigaddset(i32* @set, i32 %26)
  %28 = load i32, i32* @SIG_BLOCK, align 4
  %29 = call i32 @sigprocmask(i32 %28, i32* @set, i32* null)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load i32, i32* @NGX_LOG_EMERG, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ngx_errno, align 4
  %37 = call i32 @ngx_log_error(i32 %32, i32 %35, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %2
  %40 = load i32*, i32** @overflow_list, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** @overflow_list, align 8
  %44 = call i32 @ngx_free(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32* @ngx_alloc(i32 %51, i32 %54)
  store i32* %55, i32** @overflow_list, align 8
  %56 = load i32*, i32** @overflow_list, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %45
  %61 = load i32, i32* @ngx_os_io, align 4
  store i32 %61, i32* @ngx_io, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_rtsig_module_ctx, i32 0, i32 0), align 4
  store i32 %62, i32* @ngx_event_actions, align 4
  %63 = load i32, i32* @NGX_USE_RTSIG_EVENT, align 4
  %64 = load i32, i32* @NGX_USE_GREEDY_EVENT, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @NGX_USE_FD_EVENT, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* @ngx_event_flags, align 4
  %68 = load i32, i32* @NGX_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %58, %31
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_6__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_free(i32*) #1

declare dso_local i32* @ngx_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
