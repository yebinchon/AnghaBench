; ModuleID = '/home/carl/AnghaBench/tmux/extr_names.c_check_window_name.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_names.c_check_window_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.window = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"automatic-rename\00", align 1
@PANE_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"@%u active pane not changed\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"@%u active pane changed\00", align 1
@name_time_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"@%u name timer queued (%d left)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"@%u name timer already queued (%d left)\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"@%u new name %s (was %s)\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"@%u name not changed (still %s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_window_name(%struct.window* %0) #0 {
  %2 = alloca %struct.window*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.window* %0, %struct.window** %2, align 8
  %7 = load %struct.window*, %struct.window** %2, align 8
  %8 = getelementptr inbounds %struct.window, %struct.window* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %133

12:                                               ; preds = %1
  %13 = load %struct.window*, %struct.window** %2, align 8
  %14 = getelementptr inbounds %struct.window, %struct.window* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @options_get_number(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %133

19:                                               ; preds = %12
  %20 = load %struct.window*, %struct.window** %2, align 8
  %21 = getelementptr inbounds %struct.window, %struct.window* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @PANE_CHANGED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.window*, %struct.window** %2, align 8
  %31 = getelementptr inbounds %struct.window, %struct.window* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %133

34:                                               ; preds = %19
  %35 = load %struct.window*, %struct.window** %2, align 8
  %36 = getelementptr inbounds %struct.window, %struct.window* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %40 = load %struct.window*, %struct.window** %2, align 8
  %41 = call i32 @name_time_expired(%struct.window* %40, %struct.timeval* %3)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %34
  %45 = load %struct.window*, %struct.window** %2, align 8
  %46 = getelementptr inbounds %struct.window, %struct.window* %45, i32 0, i32 3
  %47 = call i64 @event_initialized(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load %struct.window*, %struct.window** %2, align 8
  %51 = getelementptr inbounds %struct.window, %struct.window* %50, i32 0, i32 3
  %52 = load i32, i32* @name_time_callback, align 4
  %53 = load %struct.window*, %struct.window** %2, align 8
  %54 = call i32 @evtimer_set(i32* %51, i32 %52, %struct.window* %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.window*, %struct.window** %2, align 8
  %57 = getelementptr inbounds %struct.window, %struct.window* %56, i32 0, i32 3
  %58 = call i32 @evtimer_pending(i32* %57, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load %struct.window*, %struct.window** %2, align 8
  %62 = getelementptr inbounds %struct.window, %struct.window* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64)
  %66 = call i32 @timerclear(%struct.timeval* %4)
  %67 = load i32, i32* %6, align 4
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.window*, %struct.window** %2, align 8
  %70 = getelementptr inbounds %struct.window, %struct.window* %69, i32 0, i32 3
  %71 = call i32 @event_add(i32* %70, %struct.timeval* %4)
  br label %78

72:                                               ; preds = %55
  %73 = load %struct.window*, %struct.window** %2, align 8
  %74 = getelementptr inbounds %struct.window, %struct.window* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %60
  br label %133

79:                                               ; preds = %34
  %80 = load %struct.window*, %struct.window** %2, align 8
  %81 = getelementptr inbounds %struct.window, %struct.window* %80, i32 0, i32 4
  %82 = call i32 @memcpy(i32* %81, %struct.timeval* %3, i32 4)
  %83 = load %struct.window*, %struct.window** %2, align 8
  %84 = getelementptr inbounds %struct.window, %struct.window* %83, i32 0, i32 3
  %85 = call i64 @event_initialized(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = load %struct.window*, %struct.window** %2, align 8
  %89 = getelementptr inbounds %struct.window, %struct.window* %88, i32 0, i32 3
  %90 = call i32 @evtimer_del(i32* %89)
  br label %91

91:                                               ; preds = %87, %79
  %92 = load i32, i32* @PANE_CHANGED, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.window*, %struct.window** %2, align 8
  %95 = getelementptr inbounds %struct.window, %struct.window* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %93
  store i32 %99, i32* %97, align 4
  %100 = load %struct.window*, %struct.window** %2, align 8
  %101 = call i8* @format_window_name(%struct.window* %100)
  store i8* %101, i8** %5, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.window*, %struct.window** %2, align 8
  %104 = getelementptr inbounds %struct.window, %struct.window* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @strcmp(i8* %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %91
  %109 = load %struct.window*, %struct.window** %2, align 8
  %110 = getelementptr inbounds %struct.window, %struct.window* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i8*, i8** %5, align 8
  %113 = load %struct.window*, %struct.window** %2, align 8
  %114 = getelementptr inbounds %struct.window, %struct.window* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %111, i8* %112, i32 %115)
  %117 = load %struct.window*, %struct.window** %2, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i32 @window_set_name(%struct.window* %117, i8* %118)
  %120 = load %struct.window*, %struct.window** %2, align 8
  %121 = call i32 @server_status_window(%struct.window* %120)
  br label %130

122:                                              ; preds = %91
  %123 = load %struct.window*, %struct.window** %2, align 8
  %124 = getelementptr inbounds %struct.window, %struct.window* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.window*, %struct.window** %2, align 8
  %127 = getelementptr inbounds %struct.window, %struct.window* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, i32, ...) @log_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %122, %108
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @free(i8* %131)
  br label %133

133:                                              ; preds = %130, %78, %29, %18, %11
  ret void
}

declare dso_local i32 @options_get_number(i32, i8*) #1

declare dso_local i32 @log_debug(i8*, i32, ...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @name_time_expired(%struct.window*, %struct.timeval*) #1

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.window*) #1

declare dso_local i32 @evtimer_pending(i32*, i32*) #1

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @event_add(i32*, %struct.timeval*) #1

declare dso_local i32 @memcpy(i32*, %struct.timeval*, i32) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i8* @format_window_name(%struct.window*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @window_set_name(%struct.window*, i8*) #1

declare dso_local i32 @server_status_window(%struct.window*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
