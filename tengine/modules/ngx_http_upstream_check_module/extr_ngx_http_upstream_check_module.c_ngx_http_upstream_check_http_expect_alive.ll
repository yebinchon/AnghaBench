; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_http_expect_alive.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_http_expect_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@ngx_check_http_expect_alive_masks = common dso_local global %struct.TYPE_19__* null, align 8
@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"duplicate value \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid value \22%s\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_upstream_check_http_expect_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_check_http_expect_alive(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** @ngx_check_http_expect_alive_masks, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %12, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %22 = call %struct.TYPE_17__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_18__* %20, i32 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %13, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %10, align 8
  br label %23

23:                                               ; preds = %117, %3
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %23
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %95, %31
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %32
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %46, %51
  br i1 %52, label %67, label %53

53:                                               ; preds = %40
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ngx_strcasecmp(i32 %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53, %40
  br label %95

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = and i64 %69, %74
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load i32, i32* @NGX_LOG_WARN, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ngx_conf_log_error(i32 %78, %struct.TYPE_18__* %79, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %94

86:                                               ; preds = %68
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = or i64 %92, %91
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %86, %77
  br label %98

95:                                               ; preds = %67
  %96 = load i64, i64* %11, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %11, align 8
  br label %32

98:                                               ; preds = %94, %32
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load i32, i32* @NGX_LOG_WARN, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ngx_conf_log_error(i32 %107, %struct.TYPE_18__* %108, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %115, i8** %4, align 8
  br label %126

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %10, align 8
  br label %23

120:                                              ; preds = %23
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %125, i8** %4, align 8
  br label %126

126:                                              ; preds = %120, %106
  %127 = load i8*, i8** %4, align 8
  ret i8* %127
}

declare dso_local %struct.TYPE_17__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_strcasecmp(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
