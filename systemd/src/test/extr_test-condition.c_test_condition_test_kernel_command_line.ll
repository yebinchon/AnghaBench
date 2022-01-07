; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_kernel_command_line.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_kernel_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONDITION_KERNEL_COMMAND_LINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"thisreallyshouldntbeonthekernelcommandline\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"andthis=neither\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_condition_test_kernel_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_condition_test_kernel_command_line() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CONDITION_KERNEL_COMMAND_LINE, align 4
  %3 = call i32* @condition_new(i32 %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @condition_test(i32* %7)
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @condition_free(i32* %12)
  %14 = load i32, i32* @CONDITION_KERNEL_COMMAND_LINE, align 4
  %15 = call i32* @condition_new(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = ptrtoint i32* %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @condition_test(i32* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @condition_free(i32* %24)
  ret void
}

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @condition_test(i32*) #1

declare dso_local i32 @condition_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
