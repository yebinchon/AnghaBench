; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_dev.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"5:\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c":5\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-1:-1\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"4294967295:4294967295\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"8:11\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"0:0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_dev() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @parse_dev(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = load i32, i32* @EINVAL, align 4
  %4 = sub nsw i32 0, %3
  %5 = icmp eq i32 %2, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert_se(i32 %6)
  %8 = call i32 @parse_dev(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = call i32 @parse_dev(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert_se(i32 %18)
  %20 = call i32 @parse_dev(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert_se(i32 %24)
  %26 = call i32 @parse_dev(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = call i32 @parse_dev(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = call i32 @parse_dev(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert_se(i32 %42)
  %44 = call i32 @parse_dev(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = call i32 @parse_dev(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %1)
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %0
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @major(i32 %53)
  %55 = icmp eq i32 %54, 8
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @minor(i32 %57)
  %59 = icmp eq i32 %58, 11
  br label %60

60:                                               ; preds = %56, %52, %0
  %61 = phi i1 [ false, %52 ], [ false, %0 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert_se(i32 %62)
  %64 = call i32 @parse_dev(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %1)
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32, i32* %1, align 4
  %68 = call i32 @major(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @minor(i32 %71)
  %73 = icmp eq i32 %72, 0
  br label %74

74:                                               ; preds = %70, %66, %60
  %75 = phi i1 [ false, %66 ], [ false, %60 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert_se(i32 %76)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @parse_dev(i8*, i32*) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
