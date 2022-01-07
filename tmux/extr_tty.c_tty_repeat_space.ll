; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_repeat_space.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_repeat_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@tty_repeat_space.s = internal global [500 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i32)* @tty_repeat_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_repeat_space(%struct.tty* %0, i32 %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @tty_repeat_space.s, i64 0, i64 0), align 16
  %6 = sext i8 %5 to i32
  %7 = icmp ne i32 %6, 32
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @memset(i8* getelementptr inbounds ([500 x i8], [500 x i8]* @tty_repeat_space.s, i64 0, i64 0), i8 signext 32, i32 500)
  br label %10

10:                                               ; preds = %8, %2
  br label %11

11:                                               ; preds = %15, %10
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %13, 500
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.tty*, %struct.tty** %3, align 8
  %17 = call i32 @tty_putn(%struct.tty* %16, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @tty_repeat_space.s, i64 0, i64 0), i32 500, i32 500)
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 500
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.tty*, %struct.tty** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tty_putn(%struct.tty* %26, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @tty_repeat_space.s, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @tty_putn(%struct.tty*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
