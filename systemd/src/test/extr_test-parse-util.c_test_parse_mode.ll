; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_mode.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_parse_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"888\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"77777\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"544\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"777\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"7777\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parse_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_mode() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @parse_mode(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %1)
  %3 = icmp slt i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert_se(i32 %4)
  %6 = call i64 @parse_mode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = call i64 @parse_mode(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %1)
  %11 = icmp slt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = call i64 @parse_mode(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %1)
  %15 = icmp slt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert_se(i32 %16)
  %18 = call i64 @parse_mode(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %1)
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 356
  br label %23

23:                                               ; preds = %20, %0
  %24 = phi i1 [ false, %0 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = call i64 @parse_mode(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %1)
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* %1, align 4
  %31 = icmp eq i32 %30, 511
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ false, %23 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = call i64 @parse_mode(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %1)
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %1, align 4
  %40 = icmp eq i32 %39, 4095
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i1 [ false, %32 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = call i64 @parse_mode(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32* %1)
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @parse_mode(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
