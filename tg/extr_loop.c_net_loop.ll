; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_net_loop.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_net_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@delete_stdin_event = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@E_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Starting netloop\0A\00", align 1
@TLS = common dso_local global %struct.TYPE_3__* null, align 8
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@stdin_read_callback = common dso_local global i32 0, align 4
@term_ev = common dso_local global i64 0, align 8
@EVLOOP_ONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"delete stdin\0A\00", align 1
@safe_quit = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"All done. Exit\0A\00", align 1
@sigterm_cnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @net_loop() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @delete_stdin_event, align 8
  %2 = load i64, i64* @verbosity, align 8
  %3 = load i64, i64* @E_DEBUG, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @logprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EV_READ, align 4
  %12 = load i32, i32* @EV_PERSIST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @stdin_read_callback, align 4
  %15 = call i64 @event_new(i32 %10, i32 0, i32 %13, i32 %14, i32 0)
  store i64 %15, i64* @term_ev, align 8
  %16 = load i64, i64* @term_ev, align 8
  %17 = call i32 @event_add(i64 %16, i32 0)
  %18 = call i32 @time(i32 0)
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %7, %59
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EVLOOP_ONCE, align 4
  %24 = call i32 @event_base_loop(i32 %22, i32 %23)
  %25 = load i64, i64* @term_ev, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i64, i64* @delete_stdin_event, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 @logprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i64, i64* @term_ev, align 8
  %33 = call i32 @event_free(i64 %32)
  store i64 0, i64* @term_ev, align 8
  br label %34

34:                                               ; preds = %30, %27, %19
  %35 = load i64, i64* @safe_quit, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32 @do_halt(i32 0)
  store i64 0, i64* @safe_quit, align 8
  br label %45

45:                                               ; preds = %42, %37, %34
  %46 = load i64, i64* @sigterm_cnt, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @do_halt(i32 0)
  br label %50

50:                                               ; preds = %48, %45
  %51 = call i32 @time(i32 0)
  %52 = load i32, i32* %1, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp sgt i32 %53, 3600
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @TLS, align 8
  %57 = call i32 @tgl_do_lookup_state(%struct.TYPE_3__* %56)
  %58 = call i32 @time(i32 0)
  store i32 %58, i32* %1, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = call i32 (...) @write_state_file()
  %61 = call i32 (...) @update_prompt()
  br label %19
}

declare dso_local i32 @logprintf(i8*) #1

declare dso_local i64 @event_new(i32, i32, i32, i32, i32) #1

declare dso_local i32 @event_add(i64, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @event_base_loop(i32, i32) #1

declare dso_local i32 @event_free(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @do_halt(i32) #1

declare dso_local i32 @tgl_do_lookup_state(%struct.TYPE_3__*) #1

declare dso_local i32 @write_state_file(...) #1

declare dso_local i32 @update_prompt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
