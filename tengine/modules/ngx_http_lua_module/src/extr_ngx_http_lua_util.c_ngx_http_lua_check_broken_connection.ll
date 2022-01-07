; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_check_broken_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_check_broken_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i64, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"http lua check client, write event:%d, \22%V\22\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i64 0, align 8
@NGX_READ_EVENT = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"http lua recv(): %d\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"event is active\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"HERE %d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"HERE\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_lua_check_broken_connection(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = call i32 @ngx_log_debug2(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17, i32* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %2
  %29 = load i32, i32* @ngx_event_flags, align 4
  %30 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* @NGX_WRITE_EVENT, align 8
  br label %47

45:                                               ; preds = %38
  %46 = load i64, i64* @NGX_READ_EVENT, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  store i64 %48, i64* %9, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i64 @ngx_del_event(%struct.TYPE_8__* %49, i64 %50, i32 0)
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %55, i64* %3, align 8
  br label %148

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %33, %28
  %58 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  store i64 %58, i64* %3, align 8
  br label %148

59:                                               ; preds = %2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds [1 x i8], [1 x i8]* %7, i64 0, i64 0
  %64 = load i32, i32* @MSG_PEEK, align 4
  %65 = call i32 @recv(i32 %62, i8* %63, i32 1, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %66, i64* %8, align 8
  %67 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i64 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %59
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @NGX_EAGAIN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %78
  %86 = load i64, i64* @NGX_OK, align 8
  store i64 %86, i64* %3, align 8
  br label %148

87:                                               ; preds = %81, %59
  %88 = load i32, i32* @ngx_event_flags, align 4
  %89 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %117

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i64, i64* @NGX_WRITE_EVENT, align 8
  br label %107

105:                                              ; preds = %97
  %106 = load i64, i64* @NGX_READ_EVENT, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i64 [ %104, %103 ], [ %106, %105 ]
  store i64 %108, i64* %9, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = load i64, i64* %9, align 8
  %111 = call i64 @ngx_del_event(%struct.TYPE_8__* %109, i64 %110, i32 0)
  %112 = load i64, i64* @NGX_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %115, i64* %3, align 8
  br label %148

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %92, %87
  %118 = load i32, i32* %6, align 4
  %119 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i64, i64* @NGX_OK, align 8
  store i64 %123, i64* %3, align 8
  br label %148

124:                                              ; preds = %117
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* @NGX_EAGAIN, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @dd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i64, i64* @NGX_OK, align 8
  store i64 %133, i64* %3, align 8
  br label %148

134:                                              ; preds = %127
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  store i32 1, i32* %136, align 8
  br label %138

137:                                              ; preds = %124
  store i64 0, i64* %8, align 8
  br label %138

138:                                              ; preds = %137, %134
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @NGX_LOG_INFO, align 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @ngx_log_error(i32 %141, i32 %144, i64 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %147 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  store i64 %147, i64* %3, align 8
  br label %148

148:                                              ; preds = %138, %131, %122, %114, %85, %57, %54
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i64, i8*, i32) #1

declare dso_local i32 @dd(i8*, ...) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
