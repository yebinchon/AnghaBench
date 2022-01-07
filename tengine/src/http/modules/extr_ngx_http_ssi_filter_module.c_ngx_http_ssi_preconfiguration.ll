; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_preconfiguration.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_preconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@ngx_http_ssi_vars = common dso_local global %struct.TYPE_12__* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_ssi_filter_module = common dso_local global i32 0, align 4
@ngx_http_ssi_commands = common dso_local global %struct.TYPE_14__* null, align 8
@NGX_HASH_READONLY_KEY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"conflicting SSI command \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ngx_http_ssi_preconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_ssi_preconfiguration(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_http_ssi_vars, align 8
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %6, align 8
  br label %10

10:                                               ; preds = %39, %1
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_12__* @ngx_http_add_variable(i32* %17, %struct.TYPE_15__* %19, i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %5, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %2, align 8
  br label %82

28:                                               ; preds = %16
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %28
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 1
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %6, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %45 = call %struct.TYPE_13__* @ngx_http_conf_get_module_main_conf(i32* %43, i32 %44)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %8, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ngx_http_ssi_commands, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %7, align 8
  br label %47

47:                                               ; preds = %77, %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %59 = load i32, i32* @NGX_HASH_READONLY_KEY, align 4
  %60 = call i64 @ngx_hash_add_key(i32* %55, %struct.TYPE_16__* %57, %struct.TYPE_14__* %58, i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %77

65:                                               ; preds = %53
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @NGX_BUSY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* @NGX_LOG_EMERG, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = call i32 @ngx_conf_log_error(i32 %70, i32* %71, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %69, %65
  %76 = load i64, i64* @NGX_ERROR, align 8
  store i64 %76, i64* %2, align 8
  br label %82

77:                                               ; preds = %64
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 1
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %7, align 8
  br label %47

80:                                               ; preds = %47
  %81 = load i64, i64* @NGX_OK, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %80, %75, %26
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local %struct.TYPE_12__* @ngx_http_add_variable(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_http_conf_get_module_main_conf(i32*, i32) #1

declare dso_local i64 @ngx_hash_add_key(i32*, %struct.TYPE_16__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
