; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_to_i4_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_reg.c_to_i4_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_I4 = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32*)* @to_i4_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_i4_array(i64* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @VT_I4, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32* @SafeArrayCreateVector(i32 %11, i32 0, i64 %12)
  store i32* %13, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %35, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i64*, i64** %5, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = call i32 @SafeArrayPutElement(i32* %23, i64* %10, i64* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @SafeArrayDestroy(i32* %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %10, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* @VT_I4, align 4
  %40 = load i32, i32* @VT_ARRAY, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @set_variant(i32 %41, i32 0, i32* %42, i32* %43)
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %38, %30, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32* @SafeArrayCreateVector(i32, i32, i64) #1

declare dso_local i32 @SafeArrayPutElement(i32*, i64*, i64*) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
