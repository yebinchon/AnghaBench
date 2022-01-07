; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdlgs2.c_GetPathInfo.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdlgs2.c_GetPathInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i64 0, align 8
@CHAR_DQUOTE = common dso_local global i64 0, align 8
@CHAR_COLON = common dso_local global i64 0, align 8
@CHAR_BACKSLASH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPathInfo(i64* %0, i64** %1, i64** %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64**, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i64** %3, i64*** %9, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = load i64**, i64*** %7, align 8
  store i64* %12, i64** %13, align 8
  br label %14

14:                                               ; preds = %21, %4
  %15 = load i64**, i64*** %7, align 8
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHAR_SPACE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %20
  %22 = load i64**, i64*** %7, align 8
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %22, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load i64**, i64*** %7, align 8
  %27 = load i64*, i64** %26, align 8
  %28 = load i64**, i64*** %9, align 8
  store i64* %27, i64** %28, align 8
  br label %29

29:                                               ; preds = %59, %25
  %30 = load i64**, i64*** %9, align 8
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i64**, i64*** %9, align 8
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CHAR_SPACE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i1 [ true, %34 ], [ %42, %40 ]
  br label %45

45:                                               ; preds = %43, %29
  %46 = phi i1 [ false, %29 ], [ %44, %43 ]
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = load i64, i64* @CHAR_DQUOTE, align 8
  %49 = load i64**, i64*** %9, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58
  %60 = load i64**, i64*** %9, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %60, align 8
  br label %29

63:                                               ; preds = %45
  %64 = load i64**, i64*** %9, align 8
  %65 = load i64*, i64** %64, align 8
  %66 = load i64**, i64*** %8, align 8
  store i64* %65, i64** %66, align 8
  br label %67

67:                                               ; preds = %89, %63
  %68 = load i64**, i64*** %8, align 8
  %69 = load i64*, i64** %68, align 8
  %70 = load i64**, i64*** %7, align 8
  %71 = load i64*, i64** %70, align 8
  %72 = icmp ugt i64* %69, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load i64**, i64*** %8, align 8
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 -1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CHAR_COLON, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load i64**, i64*** %8, align 8
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 -1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHAR_BACKSLASH, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80, %73
  br label %93

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load i64**, i64*** %8, align 8
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i32 -1
  store i64* %92, i64** %90, align 8
  br label %67

93:                                               ; preds = %87, %67
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
