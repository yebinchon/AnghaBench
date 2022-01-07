; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueFindNBC.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbcmdqueue.c_NBCmdQueueFindNBC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NBCmdQueue = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.NBCmdQueue*, i64)* @NBCmdQueueFindNBC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @NBCmdQueueFindNBC(%struct.NBCmdQueue* %0, i64 %1) #0 {
  %3 = alloca %struct.NBCmdQueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.NBCmdQueue* %0, %struct.NBCmdQueue** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %7 = icmp ne %struct.NBCmdQueue* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i64* null, i64** %5, align 8
  br label %30

12:                                               ; preds = %8
  %13 = load %struct.NBCmdQueue*, %struct.NBCmdQueue** %3, align 8
  %14 = getelementptr inbounds %struct.NBCmdQueue, %struct.NBCmdQueue* %13, i32 0, i32 0
  store i64* %14, i64** %5, align 8
  br label %15

15:                                               ; preds = %25, %12
  %16 = load i64*, i64** %5, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = call i64* @NEXT_PTR(i64 %27)
  store i64* %28, i64** %5, align 8
  br label %15

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i64*, i64** %5, align 8
  ret i64* %31
}

declare dso_local i64* @NEXT_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
