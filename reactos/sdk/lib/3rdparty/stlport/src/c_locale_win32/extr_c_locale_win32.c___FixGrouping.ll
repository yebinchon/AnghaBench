; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___FixGrouping.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c___FixGrouping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__FixGrouping(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  store i8* %6, i8** %3, align 8
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %75, %10
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp sgt i32 %18, 48
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sle i32 %23, 57
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i8, i8* %4, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = sub nsw i32 %31, 48
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %2, align 8
  store i8 %33, i8* %34, align 1
  store i8 1, i8* %4, align 1
  br label %47

35:                                               ; preds = %25
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = mul nsw i32 %38, 10
  %40 = load i8*, i8** %3, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = sub nsw i32 %43, 48
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %2, align 8
  store i8 %45, i8* %46, align 1
  br label %47

47:                                               ; preds = %35, %28
  br label %74

48:                                               ; preds = %20, %15
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 48
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i8, i8* %4, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i8 1, i8* %5, align 1
  br label %63

57:                                               ; preds = %53
  %58 = load i8*, i8** %2, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = mul nsw i32 %60, 10
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %58, align 1
  br label %63

63:                                               ; preds = %57, %56
  br label %73

64:                                               ; preds = %48
  %65 = load i8*, i8** %3, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 59
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  store i8 0, i8* %4, align 1
  %70 = load i8*, i8** %2, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %47
  br label %75

75:                                               ; preds = %74
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  br label %11

78:                                               ; preds = %11
  %79 = load i8, i8* %5, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @CHAR_MAX, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %2, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i8*, i8** %2, align 8
  store i8 0, i8* %87, align 1
  br label %88

88:                                               ; preds = %86, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
