; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-varlink.c_block_fd_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-varlink.c_block_fd_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_EVENT_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*)* @block_fd_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_fd_handler(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @fd_nonblock(i32 %10, i32 0)
  %12 = icmp sge i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert_se(i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @read(i32 %15, i8* %9, i32 1)
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert_se(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @read(i32 %21, i8* %9, i32 1)
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @fd_nonblock(i32 %26, i32 1)
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert_se(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SD_EVENT_OFF, align 4
  %33 = call i64 @sd_event_source_set_enabled(i32* %31, i32 %32)
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  ret i32 0
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @fd_nonblock(i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @sd_event_source_set_enabled(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
