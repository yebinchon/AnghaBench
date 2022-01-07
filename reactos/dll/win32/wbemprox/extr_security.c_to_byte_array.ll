; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_to_byte_array.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_to_byte_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_UI1 = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @to_byte_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_byte_array(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @VT_UI1, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32* @SafeArrayCreateVector(i32 %11, i32 0, i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %16, i32* %4, align 4
  br label %42

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @SafeArrayAccessData(i32* %18, i8** %9)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @SUCCEEDED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @memcpy(i8* %24, i8* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @SafeArrayUnaccessData(i32* %28)
  br label %34

30:                                               ; preds = %17
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @SafeArrayDestroy(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %42

34:                                               ; preds = %23
  %35 = load i32, i32* @VT_UI1, align 4
  %36 = load i32, i32* @VT_ARRAY, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @set_variant(i32 %37, i32 0, i32* %38, i32* %39)
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %30, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32* @SafeArrayCreateVector(i32, i32, i32) #1

declare dso_local i32 @SafeArrayAccessData(i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SafeArrayUnaccessData(i32*) #1

declare dso_local i32 @SafeArrayDestroy(i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
