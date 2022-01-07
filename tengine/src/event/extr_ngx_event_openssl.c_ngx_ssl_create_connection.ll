; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_create_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_openssl.c_ngx_ssl_create_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_SSL_BUFFER = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SSL_new() failed\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SSL_set_fd() failed\00", align 1
@NGX_SSL_CLIENT = common dso_local global i32 0, align 4
@ngx_ssl_connection_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SSL_set_ex_data() failed\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_ssl_create_connection(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_9__* @ngx_pcalloc(i32 %11, i32 24)
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NGX_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %103

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NGX_SSL_BUFFER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @SSL_new(i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %17
  %46 = load i32, i32* @NGX_LOG_ALERT, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ngx_ssl_error(i32 %46, i32 %49, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @NGX_ERROR, align 4
  store i32 %51, i32* %4, align 4
  br label %103

52:                                               ; preds = %17
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @SSL_set_fd(i32* %55, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %52
  %62 = load i32, i32* @NGX_LOG_ALERT, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ngx_ssl_error(i32 %62, i32 %65, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %4, align 4
  br label %103

68:                                               ; preds = %52
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NGX_SSL_CLIENT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @SSL_set_connect_state(i32* %76)
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @SSL_set_accept_state(i32* %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @ngx_ssl_connection_index, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = call i64 @SSL_set_ex_data(i32* %86, i32 %87, %struct.TYPE_10__* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load i32, i32* @NGX_LOG_ALERT, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ngx_ssl_error(i32 %92, i32 %95, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32, i32* @NGX_ERROR, align 4
  store i32 %97, i32* %4, align 4
  br label %103

98:                                               ; preds = %83
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store %struct.TYPE_9__* %99, %struct.TYPE_9__** %101, align 8
  %102 = load i32, i32* @NGX_OK, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %91, %61, %45, %15
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_9__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32* @SSL_new(i32) #1

declare dso_local i32 @ngx_ssl_error(i32, i32, i32, i8*) #1

declare dso_local i64 @SSL_set_fd(i32*, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32*) #1

declare dso_local i32 @SSL_set_accept_state(i32*) #1

declare dso_local i64 @SSL_set_ex_data(i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
