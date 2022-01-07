; ModuleID = '/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_cycle.c'
source_filename = "/home/carl/AnghaBench/tengine/src/proc/extr_ngx_proc.c_ngx_procs_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_25__*, i64 }
%struct.TYPE_25__ = type { i32 (%struct.TYPE_25__*)* }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_23__*)*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, i32 }

@NGX_PROCESS_PROC = common dso_local global i32 0, align 4
@ngx_process = common dso_local global i32 0, align 4
@ngx_use_accept_mutex = common dso_local global i64 0, align 8
@ngx_exiting = common dso_local global i32 0, align 4
@ngx_quit = common dso_local global i64 0, align 8
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"process %V gracefully shutting down\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"processes are shutting down\00", align 1
@ngx_terminate = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"process %V exiting\00", align 1
@ngx_reopen = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"reopening logs\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i8*)* @ngx_procs_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_procs_cycle(%struct.TYPE_23__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %8, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %7, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %11, align 8
  %23 = load i32, i32* @NGX_PROCESS_PROC, align 4
  store i32 %23, i32* @ngx_process, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @ngx_setproctitle(i8* %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ngx_msleep(i32 %32)
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ngx_procs_process_init(%struct.TYPE_23__* %34, %struct.TYPE_19__* %35, i32 %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = call i32 @ngx_close_listening_sockets(%struct.TYPE_23__* %40)
  store i64 0, i64* @ngx_use_accept_mutex, align 8
  br label %42

42:                                               ; preds = %147, %2
  %43 = load i32, i32* @ngx_exiting, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @ngx_quit, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %45, %42
  store i32 1, i32* @ngx_exiting, align 4
  %49 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %49, i32 %52, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %54)
  %56 = call i32 @ngx_setproctitle(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %58, align 8
  store %struct.TYPE_24__* %59, %struct.TYPE_24__** %10, align 8
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %99, %48
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %60
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %98

73:                                               ; preds = %66
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %90, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = call i32 %91(%struct.TYPE_25__* %96)
  br label %98

98:                                               ; preds = %80, %73, %66
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %6, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %6, align 8
  br label %60

102:                                              ; preds = %60
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %105 = call i32 @ngx_procs_process_exit(%struct.TYPE_23__* %103, %struct.TYPE_19__* %104)
  br label %106

106:                                              ; preds = %102, %45
  %107 = load i64, i64* @ngx_terminate, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %110, i32 %113, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %115)
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %119 = call i32 @ngx_procs_process_exit(%struct.TYPE_23__* %117, %struct.TYPE_19__* %118)
  br label %120

120:                                              ; preds = %109, %106
  %121 = load i64, i64* @ngx_reopen, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  store i64 0, i64* @ngx_reopen, align 8
  %124 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %124, i32 %127, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %130 = call i32 @ngx_reopen_files(%struct.TYPE_23__* %129, i32 -1)
  br label %131

131:                                              ; preds = %123, %120
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %133, align 8
  %135 = icmp ne i32 (%struct.TYPE_23__*)* %134, null
  br i1 %135, label %136, label %147

136:                                              ; preds = %131
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %138, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = call i32 %139(%struct.TYPE_23__* %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @NGX_OK, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %151

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %131
  %148 = call i32 (...) @ngx_time_update()
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %150 = call i32 @ngx_process_events_and_timers(%struct.TYPE_23__* %149)
  br label %42

151:                                              ; preds = %145
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %154 = call i32 @ngx_procs_process_exit(%struct.TYPE_23__* %152, %struct.TYPE_19__* %153)
  ret void
}

declare dso_local i32 @ngx_setproctitle(i8*) #1

declare dso_local i32 @ngx_msleep(i32) #1

declare dso_local i32 @ngx_procs_process_init(%struct.TYPE_23__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_close_listening_sockets(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_procs_process_exit(%struct.TYPE_23__*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_reopen_files(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_time_update(...) #1

declare dso_local i32 @ngx_process_events_and_timers(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
