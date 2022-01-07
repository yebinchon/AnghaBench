; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_SkipPathHead.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdirsrc.c_SkipPathHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_BACKSLASH = common dso_local global i64 0, align 8
@CHAR_COLON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @SkipPathHead(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %6 = load i64*, i64** %3, align 8
  store i64* %6, i64** %4, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = call i64 @ISUNCPATH(i64* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  store i64* %12, i64** %4, align 8
  br label %13

13:                                               ; preds = %31, %10
  %14 = load i64*, i64** %4, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 2
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ false, %13 ], [ %19, %17 ]
  br i1 %21, label %22, label %34

22:                                               ; preds = %20
  %23 = load i64, i64* @CHAR_BACKSLASH, align 8
  %24 = load i64*, i64** %4, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %22
  br label %31

31:                                               ; preds = %30
  %32 = load i64*, i64** %4, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 1
  store i64* %33, i64** %4, align 8
  br label %13

34:                                               ; preds = %20
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i64* null, i64** %2, align 8
  br label %58

39:                                               ; preds = %34
  %40 = load i64*, i64** %4, align 8
  store i64* %40, i64** %2, align 8
  br label %58

41:                                               ; preds = %1
  %42 = load i64, i64* @CHAR_COLON, align 8
  %43 = load i64*, i64** %3, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i64, i64* @CHAR_BACKSLASH, align 8
  %49 = load i64*, i64** %3, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64*, i64** %3, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64* %55, i64** %2, align 8
  br label %58

56:                                               ; preds = %47, %41
  br label %57

57:                                               ; preds = %56
  store i64* null, i64** %2, align 8
  br label %58

58:                                               ; preds = %57, %53, %39, %38
  %59 = load i64*, i64** %2, align 8
  ret i64* %59
}

declare dso_local i64 @ISUNCPATH(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
