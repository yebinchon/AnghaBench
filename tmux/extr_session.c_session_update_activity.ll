; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_update_activity.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_update_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i64, i32, i32, %struct.timeval, i32, i32, %struct.timeval }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"session $%u %s activity %lld.%06d (last %lld.%06d)\00", align 1
@session_lock_timer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"lock-after-time\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @session_update_activity(%struct.session* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %7 = load %struct.session*, %struct.session** %3, align 8
  %8 = getelementptr inbounds %struct.session, %struct.session* %7, i32 0, i32 6
  store %struct.timeval* %8, %struct.timeval** %5, align 8
  %9 = load %struct.timeval*, %struct.timeval** %5, align 8
  %10 = load %struct.session*, %struct.session** %3, align 8
  %11 = getelementptr inbounds %struct.session, %struct.session* %10, i32 0, i32 3
  %12 = call i32 @memcpy(%struct.timeval* %9, %struct.timeval* %11, i32 16)
  %13 = load %struct.timeval*, %struct.timeval** %4, align 8
  %14 = icmp eq %struct.timeval* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.session*, %struct.session** %3, align 8
  %17 = getelementptr inbounds %struct.session, %struct.session* %16, i32 0, i32 3
  %18 = call i32 @gettimeofday(%struct.timeval* %17, i32* null)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.session*, %struct.session** %3, align 8
  %21 = getelementptr inbounds %struct.session, %struct.session* %20, i32 0, i32 3
  %22 = load %struct.timeval*, %struct.timeval** %4, align 8
  %23 = call i32 @memcpy(%struct.timeval* %21, %struct.timeval* %22, i32 16)
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.session*, %struct.session** %3, align 8
  %26 = getelementptr inbounds %struct.session, %struct.session* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.session*, %struct.session** %3, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.session*, %struct.session** %3, align 8
  %32 = getelementptr inbounds %struct.session, %struct.session* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.session*, %struct.session** %3, align 8
  %36 = getelementptr inbounds %struct.session, %struct.session* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.timeval*, %struct.timeval** %5, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.timeval*, %struct.timeval** %5, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @log_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i64 %34, i32 %39, i64 %42, i32 %46)
  %48 = load %struct.session*, %struct.session** %3, align 8
  %49 = getelementptr inbounds %struct.session, %struct.session* %48, i32 0, i32 1
  %50 = call i64 @evtimer_initialized(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %24
  %53 = load %struct.session*, %struct.session** %3, align 8
  %54 = getelementptr inbounds %struct.session, %struct.session* %53, i32 0, i32 1
  %55 = call i32 @evtimer_del(i32* %54)
  br label %62

56:                                               ; preds = %24
  %57 = load %struct.session*, %struct.session** %3, align 8
  %58 = getelementptr inbounds %struct.session, %struct.session* %57, i32 0, i32 1
  %59 = load i32, i32* @session_lock_timer, align 4
  %60 = load %struct.session*, %struct.session** %3, align 8
  %61 = call i32 @evtimer_set(i32* %58, i32 %59, %struct.session* %60)
  br label %62

62:                                               ; preds = %56, %52
  %63 = load %struct.session*, %struct.session** %3, align 8
  %64 = getelementptr inbounds %struct.session, %struct.session* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = call i32 @timerclear(%struct.timeval* %6)
  %69 = load %struct.session*, %struct.session** %3, align 8
  %70 = getelementptr inbounds %struct.session, %struct.session* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @options_get_number(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.session*, %struct.session** %3, align 8
  %79 = getelementptr inbounds %struct.session, %struct.session* %78, i32 0, i32 1
  %80 = call i32 @evtimer_add(i32* %79, %struct.timeval* %6)
  br label %81

81:                                               ; preds = %77, %67
  br label %82

82:                                               ; preds = %81, %62
  ret void
}

declare dso_local i32 @memcpy(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @log_debug(i8*, i32, i32, i64, i32, i64, i32) #1

declare dso_local i64 @evtimer_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.session*) #1

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i64 @options_get_number(i32, i8*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
