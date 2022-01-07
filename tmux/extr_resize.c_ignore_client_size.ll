; ModuleID = '/home/carl/AnghaBench/tmux/extr_resize.c_ignore_client_size.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_resize.c_ignore_client_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32, i32* }

@CLIENT_NOSIZEFLAGS = common dso_local global i32 0, align 4
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@CLIENT_SIZECHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.client*)* @ignore_client_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_client_size(%struct.client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.client*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  %4 = load %struct.client*, %struct.client** %3, align 8
  %5 = getelementptr inbounds %struct.client, %struct.client* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load %struct.client*, %struct.client** %3, align 8
  %11 = getelementptr inbounds %struct.client, %struct.client* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CLIENT_NOSIZEFLAGS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %34

17:                                               ; preds = %9
  %18 = load %struct.client*, %struct.client** %3, align 8
  %19 = getelementptr inbounds %struct.client, %struct.client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CLIENT_CONTROL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.client*, %struct.client** %3, align 8
  %26 = getelementptr inbounds %struct.client, %struct.client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @CLIENT_SIZECHANGED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %34

33:                                               ; preds = %24, %17
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %16, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
