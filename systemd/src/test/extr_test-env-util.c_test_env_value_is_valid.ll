; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-env-util.c_test_env_value_is_valid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-env-util.c_test_env_value_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"g\C5\82\C4\85b kapu\C5\9Bciany\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"printf \22\\x1b]0;<mock-chroot>\\x07<mock-chroot>\22\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tab\09character\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"new\0Aline\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_env_value_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_env_value_is_valid() #0 {
  %1 = call i32 @env_value_is_valid(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @assert_se(i32 %1)
  %3 = call i32 @env_value_is_valid(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @env_value_is_valid(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %6 = call i32 @assert_se(i32 %5)
  %7 = call i32 @env_value_is_valid(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @env_value_is_valid(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @assert_se(i32 %9)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @env_value_is_valid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
