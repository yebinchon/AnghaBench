; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_add_connection.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_rtsig_module.c_ngx_rtsig_add_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"rtsig enable connection: fd:%d\00", align 1
@F_SETOWN = common dso_local global i32 0, align 4
@ngx_pid = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fcntl(F_SETOWN) failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_12__* null, align 8
@ngx_rtsig_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"rtsig add connection: fd:%d signo:%ui\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_ASYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"fcntl(O_RDWR|O_NONBLOCK|O_ASYNC) failed\00", align 1
@F_SETSIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"fcntl(F_SETSIG) failed\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@F_SETAUXFL = common dso_local global i32 0, align 4
@O_ONESIGFD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @ngx_rtsig_add_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtsig_add_connection(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %12
  %20 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug1(i32 %20, i32 %23, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @F_SETOWN, align 4
  %32 = load i32, i32* @ngx_pid, align 4
  %33 = call i32 @fcntl(i32 %30, i32 %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %43

35:                                               ; preds = %19
  %36 = load i32, i32* @NGX_LOG_ALERT, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ngx_errno, align 4
  %41 = call i32 @ngx_log_error(i32 %36, i32 %39, i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @NGX_ERROR, align 4
  store i32 %42, i32* %2, align 4
  br label %138

43:                                               ; preds = %19
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %12, %1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ngx_rtsig_module, align 4
  %57 = call %struct.TYPE_10__* @ngx_event_get_conf(i32 %55, i32 %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %60, %65
  store i64 %66, i64* %4, align 8
  %67 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @ngx_log_debug2(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %73, i64 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @F_SETFL, align 4
  %80 = load i32, i32* @O_RDWR, align 4
  %81 = load i32, i32* @O_NONBLOCK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @O_ASYNC, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @fcntl(i32 %78, i32 %79, i32 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %95

87:                                               ; preds = %52
  %88 = load i32, i32* @NGX_LOG_ALERT, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ngx_errno, align 4
  %93 = call i32 @ngx_log_error(i32 %88, i32 %91, i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %94 = load i32, i32* @NGX_ERROR, align 4
  store i32 %94, i32* %2, align 4
  br label %138

95:                                               ; preds = %52
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @F_SETSIG, align 4
  %100 = load i64, i64* %4, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @fcntl(i32 %98, i32 %99, i32 %101)
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load i32, i32* @NGX_LOG_ALERT, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ngx_errno, align 4
  %110 = call i32 @ngx_log_error(i32 %105, i32 %108, i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @NGX_ERROR, align 4
  store i32 %111, i32* %2, align 4
  br label %138

112:                                              ; preds = %95
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @F_SETOWN, align 4
  %117 = load i32, i32* @ngx_pid, align 4
  %118 = call i32 @fcntl(i32 %115, i32 %116, i32 %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load i32, i32* @NGX_LOG_ALERT, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ngx_errno, align 4
  %126 = call i32 @ngx_log_error(i32 %121, i32 %124, i32 %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @NGX_ERROR, align 4
  store i32 %127, i32* %2, align 4
  br label %138

128:                                              ; preds = %112
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 1, i32* %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* @NGX_OK, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %128, %120, %104, %87, %35
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_10__* @ngx_event_get_conf(i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
