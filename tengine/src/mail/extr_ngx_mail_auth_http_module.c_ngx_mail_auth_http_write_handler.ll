; ModuleID = '/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_write_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/mail/extr_ngx_mail_auth_http_module.c_ngx_mail_auth_http_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@ngx_mail_auth_http_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_MAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mail auth http write handler\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"auth http server %V timed out\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_mail_auth_http_dummy_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_mail_auth_http_write_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_mail_auth_http_write_handler(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %5, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ngx_mail_auth_http_module, align 4
  %17 = call %struct.TYPE_17__* @ngx_mail_get_module_ctx(i32* %15, i32 %16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load i32, i32* @NGX_LOG_DEBUG_MAIL, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ngx_log_debug0(i32 %18, i32 %21, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %1
  %28 = load i32, i32* @NGX_LOG_ERR, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ngx_log_error(i32 %28, i32 %31, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = call i32 @ngx_close_connection(%struct.TYPE_20__* %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ngx_destroy_pool(i32 %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @ngx_mail_session_internal_server_error(i32* %44)
  br label %133

46:                                               ; preds = %1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %51, %56
  store i64 %57, i64* %4, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @ngx_send(%struct.TYPE_20__* %58, i64 %63, i64 %64)
  store i64 %65, i64* %3, align 8
  %66 = load i64, i64* %3, align 8
  %67 = load i64, i64* @NGX_ERROR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %46
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %71 = call i32 @ngx_close_connection(%struct.TYPE_20__* %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ngx_destroy_pool(i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @ngx_mail_session_internal_server_error(i32* %76)
  br label %133

78:                                               ; preds = %46
  %79 = load i64, i64* %3, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %82
  store i64 %88, i64* %86, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %118

92:                                               ; preds = %81
  %93 = load i32, i32* @ngx_mail_auth_http_dummy_handler, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %102 = call i32 @ngx_del_timer(%struct.TYPE_19__* %101)
  br label %103

103:                                              ; preds = %100, %92
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = call i64 @ngx_handle_write_event(%struct.TYPE_19__* %104, i32 0)
  %106 = load i64, i64* @NGX_OK, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %110 = call i32 @ngx_close_connection(%struct.TYPE_20__* %109)
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ngx_destroy_pool(i32 %113)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @ngx_mail_session_internal_server_error(i32* %115)
  br label %117

117:                                              ; preds = %108, %103
  br label %133

118:                                              ; preds = %81
  br label %119

119:                                              ; preds = %118, %78
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %119
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* @ngx_mail_auth_http_module, align 4
  %127 = call %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(i32* %125, i32 %126)
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %8, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ngx_add_timer(%struct.TYPE_19__* %128, i32 %131)
  br label %133

133:                                              ; preds = %27, %69, %117, %124, %119
  ret void
}

declare dso_local %struct.TYPE_17__* @ngx_mail_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_destroy_pool(i32) #1

declare dso_local i32 @ngx_mail_session_internal_server_error(i32*) #1

declare dso_local i64 @ngx_send(%struct.TYPE_20__*, i64, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_mail_get_module_srv_conf(i32*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
