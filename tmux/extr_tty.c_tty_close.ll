; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_close.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@TTY_OPENED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_close(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %3 = load %struct.tty*, %struct.tty** %2, align 8
  %4 = getelementptr inbounds %struct.tty, %struct.tty* %3, i32 0, i32 7
  %5 = call i64 @event_initialized(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.tty*, %struct.tty** %2, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 7
  %10 = call i32 @evtimer_del(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.tty*, %struct.tty** %2, align 8
  %13 = call i32 @tty_stop_tty(%struct.tty* %12)
  %14 = load %struct.tty*, %struct.tty** %2, align 8
  %15 = getelementptr inbounds %struct.tty, %struct.tty* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TTY_OPENED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %11
  %21 = load %struct.tty*, %struct.tty** %2, align 8
  %22 = getelementptr inbounds %struct.tty, %struct.tty* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @evbuffer_free(i32 %23)
  %25 = load %struct.tty*, %struct.tty** %2, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 5
  %27 = call i32 @event_del(i32* %26)
  %28 = load %struct.tty*, %struct.tty** %2, align 8
  %29 = getelementptr inbounds %struct.tty, %struct.tty* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @evbuffer_free(i32 %30)
  %32 = load %struct.tty*, %struct.tty** %2, align 8
  %33 = getelementptr inbounds %struct.tty, %struct.tty* %32, i32 0, i32 3
  %34 = call i32 @event_del(i32* %33)
  %35 = load %struct.tty*, %struct.tty** %2, align 8
  %36 = getelementptr inbounds %struct.tty, %struct.tty* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tty_term_free(i32 %37)
  %39 = load %struct.tty*, %struct.tty** %2, align 8
  %40 = call i32 @tty_keys_free(%struct.tty* %39)
  %41 = load i32, i32* @TTY_OPENED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.tty*, %struct.tty** %2, align 8
  %44 = getelementptr inbounds %struct.tty, %struct.tty* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %20, %11
  %48 = load %struct.tty*, %struct.tty** %2, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.tty*, %struct.tty** %2, align 8
  %54 = getelementptr inbounds %struct.tty, %struct.tty* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load %struct.tty*, %struct.tty** %2, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 1
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %47
  ret void
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @tty_stop_tty(%struct.tty*) #1

declare dso_local i32 @evbuffer_free(i32) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @tty_term_free(i32) #1

declare dso_local i32 @tty_keys_free(%struct.tty*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
