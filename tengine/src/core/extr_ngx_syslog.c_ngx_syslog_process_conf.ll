; ModuleID = '/home/carl/AnghaBench/tengine/src/core/extr_ngx_syslog.c_ngx_syslog_process_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/src/core/extr_ngx_syslog.c_ngx_syslog_process_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i8*, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_14__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }

@NGX_CONF_UNSET_UINT = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no syslog server specified\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"nginx\00", align 1
@ngx_syslog_dummy_event = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@ngx_syslog_dummy_log = common dso_local global i32 0, align 4
@ngx_syslog_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_syslog_process_conf(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = call i64 @ngx_syslog_parse_args(%struct.TYPE_20__* %13, %struct.TYPE_18__* %14)
  %16 = load i64, i64* @NGX_CONF_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %19, i8** %3, align 8
  br label %86

20:                                               ; preds = %2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load i32, i32* @NGX_LOG_EMERG, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 @ngx_conf_log_error(i32 %27, %struct.TYPE_20__* %28, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %30, i8** %3, align 8
  br label %86

31:                                               ; preds = %20
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i8* inttoptr (i64 23 to i8*), i8** %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @NGX_CONF_UNSET_UINT, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  store i8* inttoptr (i64 6 to i8*), i8** %48, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 3
  %58 = call i32 @ngx_str_set(%struct.TYPE_15__* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  store i64 -1, i64* %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  store %struct.TYPE_14__* @ngx_syslog_dummy_event, %struct.TYPE_14__** %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  store %struct.TYPE_14__* @ngx_syslog_dummy_event, %struct.TYPE_14__** %68, align 8
  store i32* @ngx_syslog_dummy_log, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @ngx_syslog_dummy_event, i32 0, i32 0), align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_19__* @ngx_pool_cleanup_add(i32 %71, i32 0)
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %6, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %74 = icmp eq %struct.TYPE_19__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %3, align 8
  br label %86

77:                                               ; preds = %59
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %80, align 8
  %81 = load i32, i32* @ngx_syslog_cleanup, align 4
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* @NGX_CONF_OK, align 8
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %3, align 8
  br label %86

86:                                               ; preds = %77, %75, %26, %18
  %87 = load i8*, i8** %3, align 8
  ret i8* %87
}

declare dso_local i64 @ngx_syslog_parse_args(%struct.TYPE_20__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_15__*, i8*) #1

declare dso_local %struct.TYPE_19__* @ngx_pool_cleanup_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
