; ModuleID = '/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_clear.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_status.c_status_prompt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, %struct.TYPE_2__, i32*, i32*, i32*, i32*, i32 (i32*)* }
%struct.TYPE_2__ = type { i32 }

@TTY_NOCURSOR = common dso_local global i32 0, align 4
@TTY_FREEZE = common dso_local global i32 0, align 4
@CLIENT_ALLREDRAWFLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @status_prompt_clear(%struct.client* %0) #0 {
  %2 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %2, align 8
  %3 = load %struct.client*, %struct.client** %2, align 8
  %4 = getelementptr inbounds %struct.client, %struct.client* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  %9 = load %struct.client*, %struct.client** %2, align 8
  %10 = getelementptr inbounds %struct.client, %struct.client* %9, i32 0, i32 6
  %11 = load i32 (i32*)*, i32 (i32*)** %10, align 8
  %12 = icmp ne i32 (i32*)* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = load %struct.client*, %struct.client** %2, align 8
  %15 = getelementptr inbounds %struct.client, %struct.client* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.client*, %struct.client** %2, align 8
  %20 = getelementptr inbounds %struct.client, %struct.client* %19, i32 0, i32 6
  %21 = load i32 (i32*)*, i32 (i32*)** %20, align 8
  %22 = load %struct.client*, %struct.client** %2, align 8
  %23 = getelementptr inbounds %struct.client, %struct.client* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 %21(i32* %24)
  br label %26

26:                                               ; preds = %18, %13, %8
  %27 = load %struct.client*, %struct.client** %2, align 8
  %28 = getelementptr inbounds %struct.client, %struct.client* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @free(i32* %29)
  %31 = load %struct.client*, %struct.client** %2, align 8
  %32 = getelementptr inbounds %struct.client, %struct.client* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.client*, %struct.client** %2, align 8
  %34 = getelementptr inbounds %struct.client, %struct.client* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @free(i32* %35)
  %37 = load %struct.client*, %struct.client** %2, align 8
  %38 = getelementptr inbounds %struct.client, %struct.client* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load %struct.client*, %struct.client** %2, align 8
  %40 = getelementptr inbounds %struct.client, %struct.client* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load %struct.client*, %struct.client** %2, align 8
  %44 = getelementptr inbounds %struct.client, %struct.client* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @TTY_NOCURSOR, align 4
  %46 = load i32, i32* @TTY_FREEZE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load %struct.client*, %struct.client** %2, align 8
  %50 = getelementptr inbounds %struct.client, %struct.client* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %48
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @CLIENT_ALLREDRAWFLAGS, align 4
  %55 = load %struct.client*, %struct.client** %2, align 8
  %56 = getelementptr inbounds %struct.client, %struct.client* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.client*, %struct.client** %2, align 8
  %60 = call i32 @status_pop_screen(%struct.client* %59)
  br label %61

61:                                               ; preds = %26, %7
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
