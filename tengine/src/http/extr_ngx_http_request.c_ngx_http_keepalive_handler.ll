; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_keepalive_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_request.c_ngx_http_keepalive_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*)*, i32, i64, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 (%struct.TYPE_18__*, i32*, i64)*, i64, i64, i64, i32*, i64, %struct.TYPE_20__*, i32, i32, i64, i32, %struct.TYPE_19__*, %struct.TYPE_16__*, i64 }
%struct.TYPE_20__ = type { i8*, i32* }
%struct.TYPE_19__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"http keepalive handler\00", align 1
@NGX_ERROR_IGNORE_ECONNRESET = common dso_local global i32 0, align 4
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"client %V closed keepalive connection\00", align 1
@ngx_http_log_error = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"reading client request line\00", align 1
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @ngx_http_keepalive_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_keepalive_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %9, %struct.TYPE_18__** %6, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %14 = call i32 @ngx_log_debug0(i32 %10, %struct.TYPE_20__* %13, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 13
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %1
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %25)
  br label %186

27:                                               ; preds = %19
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 11
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %5, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = ptrtoint i32* %33 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %78

45:                                               ; preds = %27
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %3, align 8
  %50 = call i32* @ngx_palloc(i32 %48, i64 %49)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %58)
  br label %186

60:                                               ; preds = %45
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  store i32* %75, i32** %77, align 8
  br label %78

78:                                               ; preds = %60, %27
  %79 = load i32, i32* @NGX_ERROR_IGNORE_ECONNRESET, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 10
  store i32 %79, i32* %81, align 8
  %82 = call i32 @ngx_set_socket_errno(i32 0)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64 (%struct.TYPE_18__*, i32*, i64)*, i64 (%struct.TYPE_18__*, i32*, i64)** %84, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %3, align 8
  %91 = call i64 %85(%struct.TYPE_18__* %86, i32* %89, i64 %90)
  store i64 %91, i64* %4, align 8
  %92 = load i32, i32* @NGX_ERROR_INFO, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @NGX_AGAIN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %78
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %100 = call i64 @ngx_handle_read_event(%struct.TYPE_17__* %99, i32 0)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %105 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %104)
  br label %186

106:                                              ; preds = %98
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @ngx_pfree(i32 %109, i32* %112)
  %114 = load i64, i64* @NGX_OK, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %116, %106
  br label %186

120:                                              ; preds = %78
  %121 = load i64, i64* %4, align 8
  %122 = load i64, i64* @NGX_ERROR, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %126 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %125)
  br label %186

127:                                              ; preds = %120
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  store i32* null, i32** %131, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load i32, i32* @NGX_LOG_INFO, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 6
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = load i32, i32* @ngx_socket_errno, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 7
  %142 = call i32 @ngx_log_error(i32 %135, %struct.TYPE_20__* %138, i32 %139, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %144 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %143)
  br label %186

145:                                              ; preds = %127
  %146 = load i64, i64* %4, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 %146
  store i32* %150, i32** %148, align 8
  %151 = load i32*, i32** @ngx_http_log_error, align 8
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 6
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  store i32* %151, i32** %155, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 6
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %159, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %163 = call i32 @ngx_reusable_connection(%struct.TYPE_18__* %162, i32 0)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = call i32* @ngx_http_create_request(%struct.TYPE_18__* %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 4
  store i32* %165, i32** %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %145
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = call i32 @ngx_http_close_connection(%struct.TYPE_18__* %173)
  br label %186

175:                                              ; preds = %145
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 3
  store i64 0, i64* %177, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %181 = call i32 @ngx_del_timer(%struct.TYPE_17__* %180)
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  store i32 (%struct.TYPE_17__*)* @ngx_http_process_request_line, i32 (%struct.TYPE_17__*)** %183, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %185 = call i32 @ngx_http_process_request_line(%struct.TYPE_17__* %184)
  br label %186

186:                                              ; preds = %175, %172, %134, %124, %119, %103, %57, %24
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ngx_http_close_connection(%struct.TYPE_18__*) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_set_socket_errno(i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_pfree(i32, i32*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_20__*, i32, i8*, i32*) #1

declare dso_local i32 @ngx_reusable_connection(%struct.TYPE_18__*, i32) #1

declare dso_local i32* @ngx_http_create_request(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_http_process_request_line(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
