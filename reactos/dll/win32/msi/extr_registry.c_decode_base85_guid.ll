; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_decode_base85_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_registry.c_decode_base85_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@table_dec85 = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_base85_guid(i64* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load i64*, i64** %4, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %71, %14
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = srem i32 %20, 5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i32*, i32** @table_dec85, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load i64*, i64** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %41, 128
  br i1 %42, label %43, label %45

43:                                               ; preds = %24
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %76

45:                                               ; preds = %24
  %46 = load i32*, i32** @table_dec85, align 8
  %47 = load i64*, i64** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %76

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  %59 = srem i32 %58, 5
  %60 = icmp eq i32 %59, 4
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 5
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %57
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 %69, 85
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %16

74:                                               ; preds = %16
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %55, %43, %12
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
