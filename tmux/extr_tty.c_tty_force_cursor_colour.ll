; ModuleID = '/home/carl/AnghaBench/tmux/extr_tty.c_tty_force_cursor_colour.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tty.c_tty_force_cursor_colour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }

@TTYC_CR = common dso_local global i32 0, align 4
@TTYC_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*, i8*)* @tty_force_cursor_colour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_force_cursor_colour(%struct.tty* %0, i8* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i8*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.tty*, %struct.tty** %3, align 8
  %11 = load i32, i32* @TTYC_CR, align 4
  %12 = call i32 @tty_putcode(%struct.tty* %10, i32 %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.tty*, %struct.tty** %3, align 8
  %15 = load i32, i32* @TTYC_CS, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @tty_putcode_ptr1(%struct.tty* %14, i32 %15, i8* %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = load %struct.tty*, %struct.tty** %3, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @free(i32 %21)
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @xstrdup(i8* %23)
  %25 = load %struct.tty*, %struct.tty** %3, align 8
  %26 = getelementptr inbounds %struct.tty, %struct.tty* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @tty_putcode(%struct.tty*, i32) #1

declare dso_local i32 @tty_putcode_ptr1(%struct.tty*, i32, i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
