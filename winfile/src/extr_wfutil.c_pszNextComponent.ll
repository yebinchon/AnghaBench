; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfutil.c_pszNextComponent.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfutil.c_pszNextComponent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CHAR_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pszNextComponent(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 9
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ true, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i32*, i32** %2, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %2, align 8
  br label %5

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %47

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %2, align 8
  br label %19

47:                                               ; preds = %34, %19
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* @CHAR_NULL, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %2, align 8
  store i32 %52, i32* %53, align 4
  br label %55

55:                                               ; preds = %65, %51
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 32
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 9
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i32*, i32** %2, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %2, align 8
  br label %55

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %47
  %70 = load i32*, i32** %2, align 8
  ret i32* %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
