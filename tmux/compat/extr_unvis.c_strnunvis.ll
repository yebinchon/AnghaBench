; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_unvis.c_strnunvis.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_unvis.c_strnunvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNVIS_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strnunvis(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** %11, align 8
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %20, %3
  br label %23

23:                                               ; preds = %60, %22
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %8, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i8, i8* %8, align 1
  %31 = call i32 @unvis(i8* %9, i8 signext %30, i32* %12, i32 0)
  switch i32 %31, label %53 [
    i32 129, label %32
    i32 128, label %42
    i32 0, label %52
    i32 130, label %52
  ]

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8, i8* %9, align 1
  %38 = load i8*, i8** %5, align 8
  store i8 %37, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  br label %60

42:                                               ; preds = %29
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp ult i8* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8, i8* %9, align 1
  %48 = load i8*, i8** %5, align 8
  store i8 %47, i8* %48, align 1
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  br label %29

52:                                               ; preds = %29, %29
  br label %60

53:                                               ; preds = %29
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ule i8* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %57, %53
  store i32 -1, i32* %4, align 4
  br label %89

60:                                               ; preds = %52, %39
  br label %23

61:                                               ; preds = %23
  %62 = load i8, i8* %8, align 1
  %63 = load i32, i32* @UNVIS_END, align 4
  %64 = call i32 @unvis(i8* %9, i8 signext %62, i32* %12, i32 %63)
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ult i8* %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8, i8* %9, align 1
  %72 = load i8*, i8** %5, align 8
  store i8 %71, i8* %72, align 1
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %5, align 8
  br label %76

76:                                               ; preds = %73, %61
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ule i8* %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  store i8 0, i8* %81, align 1
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %59
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @unvis(i8*, i8 signext, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
