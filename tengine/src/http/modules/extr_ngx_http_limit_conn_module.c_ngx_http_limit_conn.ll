; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_conn_module.c_ngx_http_limit_conn.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_limit_conn_module.c_ngx_http_limit_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32* }

@ngx_http_limit_conn_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid number of connections \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"connection limit must be less 65536\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_limit_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_limit_conn(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %9, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %12, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i64 1
  %25 = call i32* @ngx_shared_memory_add(%struct.TYPE_18__* %22, %struct.TYPE_15__* %24, i32 0, i32* @ngx_http_limit_conn_module)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %29, i8** %4, align 8
  br label %113

30:                                               ; preds = %3
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %11, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = icmp eq %struct.TYPE_16__* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ngx_array_init(%struct.TYPE_13__* %39, i32 %42, i32 1, i32 16)
  %44 = load i64, i64* @NGX_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %47, i8** %4, align 8
  br label %113

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %30
  store i64 0, i64* %14, align 8
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %113

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %14, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %14, align 8
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i64 2
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ngx_atoi(i32 %74, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @NGX_LOG_EMERG, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i64 2
  %87 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_conf_log_error(i32 %83, %struct.TYPE_18__* %84, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %86)
  %88 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %88, i8** %4, align 8
  br label %113

89:                                               ; preds = %70
  %90 = load i32, i32* %13, align 4
  %91 = icmp sgt i32 %90, 65535
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* @NGX_LOG_EMERG, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %95 = call i32 (i32, %struct.TYPE_18__*, i32, i8*, ...) @ngx_conf_log_error(i32 %93, %struct.TYPE_18__* %94, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %96, i8** %4, align 8
  br label %113

97:                                               ; preds = %89
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = call %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_13__* %99)
  store %struct.TYPE_16__* %100, %struct.TYPE_16__** %10, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = icmp eq %struct.TYPE_16__* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %113

105:                                              ; preds = %97
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %105, %103, %92, %82, %65, %46, %28
  %114 = load i8*, i8** %4, align 8
  ret i8* %114
}

declare dso_local i32* @ngx_shared_memory_add(%struct.TYPE_18__*, %struct.TYPE_15__*, i32, i32*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @ngx_atoi(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_18__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @ngx_array_push(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
