; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_debug_output_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_indic.c_debug_output_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uniscribe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Ra\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Zwnj\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Zwj\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Mp\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"Ma\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"Mb\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"Mm\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"Sm\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"Vd\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32 (i32)*)* @debug_output_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_output_string(i32* %0, i32 %1, i32 (i32)* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32)*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (i32)* %2, i32 (i32)** %6, align 8
  %8 = load i32, i32* @uniscribe, align 4
  %9 = call i64 @TRACE_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %57, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load i32 (i32)*, i32 (i32)** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %17(i32 %22)
  switch i32 %23, label %54 [
    i32 140, label %24
    i32 132, label %26
    i32 130, label %28
    i32 133, label %30
    i32 139, label %32
    i32 128, label %34
    i32 129, label %36
    i32 136, label %38
    i32 138, label %40
    i32 137, label %42
    i32 135, label %44
    i32 134, label %46
    i32 131, label %48
    i32 142, label %50
    i32 141, label %52
  ]

24:                                               ; preds = %16
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %56

26:                                               ; preds = %16
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %56

28:                                               ; preds = %16
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %56

30:                                               ; preds = %16
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %56

32:                                               ; preds = %16
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %56

34:                                               ; preds = %16
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %56

36:                                               ; preds = %16
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %56

38:                                               ; preds = %16
  %39 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %56

40:                                               ; preds = %16
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %56

42:                                               ; preds = %16
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %56

44:                                               ; preds = %16
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %56

46:                                               ; preds = %16
  %47 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %56

48:                                               ; preds = %16
  %49 = call i32 @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %56

50:                                               ; preds = %16
  %51 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %56

52:                                               ; preds = %16
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %56

54:                                               ; preds = %16
  %55 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %12

60:                                               ; preds = %12
  %61 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %3
  ret void
}

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
