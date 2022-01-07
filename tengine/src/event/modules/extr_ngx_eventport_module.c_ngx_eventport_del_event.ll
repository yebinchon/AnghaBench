; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_del_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_eventport_module.c_ngx_eventport_del_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"eventport change event: fd:%d ev:%04Xi\00", align 1
@ep = common dso_local global i32 0, align 4
@PORT_SOURCE_FD = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"port_associate() failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"eventport del event: fd:%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"port_dissociate() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @ngx_eventport_del_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_eventport_del_event(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @NGX_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %107

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NGX_READ_EVENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %8, align 8
  %31 = load i32, i32* @POLLOUT, align 4
  store i32 %31, i32* %6, align 4
  br label %37

32:                                               ; preds = %20
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %8, align 8
  %36 = load i32, i32* @POLLIN, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %37
  %43 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @ngx_log_debug2(i32 %43, i32 %46, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @ep, align 4
  %53 = load i32, i32* @PORT_SOURCE_FD, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = ptrtoint %struct.TYPE_4__* %58 to i64
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %59, %62
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @port_associate(i32 %52, i32 %53, i32 %56, i32 %57, i8* %64)
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %75

67:                                               ; preds = %42
  %68 = load i32, i32* @NGX_LOG_ALERT, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ngx_errno, align 4
  %73 = call i32 @ngx_log_error(i32 %68, i32 %71, i32 %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @NGX_ERROR, align 4
  store i32 %74, i32* %4, align 4
  br label %107

75:                                               ; preds = %42
  br label %101

76:                                               ; preds = %37
  %77 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ngx_log_debug1(i32 %77, i32 %80, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @ep, align 4
  %86 = load i32, i32* @PORT_SOURCE_FD, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @port_dissociate(i32 %85, i32 %86, i32 %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %100

92:                                               ; preds = %76
  %93 = load i32, i32* @NGX_LOG_ALERT, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ngx_errno, align 4
  %98 = call i32 @ngx_log_error(i32 %93, i32 %96, i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %99 = load i32, i32* @NGX_ERROR, align 4
  store i32 %99, i32* %4, align 4
  br label %107

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %75
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* @NGX_OK, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %101, %92, %67, %14
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @port_associate(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @port_dissociate(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
