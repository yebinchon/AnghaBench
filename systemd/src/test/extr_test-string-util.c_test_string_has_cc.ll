; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_string_has_cc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-string-util.c_test_string_has_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"abc\01\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"abc\7F\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"abc\09\7F\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\09\07\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"abc\09\09\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"abc\09\09\07\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"a\07b\09c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_string_has_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string_has_cc() #0 {
  %1 = call i32 @string_has_cc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* null)
  %2 = call i32 @assert_se(i32 %1)
  %3 = call i32 @string_has_cc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @string_has_cc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* null)
  %6 = call i32 @assert_se(i32 %5)
  %7 = call i32 @string_has_cc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @string_has_cc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @assert_se(i32 %9)
  %11 = call i32 @string_has_cc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %12 = call i32 @assert_se(i32 %11)
  %13 = call i32 @string_has_cc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %14 = call i32 @assert_se(i32 %13)
  %15 = call i32 @string_has_cc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 @string_has_cc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert_se(i32 %23)
  %25 = call i32 @string_has_cc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert_se(i32 %28)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @string_has_cc(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
