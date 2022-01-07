; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_get_ioinfo_nolock.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_get_ioinfo_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSVCRT_MAX_FILES = common dso_local global i32 0, align 4
@__pioinfo = common dso_local global i32** null, align 8
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i32 0, align 4
@__badioinfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_ioinfo_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_ioinfo_nolock(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MSVCRT_MAX_FILES, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32**, i32*** @__pioinfo, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %15 = sdiv i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %12, i64 %16
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  br label %19

19:                                               ; preds = %11, %7, %1
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store i32* @__badioinfo, i32** %2, align 8
  br label %30

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %27 = srem i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
