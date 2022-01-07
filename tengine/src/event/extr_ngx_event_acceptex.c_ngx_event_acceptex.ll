; ModuleID = '/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_acceptex.c_ngx_event_acceptex.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/extr_ngx_event_acceptex.c_ngx_event_acceptex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_12__, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__, i32, i32, i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_17__*, i32, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_13__ = type { i64, i64, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)*, i32, i64, i64, i64, i32, %struct.TYPE_18__ }

@ngx_accept_log_error = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"AcceptEx: %d\00", align 1
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"AcceptEx() %V failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_UPDATE_ACCEPT_CONTEXT = common dso_local global i32 0, align 4
@ngx_socket_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"setsockopt(SO_UPDATE_ACCEPT_CONTEXT) failed for %V\00", align 1
@ngx_connection_counter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_event_acceptex(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 2
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 10
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %3, align 8
  %11 = load i32, i32* @ngx_accept_log_error, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ngx_log_debug1(i32 %16, %struct.TYPE_17__* %19, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load i32, i32* @NGX_LOG_CRIT, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 6
  %40 = call i32 @ngx_log_error(i32 %30, %struct.TYPE_17__* %33, i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %39)
  br label %178

41:                                               ; preds = %1
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SOL_SOCKET, align 4
  %46 = load i32, i32* @SO_UPDATE_ACCEPT_CONTEXT, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 5
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @setsockopt(i32 %44, i32 %45, i32 %46, i8* %49, i32 4)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %61

52:                                               ; preds = %41
  %53 = load i32, i32* @NGX_LOG_CRIT, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = load i32, i32* @ngx_socket_errno, align 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = call i32 @ngx_log_error(i32 %53, %struct.TYPE_17__* %56, i32 %57, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %59)
  br label %178

61:                                               ; preds = %41
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 16
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 16
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 6
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = call i32 @ngx_getacceptexsockaddrs(i32 %66, i64 %69, i64 %73, i64 %77, i32* %79, i32* %81, i32* %83, i32* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %61
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %94
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store i64 %111, i64* %115, align 8
  br label %119

116:                                              ; preds = %61
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 5
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %118, align 8
  br label %119

119:                                              ; preds = %116, %91
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %119
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32* @ngx_pnalloc(i32 %127, i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  store i32* %131, i32** %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %178

141:                                              ; preds = %124
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @ngx_sock_ntop(i32 %144, i32 %147, i32* %151, i32 %154, i32 0)
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i64 %155, i64* %158, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %141
  br label %178

165:                                              ; preds = %141
  br label %166

166:                                              ; preds = %165, %119
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %168 = call i32 @ngx_event_post_acceptex(%struct.TYPE_14__* %167, i32 1)
  %169 = load i32, i32* @ngx_connection_counter, align 4
  %170 = call i32 @ngx_atomic_fetch_add(i32 %169, i32 1)
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %174, align 8
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %177 = call i32 %175(%struct.TYPE_16__* %176)
  br label %178

178:                                              ; preds = %166, %164, %140, %52, %29
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_17__*, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_17__*, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_getacceptexsockaddrs(i32, i64, i64, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i64 @ngx_sock_ntop(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_event_post_acceptex(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_atomic_fetch_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
