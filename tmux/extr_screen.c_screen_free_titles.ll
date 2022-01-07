; ModuleID = '/home/carl/AnghaBench/tmux/extr_screen.c_screen_free_titles.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_screen.c_screen_free_titles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { %struct.screen_title_entry* }
%struct.screen_title_entry = type { %struct.screen_title_entry* }

@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.screen*)* @screen_free_titles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @screen_free_titles(%struct.screen* %0) #0 {
  %2 = alloca %struct.screen*, align 8
  %3 = alloca %struct.screen_title_entry*, align 8
  store %struct.screen* %0, %struct.screen** %2, align 8
  %4 = load %struct.screen*, %struct.screen** %2, align 8
  %5 = getelementptr inbounds %struct.screen, %struct.screen* %4, i32 0, i32 0
  %6 = load %struct.screen_title_entry*, %struct.screen_title_entry** %5, align 8
  %7 = icmp eq %struct.screen_title_entry* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %16, %9
  %11 = load %struct.screen*, %struct.screen** %2, align 8
  %12 = getelementptr inbounds %struct.screen, %struct.screen* %11, i32 0, i32 0
  %13 = load %struct.screen_title_entry*, %struct.screen_title_entry** %12, align 8
  %14 = call %struct.screen_title_entry* @TAILQ_FIRST(%struct.screen_title_entry* %13)
  store %struct.screen_title_entry* %14, %struct.screen_title_entry** %3, align 8
  %15 = icmp ne %struct.screen_title_entry* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.screen*, %struct.screen** %2, align 8
  %18 = getelementptr inbounds %struct.screen, %struct.screen* %17, i32 0, i32 0
  %19 = load %struct.screen_title_entry*, %struct.screen_title_entry** %18, align 8
  %20 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %21 = load i32, i32* @entry, align 4
  %22 = call i32 @TAILQ_REMOVE(%struct.screen_title_entry* %19, %struct.screen_title_entry* %20, i32 %21)
  %23 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %24 = getelementptr inbounds %struct.screen_title_entry, %struct.screen_title_entry* %23, i32 0, i32 0
  %25 = load %struct.screen_title_entry*, %struct.screen_title_entry** %24, align 8
  %26 = call i32 @free(%struct.screen_title_entry* %25)
  %27 = load %struct.screen_title_entry*, %struct.screen_title_entry** %3, align 8
  %28 = call i32 @free(%struct.screen_title_entry* %27)
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.screen*, %struct.screen** %2, align 8
  %31 = getelementptr inbounds %struct.screen, %struct.screen* %30, i32 0, i32 0
  %32 = load %struct.screen_title_entry*, %struct.screen_title_entry** %31, align 8
  %33 = call i32 @free(%struct.screen_title_entry* %32)
  %34 = load %struct.screen*, %struct.screen** %2, align 8
  %35 = getelementptr inbounds %struct.screen, %struct.screen* %34, i32 0, i32 0
  store %struct.screen_title_entry* null, %struct.screen_title_entry** %35, align 8
  br label %36

36:                                               ; preds = %29, %8
  ret void
}

declare dso_local %struct.screen_title_entry* @TAILQ_FIRST(%struct.screen_title_entry*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.screen_title_entry*, %struct.screen_title_entry*, i32) #1

declare dso_local i32 @free(%struct.screen_title_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
