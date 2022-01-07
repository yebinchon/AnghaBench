; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Left.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"(%s %s)\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"len = %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Left(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = call i32 @debugstr_variant(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @debugstr_variant(i32* %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @V_VT(i32* %22)
  %24 = load i64, i64* @VT_BSTR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @V_BSTR(i32* %27)
  store i32* %28, i32** %10, align 8
  br label %39

29:                                               ; preds = %4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @to_string(i32* %30, i32** %12)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %5, align 4
  br label %77

37:                                               ; preds = %29
  %38 = load i32*, i32** %12, align 8
  store i32* %38, i32** %10, align 8
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @to_int(i32* %41, i32* %13)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call i64 @FAILED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @FIXME(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @E_FAIL, align 4
  store i32 %54, i32* %5, align 4
  br label %77

55:                                               ; preds = %48
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @SysStringLen(i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32* @SysAllocStringLen(i32* %64, i32 %65)
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @SysFreeString(i32* %67)
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @return_bstr(i32* %74, i32* %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %71, %51, %46, %35
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32* @V_BSTR(i32*) #1

declare dso_local i32 @to_string(i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_int(i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @SysStringLen(i32*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32 @return_bstr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
