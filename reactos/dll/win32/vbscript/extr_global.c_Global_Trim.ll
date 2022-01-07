; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Trim.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_global.c_Global_Trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @Global_Trim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Global_Trim(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64* null, i64** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @debugstr_variant(i32* %15)
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @V_VT(i32* %18)
  %20 = load i64, i64* @VT_BSTR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = call i64* @V_BSTR(i32* %23)
  store i64* %24, i64** %10, align 8
  br label %35

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @to_string(i32* %26, i64** %11)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %5, align 4
  br label %95

33:                                               ; preds = %25
  %34 = load i64*, i64** %11, align 8
  store i64* %34, i64** %10, align 8
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i64*, i64** %10, align 8
  store i64* %36, i64** %12, align 8
  br label %37

37:                                               ; preds = %49, %35
  %38 = load i64*, i64** %12, align 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i64*, i64** %12, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @isspaceW(i64 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %41, %37
  %47 = phi i1 [ false, %37 ], [ %45, %41 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %12, align 8
  br label %37

52:                                               ; preds = %46
  %53 = load i64*, i64** %10, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = call i32 @SysStringLen(i64* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  store i64* %57, i64** %13, align 8
  br label %58

58:                                               ; preds = %72, %52
  %59 = load i64*, i64** %13, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 -1
  %61 = load i64*, i64** %12, align 8
  %62 = icmp ugt i64* %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i64*, i64** %13, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 -1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @isspaceW(i64 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i1 [ false, %58 ], [ %68, %63 ]
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %13, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 -1
  store i64* %74, i64** %13, align 8
  br label %58

75:                                               ; preds = %69
  %76 = load i64*, i64** %12, align 8
  %77 = load i64*, i64** %13, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = ptrtoint i64* %77 to i64
  %80 = ptrtoint i64* %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = trunc i64 %82 to i32
  %84 = call i64* @SysAllocStringLen(i64* %76, i32 %83)
  store i64* %84, i64** %10, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = call i32 @SysFreeString(i64* %85)
  %87 = load i64*, i64** %10, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %75
  %90 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %90, i32* %5, align 4
  br label %95

91:                                               ; preds = %75
  %92 = load i32*, i32** %9, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = call i32 @return_bstr(i32* %92, i64* %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %89, %31
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64* @V_BSTR(i32*) #1

declare dso_local i32 @to_string(i32*, i64**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @isspaceW(i64) #1

declare dso_local i32 @SysStringLen(i64*) #1

declare dso_local i64* @SysAllocStringLen(i64*, i32) #1

declare dso_local i32 @SysFreeString(i64*) #1

declare dso_local i32 @return_bstr(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
