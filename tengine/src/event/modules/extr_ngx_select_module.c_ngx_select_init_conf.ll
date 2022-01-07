; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_init_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_select_module.c_ngx_select_init_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@ngx_event_core_module = common dso_local global i32 0, align 4
@ngx_select_module = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"the maximum number of files supported by select() is %ud\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i8*)* @ngx_select_init_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_select_init_conf(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ngx_event_core_module, align 4
  %11 = call %struct.TYPE_6__* @ngx_event_get_conf(i32 %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ngx_select_module, i32 0, i32 0), align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %18, i8** %3, align 8
  br label %35

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FD_SETSIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @NGX_LOG_EMERG, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* @FD_SETSIZE, align 8
  %31 = call i32 @ngx_log_error(i32 %26, i32 %29, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %32, i8** %3, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %34, i8** %3, align 8
  br label %35

35:                                               ; preds = %33, %25, %17
  %36 = load i8*, i8** %3, align 8
  ret i8* %36
}

declare dso_local %struct.TYPE_6__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
