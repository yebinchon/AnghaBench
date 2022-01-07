; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_rpc_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_typegen.c_get_rpc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_IDEMPOTENT = common dso_local global i32 0, align 4
@ATTR_BROADCAST = common dso_local global i32 0, align 4
@ATTR_MAYBE = common dso_local global i32 0, align 4
@ATTR_MESSAGE = common dso_local global i32 0, align 4
@ATTR_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @get_rpc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rpc_flags(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @ATTR_IDEMPOTENT, align 4
  %6 = call i64 @is_attr(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @ATTR_BROADCAST, align 4
  %14 = call i64 @is_attr(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 2
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @ATTR_MAYBE, align 4
  %22 = call i64 @is_attr(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ATTR_MESSAGE, align 4
  %30 = call i64 @is_attr(i32* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, 256
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @ATTR_ASYNC, align 4
  %38 = call i64 @is_attr(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, 16384
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @is_attr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
