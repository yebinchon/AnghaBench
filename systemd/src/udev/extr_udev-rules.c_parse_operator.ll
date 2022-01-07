; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-rules.c_parse_operator.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-rules.c_parse_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"==\00", align 1
@OP_MATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@OP_NOMATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@OP_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@OP_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@OP_ASSIGN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c":=\00", align 1
@OP_ASSIGN_FINAL = common dso_local global i32 0, align 4
@_OP_TYPE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_operator(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @assert(i8* %4)
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @startswith(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @OP_MATCH, align 4
  store i32 %10, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @startswith(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @OP_NOMATCH, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @startswith(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @OP_ADD, align 4
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @startswith(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @OP_REMOVE, align 4
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i64 @startswith(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @OP_ASSIGN, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @startswith(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @OP_ASSIGN_FINAL, align 4
  store i32 %40, i32* %2, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @_OP_TYPE_INVALID, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %39, %33, %27, %21, %15, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @startswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
