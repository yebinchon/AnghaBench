; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zle.c_zle_decompress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zle.c_zle_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zle_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %15, align 8
  br label %27

27:                                               ; preds = %92, %5
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp ult i32* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ult i32* %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i1 [ false, %27 ], [ %34, %31 ]
  br i1 %36, label %37, label %93

37:                                               ; preds = %35
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %12, align 8
  %40 = load i32, i32* %38, align 4
  %41 = add nsw i32 1, %40
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %37
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ugt i32* %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32*, i32** %15, align 8
  %58 = icmp ugt i32* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52, %45
  store i32 -1, i32* %6, align 4
  br label %99

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %65, %60
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %16, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %12, align 8
  %68 = load i32, i32* %66, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  br label %61

71:                                               ; preds = %61
  br label %92

72:                                               ; preds = %37
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %16, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %15, align 8
  %81 = icmp ugt i32* %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %6, align 4
  br label %99

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %16, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %13, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %13, align 8
  store i32 0, i32* %89, align 4
  br label %84

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %71
  br label %27

93:                                               ; preds = %35
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = icmp eq i32* %94, %95
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 0, i32 -1
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %93, %82, %59
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
