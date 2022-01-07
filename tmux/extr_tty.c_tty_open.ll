; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_open.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32*, i32, i32, i32*, i32, i32*, i32 }

@TTY_OPENED = common dso_local global i32 0, align 4
@TTY_NOCURSOR = common dso_local global i32 0, align 4
@TTY_FREEZE = common dso_local global i32 0, align 4
@TTY_BLOCK = common dso_local global i32 0, align 4
@TTY_TIMER = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@tty_read_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@EV_WRITE = common dso_local global i32 0, align 4
@tty_write_callback = common dso_local global i32 0, align 4
@tty_timer_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_open(%struct.tty* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8**, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i8** %1, i8*** %5, align 8
  %6 = load %struct.tty*, %struct.tty** %4, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  %10 = getelementptr inbounds %struct.tty, %struct.tty* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32* @tty_term_find(i32 %8, i32 %11, i8** %12)
  %14 = load %struct.tty*, %struct.tty** %4, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load %struct.tty*, %struct.tty** %4, align 8
  %17 = getelementptr inbounds %struct.tty, %struct.tty* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.tty*, %struct.tty** %4, align 8
  %22 = call i32 @tty_close(%struct.tty* %21)
  store i32 -1, i32* %3, align 4
  br label %92

23:                                               ; preds = %2
  %24 = load i32, i32* @TTY_OPENED, align 4
  %25 = load %struct.tty*, %struct.tty** %4, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* @TTY_NOCURSOR, align 4
  %30 = load i32, i32* @TTY_FREEZE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TTY_BLOCK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TTY_TIMER, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load %struct.tty*, %struct.tty** %4, align 8
  %38 = getelementptr inbounds %struct.tty, %struct.tty* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.tty*, %struct.tty** %4, align 8
  %42 = getelementptr inbounds %struct.tty, %struct.tty* %41, i32 0, i32 6
  %43 = load %struct.tty*, %struct.tty** %4, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EV_PERSIST, align 4
  %47 = load i32, i32* @EV_READ, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @tty_read_callback, align 4
  %50 = load %struct.tty*, %struct.tty** %4, align 8
  %51 = call i32 @event_set(i32* %42, i32 %45, i32 %48, i32 %49, %struct.tty* %50)
  %52 = call i8* (...) @evbuffer_new()
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.tty*, %struct.tty** %4, align 8
  %55 = getelementptr inbounds %struct.tty, %struct.tty* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  %56 = load %struct.tty*, %struct.tty** %4, align 8
  %57 = getelementptr inbounds %struct.tty, %struct.tty* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %23
  %61 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %23
  %63 = load %struct.tty*, %struct.tty** %4, align 8
  %64 = getelementptr inbounds %struct.tty, %struct.tty* %63, i32 0, i32 4
  %65 = load %struct.tty*, %struct.tty** %4, align 8
  %66 = getelementptr inbounds %struct.tty, %struct.tty* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @EV_WRITE, align 4
  %69 = load i32, i32* @tty_write_callback, align 4
  %70 = load %struct.tty*, %struct.tty** %4, align 8
  %71 = call i32 @event_set(i32* %64, i32 %67, i32 %68, i32 %69, %struct.tty* %70)
  %72 = call i8* (...) @evbuffer_new()
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.tty*, %struct.tty** %4, align 8
  %75 = getelementptr inbounds %struct.tty, %struct.tty* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.tty*, %struct.tty** %4, align 8
  %77 = getelementptr inbounds %struct.tty, %struct.tty* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %62
  %81 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %62
  %83 = load %struct.tty*, %struct.tty** %4, align 8
  %84 = getelementptr inbounds %struct.tty, %struct.tty* %83, i32 0, i32 1
  %85 = load i32, i32* @tty_timer_callback, align 4
  %86 = load %struct.tty*, %struct.tty** %4, align 8
  %87 = call i32 @evtimer_set(i32* %84, i32 %85, %struct.tty* %86)
  %88 = load %struct.tty*, %struct.tty** %4, align 8
  %89 = call i32 @tty_start_tty(%struct.tty* %88)
  %90 = load %struct.tty*, %struct.tty** %4, align 8
  %91 = call i32 @tty_keys_build(%struct.tty* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %82, %20
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32* @tty_term_find(i32, i32, i8**) #1

declare dso_local i32 @tty_close(%struct.tty*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.tty*) #1

declare dso_local i8* @evbuffer_new(...) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @evtimer_set(i32*, i32, %struct.tty*) #1

declare dso_local i32 @tty_start_tty(%struct.tty*) #1

declare dso_local i32 @tty_keys_build(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
