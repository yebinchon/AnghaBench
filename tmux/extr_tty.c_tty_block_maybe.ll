; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_block_maybe.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_block_maybe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, i64, i32, %struct.client* }
%struct.client = type { i64, i32 }
%struct.timeval = type { i32 }

@TTY_BLOCK_INTERVAL = common dso_local global i32 0, align 4
@TTY_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: can't keep up, %zu discarded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @tty_block_maybe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_block_maybe(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 4
  %9 = load %struct.client*, %struct.client** %8, align 8
  store %struct.client* %9, %struct.client** %4, align 8
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = getelementptr inbounds %struct.tty, %struct.tty* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @EVBUFFER_LENGTH(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %15 = load i32, i32* @TTY_BLOCK_INTERVAL, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.tty*, %struct.tty** %3, align 8
  %18 = call i64 @TTY_BLOCK_START(%struct.tty* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %1
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = getelementptr inbounds %struct.tty, %struct.tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TTY_BLOCK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %55

29:                                               ; preds = %21
  %30 = load i32, i32* @TTY_BLOCK, align 4
  %31 = load %struct.tty*, %struct.tty** %3, align 8
  %32 = getelementptr inbounds %struct.tty, %struct.tty* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.client*, %struct.client** %4, align 8
  %36 = getelementptr inbounds %struct.client, %struct.client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @log_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %38)
  %40 = load %struct.tty*, %struct.tty** %3, align 8
  %41 = getelementptr inbounds %struct.tty, %struct.tty* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @evbuffer_drain(i32 %42, i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.client*, %struct.client** %4, align 8
  %47 = getelementptr inbounds %struct.client, %struct.client* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.tty*, %struct.tty** %3, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.tty*, %struct.tty** %3, align 8
  %53 = getelementptr inbounds %struct.tty, %struct.tty* %52, i32 0, i32 1
  %54 = call i32 @evtimer_add(i32* %53, %struct.timeval* %6)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %29, %28, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @EVBUFFER_LENGTH(i32) #1

declare dso_local i64 @TTY_BLOCK_START(%struct.tty*) #1

declare dso_local i32 @log_debug(i8*, i32, i64) #1

declare dso_local i32 @evbuffer_drain(i32, i64) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
