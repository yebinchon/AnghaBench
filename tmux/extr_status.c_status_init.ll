; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_init.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { %struct.TYPE_3__, %struct.status_line }
%struct.TYPE_3__ = type { i32 }
%struct.status_line = type { i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_init(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  %3 = alloca %struct.status_line*, align 8
  %4 = alloca i64, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %5 = load %struct.client*, %struct.client** %2, align 8
  %6 = getelementptr inbounds %struct.client, %struct.client* %5, i32 0, i32 1
  store %struct.status_line* %6, %struct.status_line** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %22, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.status_line*, %struct.status_line** %3, align 8
  %10 = getelementptr inbounds %struct.status_line, %struct.status_line* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i64 @nitems(%struct.TYPE_4__* %11)
  %13 = icmp ult i64 %8, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.status_line*, %struct.status_line** %3, align 8
  %16 = getelementptr inbounds %struct.status_line, %struct.status_line* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @TAILQ_INIT(i32* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.status_line*, %struct.status_line** %3, align 8
  %27 = getelementptr inbounds %struct.status_line, %struct.status_line* %26, i32 0, i32 0
  %28 = load %struct.client*, %struct.client** %2, align 8
  %29 = getelementptr inbounds %struct.client, %struct.client* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @screen_init(i32* %27, i32 %31, i32 1, i32 0)
  %33 = load %struct.status_line*, %struct.status_line** %3, align 8
  %34 = getelementptr inbounds %struct.status_line, %struct.status_line* %33, i32 0, i32 0
  %35 = load %struct.status_line*, %struct.status_line** %3, align 8
  %36 = getelementptr inbounds %struct.status_line, %struct.status_line* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  ret void
}

declare dso_local i64 @nitems(%struct.TYPE_4__*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @screen_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
