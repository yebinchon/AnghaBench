; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-device-nodes.c_test_encode_devnode_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-device-nodes.c_test_encode_devnode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"systemd sucks\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"systemd\\x20sucks\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"pinkiepie\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"val\C3\ADd\\\C5\B3tf8\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"val\C3\ADd\\x5c\C5\B3tf8\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"s/ash/ng\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"s\\x2fash\\x2fng\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\\x2f\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\\x21\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_encode_devnode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_encode_devnode_name() #0 {
  %1 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %2 = call i32 @assert_se(i32 %1)
  %3 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @assert_se(i32 %3)
  %5 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @assert_se(i32 %5)
  %7 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @assert_se(i32 %7)
  %9 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @assert_se(i32 %9)
  %11 = call i32 @expect_encoded_as(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @assert_se(i32 %11)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @expect_encoded_as(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
