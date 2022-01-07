; ModuleID = '/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_set_event.c'
source_filename = "/home/carl/AnghaBench/tengine/src/event/modules/extr_ngx_kqueue_module.c_ngx_kqueue_set_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i16, i32, i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.timespec = type { i64, i64 }

@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"kevent set event: %d: ft:%i fl:%04Xi\00", align 1
@nchanges = common dso_local global i64 0, align 8
@max_changes = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"kqueue change list is filled up\00", align 1
@ngx_kqueue = common dso_local global i32 0, align 4
@change_list = common dso_local global %struct.kevent* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"kevent() failed\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i64 0, align 8
@NOTE_DELETE = common dso_local global i32 0, align 4
@NOTE_WRITE = common dso_local global i32 0, align 4
@NOTE_EXTEND = common dso_local global i32 0, align 4
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@NOTE_RENAME = common dso_local global i32 0, align 4
@NGX_FLUSH_EVENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"kevent flush\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOWAT_EVENT = common dso_local global i32 0, align 4
@NOTE_LOWAT = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i32)* @ngx_kqueue_set_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_kqueue_set_event(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kevent*, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %10, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ngx_log_debug3(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %21, i32 %22)
  %24 = load i64, i64* @nchanges, align 8
  %25 = load i64, i64* @max_changes, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %3
  %28 = load i32, i32* @NGX_LOG_WARN, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ngx_log_error(i32 %28, i32 %31, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @ngx_kqueue, align 4
  %36 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %37 = load i64, i64* @nchanges, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @kevent(i32 %35, %struct.kevent* %36, i32 %38, i32* null, i32 0, %struct.timespec* %9)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %49

41:                                               ; preds = %27
  %42 = load i32, i32* @NGX_LOG_ALERT, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %133

49:                                               ; preds = %27
  store i64 0, i64* @nchanges, align 8
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %52 = load i64, i64* @nchanges, align 8
  %53 = getelementptr inbounds %struct.kevent, %struct.kevent* %51, i64 %52
  store %struct.kevent* %53, %struct.kevent** %8, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.kevent*, %struct.kevent** %8, align 8
  %58 = getelementptr inbounds %struct.kevent, %struct.kevent* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i16
  %61 = load %struct.kevent*, %struct.kevent** %8, align 8
  %62 = getelementptr inbounds %struct.kevent, %struct.kevent* %61, i32 0, i32 0
  store i16 %60, i16* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.kevent*, %struct.kevent** %8, align 8
  %66 = getelementptr inbounds %struct.kevent, %struct.kevent* %65, i32 0, i32 4
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = ptrtoint %struct.TYPE_4__* %67 to i64
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %68, %71
  %73 = call i32 @NGX_KQUEUE_UDATA_T(i64 %72)
  %74 = load %struct.kevent*, %struct.kevent** %8, align 8
  %75 = getelementptr inbounds %struct.kevent, %struct.kevent* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @EVFILT_VNODE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %50
  %80 = load i32, i32* @NOTE_DELETE, align 4
  %81 = load i32, i32* @NOTE_WRITE, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @NOTE_EXTEND, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NOTE_ATTRIB, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NOTE_RENAME, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.kevent*, %struct.kevent** %8, align 8
  %90 = getelementptr inbounds %struct.kevent, %struct.kevent* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.kevent*, %struct.kevent** %8, align 8
  %92 = getelementptr inbounds %struct.kevent, %struct.kevent* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %98

93:                                               ; preds = %50
  %94 = load %struct.kevent*, %struct.kevent** %8, align 8
  %95 = getelementptr inbounds %struct.kevent, %struct.kevent* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.kevent*, %struct.kevent** %8, align 8
  %97 = getelementptr inbounds %struct.kevent, %struct.kevent* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %79
  %99 = load i64, i64* @nchanges, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* @nchanges, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* @nchanges, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @NGX_FLUSH_EVENT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ngx_log_debug0(i32 %111, i32 %114, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ngx_kqueue, align 4
  %117 = load %struct.kevent*, %struct.kevent** @change_list, align 8
  %118 = load i64, i64* @nchanges, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @kevent(i32 %116, %struct.kevent* %117, i32 %119, i32* null, i32 0, %struct.timespec* %9)
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %122, label %130

122:                                              ; preds = %108
  %123 = load i32, i32* @NGX_LOG_ALERT, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ngx_errno, align 4
  %128 = call i32 @ngx_log_error(i32 %123, i32 %126, i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %4, align 8
  br label %133

130:                                              ; preds = %108
  store i64 0, i64* @nchanges, align 8
  br label %131

131:                                              ; preds = %130, %98
  %132 = load i64, i64* @NGX_OK, align 8
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %131, %122, %41
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #1

declare dso_local i32 @NGX_KQUEUE_UDATA_T(i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
