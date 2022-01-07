; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_check_broken_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_check_broken_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_16__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i32, i64, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"http upstream check client, write event:%d, \22%V\22\00", align 1
@ngx_event_flags = common dso_local global i32 0, align 4
@NGX_USE_LEVEL_EVENT = common dso_local global i32 0, align 4
@NGX_WRITE_EVENT = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"http upstream recv(): %d\00", align 1
@NGX_EAGAIN = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [75 x i8] c"client prematurely closed connection, so upstream connection is closed too\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@NGX_DISABLE_EVENT = common dso_local global i32 0, align 4
@NGX_USE_EPOLL_EVENT = common dso_local global i32 0, align 4
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@ngx_use_epoll_rdhup = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @ngx_http_upstream_check_broken_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_check_broken_connection(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x i8], align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = call i32 @ngx_log_debug2(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %17, i32* %19)
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %10, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %2
  %32 = load i32, i32* @ngx_event_flags, align 4
  %33 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @NGX_WRITE_EVENT, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NGX_READ_EVENT, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %8, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @ngx_del_event(%struct.TYPE_15__* %52, i32 %53, i32 0)
  %55 = load i64, i64* @NGX_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %61 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__* %58, %struct.TYPE_13__* %59, i32 %60)
  br label %192

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %36, %31
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %71 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %72 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__* %69, %struct.TYPE_13__* %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %63
  br label %192

74:                                               ; preds = %2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %79 = load i32, i32* @MSG_PEEK, align 4
  %80 = call i32 @recv(i32 %77, i8* %78, i32 1, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i64, i64* @ngx_socket_errno, align 8
  store i64 %81, i64* %7, align 8
  %82 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @ngx_log_debug1(i32 %82, i32 %85, i64 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
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
  br label %192

101:                                              ; preds = %96, %74
  %102 = load i32, i32* @ngx_event_flags, align 4
  %103 = load i32, i32* @NGX_USE_LEVEL_EVENT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %133

106:                                              ; preds = %101
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 4
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
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i64 @ngx_del_event(%struct.TYPE_15__* %122, i32 %123, i32 0)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %130 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %131 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__* %128, %struct.TYPE_13__* %129, i32 %130)
  br label %192

132:                                              ; preds = %120
  br label %133

133:                                              ; preds = %132, %106, %101
  %134 = load i32, i32* %5, align 4
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  br label %192

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
  br label %192

145:                                              ; preds = %140
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %149

148:                                              ; preds = %137
  store i64 0, i64* %7, align 8
  br label %149

149:                                              ; preds = %148, %145
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %149
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %158
  %165 = load i32, i32* @NGX_LOG_INFO, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %7, align 8
  %170 = call i32 @ngx_log_error(i32 %165, i32 %168, i64 %169, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %173 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %174 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__* %171, %struct.TYPE_13__* %172, i32 %173)
  br label %192

175:                                              ; preds = %158, %149
  %176 = load i32, i32* @NGX_LOG_INFO, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @ngx_log_error(i32 %176, i32 %179, i64 %180, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %175
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %190 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %191 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__* %188, %struct.TYPE_13__* %189, i32 %190)
  br label %192

192:                                              ; preds = %57, %73, %100, %127, %136, %144, %164, %187, %175
  ret void
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local i64 @ngx_del_event(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i64, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
