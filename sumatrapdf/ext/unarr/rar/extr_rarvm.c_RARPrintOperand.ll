; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c_RARPrintOperand.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rarvm.c_RARPrintOperand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@(r%d)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"@(r%d+$%02x)\00", align 1
@RARAbsoluteAddressingMode = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"@($%02x)\00", align 1
@RARImmediateAddressingMode = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"$%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @RARPrintOperand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RARPrintOperand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 @RARRegisterAddressingMode(i32 0)
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @RARRegisterAddressingMode(i32 7)
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = srem i32 %13, 8
  %15 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %59

16:                                               ; preds = %8, %2
  %17 = call i32 @RARRegisterIndirectAddressingMode(i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @RARRegisterIndirectAddressingMode(i32 7)
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = srem i32 %25, 8
  %27 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %58

28:                                               ; preds = %20, %16
  %29 = call i32 @RARIndexedAbsoluteAddressingMode(i32 0)
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @RARIndexedAbsoluteAddressingMode(i32 7)
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = srem i32 %37, 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39)
  br label %57

41:                                               ; preds = %32, %28
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @RARAbsoluteAddressingMode, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %56

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @RARImmediateAddressingMode, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %45
  br label %57

57:                                               ; preds = %56, %36
  br label %58

58:                                               ; preds = %57, %24
  br label %59

59:                                               ; preds = %58, %12
  ret void
}

declare dso_local i32 @RARRegisterAddressingMode(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @RARRegisterIndirectAddressingMode(i32) #1

declare dso_local i32 @RARIndexedAbsoluteAddressingMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
