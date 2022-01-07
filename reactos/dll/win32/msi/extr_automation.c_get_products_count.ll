; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_get_products_count.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_get_products_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_SIZE = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@DISP_E_EXCEPTION = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @get_products_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_products_count(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %2, %42
  %12 = load i32, i32* @GUID_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @MsiEnumRelatedProductsW(i32* %19, i32 0, i32 %20, i32* %15)
  store i64 %21, i64* %9, align 8
  br label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @MsiEnumProductsW(i32 %23, i32* %15)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 3, i32* %10, align 4
  br label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @DISP_E_EXCEPTION, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %36, %34, %29
  %40 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %49 [
    i32 0, label %42
    i32 3, label %43
    i32 1, label %47
  ]

42:                                               ; preds = %39
  br label %11

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i32, i32* %3, align 4
  ret i32 %48

49:                                               ; preds = %39
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MsiEnumRelatedProductsW(i32*, i32, i32, i32*) #2

declare dso_local i64 @MsiEnumProductsW(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
