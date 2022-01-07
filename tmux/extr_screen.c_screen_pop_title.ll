; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_pop_title.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_pop_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32* }
%struct.screen_title_entry = type { %struct.screen_title_entry* }

@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_pop_title(%struct.screen* %0) #0 {
  %2 = alloca %struct.screen*, align 8
  %3 = alloca %struct.screen_title_entry*, align 8
  store %struct.screen* %0, %struct.screen** %2, align 8
  %4 = load %struct.screen*, %struct.screen** %2, align 8
  %5 = getelementptr inbounds %struct.screen, %struct.screen* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.screen*, %struct.screen** %2, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call %struct.screen_title_entry* @TAILQ_FIRST(i32* %12)
  store %struct.screen_title_entry* %13, %struct.screen_title_entry** %3, align 8
  %14 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %15 = icmp ne %struct.screen_title_entry* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.screen*, %struct.screen** %2, align 8
  %18 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %19 = getelementptr inbounds %struct.screen_title_entry, %struct.screen_title_entry* %18, i32 0, i32 0
  %20 = load %struct.screen_title_entry*, %struct.screen_title_entry** %19, align 8
  %21 = call i32 @screen_set_title(%struct.screen* %17, %struct.screen_title_entry* %20)
  %22 = load %struct.screen*, %struct.screen** %2, align 8
  %23 = getelementptr inbounds %struct.screen, %struct.screen* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %26 = load i32, i32* @entry, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.screen_title_entry* %25, i32 %26)
  %28 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %29 = getelementptr inbounds %struct.screen_title_entry, %struct.screen_title_entry* %28, i32 0, i32 0
  %30 = load %struct.screen_title_entry*, %struct.screen_title_entry** %29, align 8
  %31 = call i32 @free(%struct.screen_title_entry* %30)
  %32 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %33 = call i32 @free(%struct.screen_title_entry* %32)
  br label %34

34:                                               ; preds = %8, %16, %9
  ret void
}

declare dso_local %struct.screen_title_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @screen_set_title(%struct.screen*, %struct.screen_title_entry*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.screen_title_entry*, i32) #1

declare dso_local i32 @free(%struct.screen_title_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
