; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_RTrim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_RTrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_RTrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_RTrim(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
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
  %23 = call i32* @V_BSTR(i32* %22)
  store i32* %23, i32** %10, align 8
  br label %34

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @to_string(i32* %25, i32** %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  br label %77

32:                                               ; preds = %24
  %33 = load i32*, i32** %11, align 8
  store i32* %33, i32** %10, align 8
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @SysStringLen(i32* %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32* %39, i32** %12, align 8
  br label %40

40:                                               ; preds = %54, %34
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 -1
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ugt i32* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @isspaceW(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ false, %40 ], [ %50, %45 ]
  br i1 %52, label %53, label %57

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 -1
  store i32* %56, i32** %12, align 8
  br label %40

57:                                               ; preds = %51
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = call i32* @SysAllocStringLen(i32* %58, i32 %65)
  store i32* %66, i32** %10, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @SysFreeString(i32* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %57
  %72 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %57
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @return_bstr(i32* %74, i32* %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %71, %30
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32* @V_BSTR(i32*) #1

declare dso_local i32 @to_string(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i64 @isspaceW(i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @return_bstr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
