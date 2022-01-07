; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_push_screen.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_push_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_2__, %struct.status_line }
%struct.TYPE_2__ = type { i32 }
%struct.status_line = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*)* @status_push_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_push_screen(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.status_line*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %4 = load %struct.client*, %struct.client** %2, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1
  store %struct.status_line* %5, %struct.status_line** %3, align 8
  %6 = load %struct.status_line*, %struct.status_line** %3, align 8
  %7 = getelementptr inbounds %struct.status_line, %struct.status_line* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.status_line*, %struct.status_line** %3, align 8
  %10 = getelementptr inbounds %struct.status_line, %struct.status_line* %9, i32 0, i32 2
  %11 = icmp eq i32* %8, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = call i32* @xmalloc(i32 4)
  %14 = load %struct.status_line*, %struct.status_line** %3, align 8
  %15 = getelementptr inbounds %struct.status_line, %struct.status_line* %14, i32 0, i32 1
  store i32* %13, i32** %15, align 8
  %16 = load %struct.status_line*, %struct.status_line** %3, align 8
  %17 = getelementptr inbounds %struct.status_line, %struct.status_line* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.client*, %struct.client** %2, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.client*, %struct.client** %2, align 8
  %24 = call i32 @status_line_size(%struct.client* %23)
  %25 = call i32 @screen_init(i32* %18, i32 %22, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %12, %1
  %27 = load %struct.status_line*, %struct.status_line** %3, align 8
  %28 = getelementptr inbounds %struct.status_line, %struct.status_line* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  ret void
}

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @screen_init(i32*, i32, i32, i32) #1

declare dso_local i32 @status_line_size(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
