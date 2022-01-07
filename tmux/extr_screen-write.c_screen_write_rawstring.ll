; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_rawstring.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen-write.c_screen_write_rawstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen_write_ctx = type { i32 }
%struct.tty_ctx = type { i32, i32* }

@tty_cmd_rawstring = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_write_rawstring(%struct.screen_write_ctx* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.screen_write_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_ctx, align 8
  store %struct.screen_write_ctx* %0, %struct.screen_write_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.screen_write_ctx*, %struct.screen_write_ctx** %4, align 8
  %9 = call i32 @screen_write_initctx(%struct.screen_write_ctx* %8, %struct.tty_ctx* %7)
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.tty_ctx, %struct.tty_ctx* %7, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @tty_cmd_rawstring, align 4
  %15 = call i32 @tty_write(i32 %14, %struct.tty_ctx* %7)
  ret void
}

declare dso_local i32 @screen_write_initctx(%struct.screen_write_ctx*, %struct.tty_ctx*) #1

declare dso_local i32 @tty_write(i32, %struct.tty_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
