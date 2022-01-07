; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_FillDocType.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_FillDocType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LMEM_FIXED = common dso_local global i32 0, align 4
@szWindows = common dso_local global i32 0, align 4
@CHAR_SPACE = common dso_local global i64 0, align 8
@CHAR_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FillDocType(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* null, i64** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %11, align 4
  %15 = add nsw i32 %14, 32
  store i32 %15, i32* %11, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64*, i64** %8, align 8
  %20 = ptrtoint i64* %19 to i32
  %21 = call i32 @LocalFree(i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* @LMEM_FIXED, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64* @LocalAlloc(i32 %23, i32 %27)
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %104

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @szWindows, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i64*, i64** %8, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @GetProfileString(i32 %34, i32 %35, i32 %36, i64* %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %41, 2
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %13, label %44

44:                                               ; preds = %33
  %45 = load i64*, i64** %8, align 8
  store i64* %45, i64** %9, align 8
  br label %46

46:                                               ; preds = %59, %44
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load i64, i64* @CHAR_SPACE, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* @CHAR_NULL, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58
  %60 = load i64*, i64** %9, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %9, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i64*, i64** %8, align 8
  store i64* %63, i64** %10, align 8
  br label %64

64:                                               ; preds = %96, %62
  %65 = load i64*, i64** %10, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = icmp ult i64* %65, %66
  br i1 %67, label %68, label %99

68:                                               ; preds = %64
  %69 = load i64*, i64** %10, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = load i64*, i64** %10, align 8
  %75 = call i32 @DocInsert(i32 %73, i64* %74, i32* null)
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %91, %80
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64*, i64** %10, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = icmp ne i64* %86, %87
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi i1 [ false, %81 ], [ %88, %85 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i64*, i64** %10, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %10, align 8
  br label %81

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i64*, i64** %10, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %10, align 8
  br label %64

99:                                               ; preds = %64
  %100 = load i64*, i64** %8, align 8
  %101 = ptrtoint i64* %100 to i32
  %102 = call i32 @LocalFree(i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %99, %31
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i64* @LocalAlloc(i32, i32) #1

declare dso_local i64 @GetProfileString(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @DocInsert(i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
