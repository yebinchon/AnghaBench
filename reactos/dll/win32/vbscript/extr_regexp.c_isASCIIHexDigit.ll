; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_isASCIIHexDigit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_regexp.c_isASCIIHexDigit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*)* @isASCIIHexDigit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isASCIIHexDigit(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %7 = load i8, i8* %4, align 1
  store i8 %7, i8* %6, align 1
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp slt i32 %9, 48
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sle i32 %15, 57
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load i8, i8* %6, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 48
  %21 = trunc i32 %20 to i8
  %22 = load i8*, i8** %5, align 8
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %13
  %25 = load i8, i8* %6, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %26, 32
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %6, align 1
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sge i32 %30, 97
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sle i32 %34, 102
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = sub nsw i32 %38, 97
  %40 = add nsw i32 %39, 10
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  %43 = load i32, i32* @TRUE, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %32, %24
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %36, %17, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
