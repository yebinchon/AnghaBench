; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_parallel.c_parallel_write.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_parallel.c_parallel_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@STATUS_DEVICE_OFF_LINE = common dso_local global i32 0, align 4
@STATUS_DEVICE_PAPER_EMPTY = common dso_local global i32 0, align 4
@STATUS_DEVICE_POWERED_OFF = common dso_local global i32 0, align 4
@LPGETSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*)* @parallel_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parallel_write(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @write(i32 %16, i32* %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %6
  %23 = load i32*, i32** %12, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @errno, align 4
  switch i32 %24, label %31 [
    i32 130, label %25
    i32 128, label %27
    i32 129, label %29
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* @STATUS_DEVICE_OFF_LINE, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %22, %25
  %28 = load i32, i32* @STATUS_DEVICE_PAPER_EMPTY, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %22, %27
  %30 = load i32, i32* @STATUS_DEVICE_OFF_LINE, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %22, %29
  %32 = load i32, i32* @STATUS_DEVICE_POWERED_OFF, align 4
  store i32 %32, i32* %13, align 4
  br label %33

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %6
  %35 = load i32, i32* %14, align 4
  %36 = load i32*, i32** %12, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %13, align 4
  ret i32 %37
}

declare dso_local i32 @write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
