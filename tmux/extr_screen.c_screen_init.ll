; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32*, i32*, i8*, i64, i32*, i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_init(%struct.screen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.screen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @grid_create(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.screen*, %struct.screen** %5, align 8
  %14 = getelementptr inbounds %struct.screen, %struct.screen* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.screen*, %struct.screen** %5, align 8
  %17 = getelementptr inbounds %struct.screen, %struct.screen* %16, i32 0, i32 5
  store i8* %15, i8** %17, align 8
  %18 = load %struct.screen*, %struct.screen** %5, align 8
  %19 = getelementptr inbounds %struct.screen, %struct.screen* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  %20 = load %struct.screen*, %struct.screen** %5, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = call i8* @xstrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.screen*, %struct.screen** %5, align 8
  %24 = getelementptr inbounds %struct.screen, %struct.screen* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.screen*, %struct.screen** %5, align 8
  %26 = getelementptr inbounds %struct.screen, %struct.screen* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.screen*, %struct.screen** %5, align 8
  %28 = getelementptr inbounds %struct.screen, %struct.screen* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.screen*, %struct.screen** %5, align 8
  %30 = call i32 @screen_reinit(%struct.screen* %29)
  ret void
}

declare dso_local i32 @grid_create(i32, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @screen_reinit(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
