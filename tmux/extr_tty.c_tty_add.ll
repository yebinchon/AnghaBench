; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i64, i32, i32, %struct.client* }
%struct.client = type { i64, i32 }

@TTY_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %.*s\00", align 1
@tty_log_fd = common dso_local global i32 0, align 4
@TTY_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i8*, i64)* @tty_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_add(%struct.tty* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.tty*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.client*, align 8
  store %struct.tty* %0, %struct.tty** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tty*, %struct.tty** %4, align 8
  %9 = getelementptr inbounds %struct.tty, %struct.tty* %8, i32 0, i32 4
  %10 = load %struct.client*, %struct.client** %9, align 8
  store %struct.client* %10, %struct.client** %7, align 8
  %11 = load %struct.tty*, %struct.tty** %4, align 8
  %12 = getelementptr inbounds %struct.tty, %struct.tty* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TTY_BLOCK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %18
  store i64 %22, i64* %20, align 8
  br label %60

23:                                               ; preds = %3
  %24 = load %struct.tty*, %struct.tty** %4, align 8
  %25 = getelementptr inbounds %struct.tty, %struct.tty* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @evbuffer_add(i32 %26, i8* %27, i64 %28)
  %30 = load %struct.client*, %struct.client** %7, align 8
  %31 = getelementptr inbounds %struct.client, %struct.client* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @log_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34, i8* %35)
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.client*, %struct.client** %7, align 8
  %39 = getelementptr inbounds %struct.client, %struct.client* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* @tty_log_fd, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %23
  %45 = load i32, i32* @tty_log_fd, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @write(i32 %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %23
  %50 = load %struct.tty*, %struct.tty** %4, align 8
  %51 = getelementptr inbounds %struct.tty, %struct.tty* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TTY_STARTED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.tty*, %struct.tty** %4, align 8
  %58 = getelementptr inbounds %struct.tty, %struct.tty* %57, i32 0, i32 2
  %59 = call i32 @event_add(i32* %58, i32* null)
  br label %60

60:                                               ; preds = %17, %56, %49
  ret void
}

declare dso_local i32 @evbuffer_add(i32, i8*, i64) #1

declare dso_local i32 @log_debug(i8*, i32, i32, i8*) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @event_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
