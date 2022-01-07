; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_message_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_message_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@TTY_NOCURSOR = common dso_local global i32 0, align 4
@TTY_FREEZE = common dso_local global i32 0, align 4
@CLIENT_ALLREDRAWFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_message_clear(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %3 = load %struct.client*, %struct.client** %2, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %37

8:                                                ; preds = %1
  %9 = load %struct.client*, %struct.client** %2, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.client*, %struct.client** %2, align 8
  %14 = getelementptr inbounds %struct.client, %struct.client* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load %struct.client*, %struct.client** %2, align 8
  %16 = getelementptr inbounds %struct.client, %struct.client* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %8
  %20 = load i32, i32* @TTY_NOCURSOR, align 4
  %21 = load i32, i32* @TTY_FREEZE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.client*, %struct.client** %2, align 8
  %25 = getelementptr inbounds %struct.client, %struct.client* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %23
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %8
  %30 = load i32, i32* @CLIENT_ALLREDRAWFLAGS, align 4
  %31 = load %struct.client*, %struct.client** %2, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.client*, %struct.client** %2, align 8
  %36 = call i32 @status_pop_screen(%struct.client* %35)
  br label %37

37:                                               ; preds = %29, %7
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @status_pop_screen(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
