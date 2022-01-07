; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr__wcslwr_s.c__wcslwr_s.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/string/extr__wcslwr_s.c__wcslwr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_wcslwr_s(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32* (...) @_errno()
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %5, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %44

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @towlower(i8 signext %34)
  %36 = load i8*, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %6, align 8
  br label %23

39:                                               ; preds = %23
  %40 = load i8*, i8** %4, align 8
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* @EINVAL, align 4
  %42 = call i32* (...) @_errno()
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %31, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32* @_errno(...) #1

declare dso_local signext i8 @towlower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
