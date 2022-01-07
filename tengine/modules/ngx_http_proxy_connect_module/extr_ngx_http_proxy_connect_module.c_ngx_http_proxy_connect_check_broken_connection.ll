; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_check_broken_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c_ngx_http_proxy_connect_check_broken_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"proxy_connect: check client, write event:%d, \22%V:%V\22\00", align 1
@ngx_http_proxy_connect_module = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"proxy_connect: upstream recv(): %d\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"proxy_connect: client prematurely closed connection, so upstream connection is closed too\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"proxy_connect: client prematurely closed connection\00", align 1
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_18__*)* @ngx_http_proxy_connect_check_broken_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_proxy_connect_check_broken_connection(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = call i32 @ngx_log_debug3(i32 %12, i32 %15, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %18, i32* %20, i32* %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  store %struct.TYPE_19__* %26, %struct.TYPE_19__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = load i32, i32* @ngx_http_proxy_connect_module, align 4
  %29 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_15__* %27, i32 %28)
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %10, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  store %struct.TYPE_16__* %32, %struct.TYPE_16__** %11, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %2
  %38 = load i32, i32* @ngx_event_flags, align 4
  %39 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %37
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @NGX_WRITE_EVENT, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @NGX_READ_EVENT, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %8, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @ngx_del_event(%struct.TYPE_18__* %58, i32 %59, i32 0)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %67 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__* %64, %struct.TYPE_16__* %65, i32 %66)
  br label %187

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %42, %37
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %73 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__* %70, %struct.TYPE_16__* %71, i32 %72)
  br label %187

74:                                               ; preds = %2
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %79 = load i32, i32* @MSG_PEEK, align 4
  %80 = call i32 @recv(i32 %77, i8* %78, i32 1, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %81, i64* %7, align 8
  %82 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ngx_log_debug1(i32 %82, i32 %85, i64 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %74
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @NGX_EAGAIN, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %93
  br label %187

101:                                              ; preds = %96, %74
  %102 = load i32, i32* @ngx_event_flags, align 4
  %103 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* @NGX_WRITE_EVENT, align 4
  br label %120

118:                                              ; preds = %111
  %119 = load i32, i32* @NGX_READ_EVENT, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  store i32 %121, i32* %8, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @ngx_del_event(%struct.TYPE_18__* %122, i32 %123, i32 0)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %130 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %131 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__* %128, %struct.TYPE_16__* %129, i32 %130)
  br label %187

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %106, %101
  %134 = load i32, i32* %5, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %187

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i64, i64* %7, align 8
  %142 = load i64, i64* @NGX_EAGAIN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %187

145:                                              ; preds = %140
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %149

148:                                              ; preds = %137
  store i64 0, i64* %7, align 8
  br label %149

149:                                              ; preds = %148, %145
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 4
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %149
  %160 = load i32, i32* @NGX_LOG_INFO, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %7, align 8
  %165 = call i32 @ngx_log_error(i32 %160, i32 %163, i64 %164, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %168 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %169 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__* %166, %struct.TYPE_16__* %167, i32 %168)
  br label %187

170:                                              ; preds = %149
  %171 = load i32, i32* @NGX_LOG_INFO, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load i64, i64* %7, align 8
  %176 = call i32 @ngx_log_error(i32 %171, i32 %174, i64 %175, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %170
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %185 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %186 = call i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__* %183, %struct.TYPE_16__* %184, i32 %185)
  br label %187

187:                                              ; preds = %63, %69, %100, %127, %136, %144, %159, %182, %170
  ret void
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ngx_http_proxy_connect_finalize_request(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i64, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
