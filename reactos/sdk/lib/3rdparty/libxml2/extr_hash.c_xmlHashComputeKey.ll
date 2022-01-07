; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashComputeKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_hash.c_xmlHashComputeKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32*, i32*, i32*)* @xmlHashComputeKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xmlHashComputeKey(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 30, %15
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %27, %13
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %21, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %10, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = shl i64 %29, 5
  %31 = load i64, i64* %9, align 8
  %32 = lshr i64 %31, 3
  %33 = add i64 %30, %32
  %34 = load i8, i8* %10, align 1
  %35 = sext i8 %34 to i64
  %36 = add i64 %33, %35
  %37 = xor i64 %28, %36
  store i64 %37, i64* %9, align 8
  br label %20

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = shl i64 %41, 5
  %43 = load i64, i64* %9, align 8
  %44 = lshr i64 %43, 3
  %45 = add i64 %42, %44
  %46 = xor i64 %40, %45
  store i64 %46, i64* %9, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %57, %49
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %7, align 8
  %53 = load i32, i32* %51, align 4
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %10, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = shl i64 %59, 5
  %61 = load i64, i64* %9, align 8
  %62 = lshr i64 %61, 3
  %63 = add i64 %60, %62
  %64 = load i8, i8* %10, align 1
  %65 = sext i8 %64 to i64
  %66 = add i64 %63, %65
  %67 = xor i64 %58, %66
  store i64 %67, i64* %9, align 8
  br label %50

68:                                               ; preds = %50
  br label %69

69:                                               ; preds = %68, %39
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = shl i64 %71, 5
  %73 = load i64, i64* %9, align 8
  %74 = lshr i64 %73, 3
  %75 = add i64 %72, %74
  %76 = xor i64 %70, %75
  store i64 %76, i64* %9, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %99

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %8, align 8
  %83 = load i32, i32* %81, align 4
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %10, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = shl i64 %89, 5
  %91 = load i64, i64* %9, align 8
  %92 = lshr i64 %91, 3
  %93 = add i64 %90, %92
  %94 = load i8, i8* %10, align 1
  %95 = sext i8 %94 to i64
  %96 = add i64 %93, %95
  %97 = xor i64 %88, %96
  store i64 %97, i64* %9, align 8
  br label %80

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = urem i64 %100, %103
  ret i64 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
