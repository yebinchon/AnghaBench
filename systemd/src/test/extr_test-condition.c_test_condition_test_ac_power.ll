; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_ac_power.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-condition.c_test_condition_test_ac_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONDITION_AC_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_condition_test_ac_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_condition_test_ac_power() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @CONDITION_AC_POWER, align 4
  %3 = call i32* @condition_new(i32 %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = ptrtoint i32* %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @condition_test(i32* %7)
  %9 = call i64 (...) @on_ac_power()
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @condition_free(i32* %13)
  %15 = load i32, i32* @CONDITION_AC_POWER, align 4
  %16 = call i32* @condition_new(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i64 @condition_test(i32* %20)
  %22 = call i64 (...) @on_ac_power()
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @condition_free(i32* %26)
  %28 = load i32, i32* @CONDITION_AC_POWER, align 4
  %29 = call i32* @condition_new(i32 %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 1)
  store i32* %29, i32** %1, align 8
  %30 = load i32*, i32** %1, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i64 @condition_test(i32* %33)
  %35 = call i64 (...) @on_ac_power()
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert_se(i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @condition_free(i32* %39)
  ret void
}

declare dso_local i32* @condition_new(i32, i8*, i32, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @condition_test(i32*) #1

declare dso_local i64 @on_ac_power(...) #1

declare dso_local i32 @condition_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
