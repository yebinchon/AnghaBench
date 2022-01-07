; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_LTrim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_LTrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_LTrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_LTrim(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64* null, i64** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @debugstr_variant(i32* %14)
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @V_VT(i32* %17)
  %19 = load i64, i64* @VT_BSTR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = call i64* @V_BSTR(i32* %22)
  store i64* %23, i64** %10, align 8
  br label %34

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @to_string(i32* %25, i64** %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %64

32:                                               ; preds = %24
  %33 = load i64*, i64** %11, align 8
  store i64* %33, i64** %10, align 8
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i64*, i64** %10, align 8
  store i64* %35, i64** %12, align 8
  br label %36

36:                                               ; preds = %48, %34
  %37 = load i64*, i64** %12, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i64*, i64** %12, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @isspaceW(i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %12, align 8
  br label %36

51:                                               ; preds = %45
  %52 = load i64*, i64** %12, align 8
  %53 = call i64* @SysAllocString(i64* %52)
  store i64* %53, i64** %10, align 8
  %54 = load i64*, i64** %11, align 8
  %55 = call i32 @SysFreeString(i64* %54)
  %56 = load i64*, i64** %10, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load i32*, i32** %9, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = call i32 @return_bstr(i32* %61, i64* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %58, %30
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64* @V_BSTR(i32*) #1

declare dso_local i32 @to_string(i32*, i64**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @isspaceW(i64) #1

declare dso_local i64* @SysAllocString(i64*) #1

declare dso_local i32 @SysFreeString(i64*) #1

declare dso_local i32 @return_bstr(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
