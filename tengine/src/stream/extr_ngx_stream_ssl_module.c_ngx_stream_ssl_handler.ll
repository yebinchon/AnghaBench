; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_11__ = type { i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_stream_ssl_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SSL handshaking\00", align 1
@X509_V_OK = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"client SSL certificate verify error: (%l:%s)\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"client sent no required SSL certificate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @ngx_stream_ssl_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_ssl_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @NGX_OK, align 8
  store i64 %14, i64* %2, align 8
  br label %126

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = load i32, i32* @ngx_stream_ssl_module, align 4
  %21 = call %struct.TYPE_11__* @ngx_stream_get_module_srv_conf(%struct.TYPE_12__* %19, i32 %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %15
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %34 = call i64 @ngx_stream_ssl_init_connection(i32* %32, %struct.TYPE_13__* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @NGX_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %2, align 8
  br label %126

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %124

46:                                               ; preds = %41
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @SSL_get_verify_result(i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @X509_V_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 3
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @ngx_ssl_verify_error_optional(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* @NGX_LOG_INFO, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @X509_verify_cert_error_string(i64 %71)
  %73 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i32 %66, %struct.TYPE_14__* %69, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %70, i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SSL_get0_session(i32 %83)
  %85 = call i32 @ngx_ssl_remove_cached_session(i32 %78, i32 %84)
  %86 = load i64, i64* @NGX_ERROR, align 8
  store i64 %86, i64* %2, align 8
  br label %126

87:                                               ; preds = %61, %46
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %123

92:                                               ; preds = %87
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @SSL_get_peer_certificate(i32 %97)
  store i32* %98, i32** %5, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %92
  %102 = load i32, i32* @NGX_LOG_INFO, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = call i32 (i32, %struct.TYPE_14__*, i32, i8*, ...) @ngx_log_error(i32 %102, %struct.TYPE_14__* %105, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SSL_get0_session(i32 %116)
  %118 = call i32 @ngx_ssl_remove_cached_session(i32 %111, i32 %117)
  %119 = load i64, i64* @NGX_ERROR, align 8
  store i64 %119, i64* %2, align 8
  br label %126

120:                                              ; preds = %92
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @X509_free(i32* %121)
  br label %123

123:                                              ; preds = %120, %87
  br label %124

124:                                              ; preds = %123, %41
  %125 = load i64, i64* @NGX_OK, align 8
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %124, %101, %65, %38, %13
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local %struct.TYPE_11__* @ngx_stream_get_module_srv_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_stream_ssl_init_connection(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @SSL_get_verify_result(i32) #1

declare dso_local i32 @ngx_ssl_verify_error_optional(i64) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_14__*, i32, i8*, ...) #1

declare dso_local i32 @X509_verify_cert_error_string(i64) #1

declare dso_local i32 @ngx_ssl_remove_cached_session(i32, i32) #1

declare dso_local i32 @SSL_get0_session(i32) #1

declare dso_local i32* @SSL_get_peer_certificate(i32) #1

declare dso_local i32 @X509_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
