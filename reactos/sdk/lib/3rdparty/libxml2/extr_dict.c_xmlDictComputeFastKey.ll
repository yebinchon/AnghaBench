; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeFastKey.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_dict.c_xmlDictComputeFastKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i32, i32)* @xmlDictComputeFastKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xmlDictComputeFastKey(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %89

14:                                               ; preds = %3
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = shl i64 %17, 5
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 10
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %8, align 8
  store i32 10, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %14
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %86 [
    i32 10, label %32
    i32 9, label %38
    i32 8, label %44
    i32 7, label %50
    i32 6, label %56
    i32 5, label %62
    i32 4, label %68
    i32 3, label %74
    i32 2, label %80
  ]

32:                                               ; preds = %30
  %33 = load i64*, i64** %5, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 9
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %30, %32
  %39 = load i64*, i64** %5, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %30, %38
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 7
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %30, %44
  %51 = load i64*, i64** %5, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 6
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %30, %50
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 5
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %30, %56
  %63 = load i64*, i64** %5, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %30, %62
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %30, %68
  %75 = load i64*, i64** %5, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %30, %74
  %81 = load i64*, i64** %5, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %30, %80
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %8, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %87, %13
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
