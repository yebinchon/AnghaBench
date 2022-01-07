; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_stdio.c__printbits.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_stdio.c__printbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_printbits.str = internal global [35 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_printbits(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %23, %26
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %14

33:                                               ; preds = %14
  store i8 48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 0), align 16
  store i8 98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 1), align 1
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 %37, 8
  %39 = sub i64 %38, 1
  %40 = shl i64 1, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %36, %33
  store i64 2, i64* %7, align 8
  store i32 -2147483648, i32* %9, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i64, i64* %7, align 8
  %48 = icmp ugt i64 %47, 2
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 49, i32 48
  %61 = trunc i32 %60 to i8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  %64 = getelementptr inbounds [35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 %62
  store i8 %61, i8* %64, align 1
  br label %75

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  %73 = getelementptr inbounds [35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 %71
  store i8 49, i8* %73, align 1
  br label %74

74:                                               ; preds = %70, %65
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds [35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 %80
  store i8 0, i8* %81, align 1
  ret i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_printbits.str, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
