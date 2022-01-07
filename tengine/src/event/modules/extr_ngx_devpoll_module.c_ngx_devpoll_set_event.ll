; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_set_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_devpoll_module.c_ngx_devpoll_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"devpoll fd:%d ev:%04Xi fl:%04Xi\00", align 1
@nchanges = common dso_local global i32 0, align 4
@max_changes = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"/dev/pool change list is filled up\00", align 1
@dp = common dso_local global i32 0, align 4
@change_list = common dso_local global %struct.TYPE_9__* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"write(/dev/poll) failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@change_index = common dso_local global %struct.TYPE_7__** null, align 8
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i32)* @ngx_devpoll_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_devpoll_set_event(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %9, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ngx_log_debug3(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20, i32 %21)
  %23 = load i32, i32* @nchanges, align 4
  %24 = load i32, i32* @max_changes, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %3
  %27 = load i32, i32* @NGX_LOG_WARN, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_error(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @nchanges, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* @dp, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @change_list, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @write(i32 %35, %struct.TYPE_9__* %36, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load i32, i32* @NGX_LOG_ALERT, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %106

49:                                               ; preds = %26
  store i32 0, i32* @nchanges, align 4
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @change_list, align 8
  %55 = load i32, i32* @nchanges, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %53, i32* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i16
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @change_list, align 8
  %62 = load i32, i32* @nchanges, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i16 %60, i16* %65, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** @change_list, align 8
  %67 = load i32, i32* @nchanges, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @change_index, align 8
  %73 = load i32, i32* @nchanges, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i64 %74
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %75, align 8
  %76 = load i32, i32* @nchanges, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @nchanges, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @nchanges, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %50
  %86 = load i32, i32* @nchanges, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 4
  store i64 %88, i64* %8, align 8
  %89 = load i32, i32* @dp, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** @change_list, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i64 @write(i32 %89, %struct.TYPE_9__* %90, i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load i32, i32* @NGX_LOG_ALERT, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ngx_errno, align 4
  %101 = call i32 @ngx_log_error(i32 %96, i32 %99, i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i64, i64* @NGX_ERROR, align 8
  store i64 %102, i64* %4, align 8
  br label %106

103:                                              ; preds = %85
  store i32 0, i32* @nchanges, align 4
  br label %104

104:                                              ; preds = %103, %50
  %105 = load i64, i64* @NGX_OK, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %104, %95, %41
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @write(i32, %struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
