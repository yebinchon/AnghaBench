; ModuleID = '/home/carl/AnghaBench/redis/src/extr_bitops.c_checkUnsignedBitfieldOverflow.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_bitops.c_checkUnsignedBitfieldOverflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@BFOVERFLOW_WRAP = common dso_local global i32 0, align 4
@BFOVERFLOW_SAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkUnsignedBitfieldOverflow(i32 %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @UINT64_MAX, align 4
  br label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %20, %19 ], [ %24, %21 ]
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 0, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %14, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %25
  %38 = load i64, i64* %8, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %40, %25
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %88

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @BFOVERFLOW_SAT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %44
  store i32 1, i32* %6, align 4
  br label %102

62:                                               ; preds = %40, %37
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @BFOVERFLOW_WRAP, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %88

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @BFOVERFLOW_SAT, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32*, i32** %11, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %69
  store i32 -1, i32* %6, align 4
  br label %102

86:                                               ; preds = %65, %62
  br label %87

87:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %102

88:                                               ; preds = %76, %51
  %89 = load i32, i32* %9, align 4
  %90 = shl i32 -1, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = add nsw i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %15, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %88, %87, %85, %61
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
