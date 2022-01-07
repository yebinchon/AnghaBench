; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_longlong.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_to_longlong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@VT_ARRAY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@CIM_BOOLEAN = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@CIM_SINT16 = common dso_local global i32 0, align 4
@CIM_UINT16 = common dso_local global i32 0, align 4
@CIM_SINT32 = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@WBEM_E_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_longlong(i32* %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @S_OK, align 4
  store i32 %12, i32* %4, align 4
  br label %86

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @V_VT(i32* %14)
  %16 = load i32, i32* @VT_ARRAY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32*, i32** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @to_array(i32* %20, i32* %21)
  %23 = load i64*, i64** %6, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64*, i64** %6, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %4, align 4
  br label %86

29:                                               ; preds = %19
  %30 = load i32, i32* @S_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %86

31:                                               ; preds = %13
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @V_VT(i32* %32)
  switch i32 %33, label %79 [
    i32 134, label %34
    i32 133, label %40
    i32 132, label %53
    i32 129, label %59
    i32 131, label %65
    i32 128, label %71
    i32 130, label %77
  ]

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @V_BOOL(i32* %35)
  %37 = load i64*, i64** %6, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* @CIM_BOOLEAN, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %84

40:                                               ; preds = %31
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @V_BSTR(i32* %41)
  %43 = call i64 @heap_strdupW(i32 %42)
  %44 = load i64*, i64** %6, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %4, align 4
  br label %86

50:                                               ; preds = %40
  %51 = load i32, i32* @CIM_STRING, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  br label %84

53:                                               ; preds = %31
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @V_I2(i32* %54)
  %56 = load i64*, i64** %6, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i32, i32* @CIM_SINT16, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %84

59:                                               ; preds = %31
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @V_UI2(i32* %60)
  %62 = load i64*, i64** %6, align 8
  store i64 %61, i64* %62, align 8
  %63 = load i32, i32* @CIM_UINT16, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %84

65:                                               ; preds = %31
  %66 = load i32*, i32** %5, align 8
  %67 = call i64 @V_I4(i32* %66)
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @CIM_SINT32, align 4
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %84

71:                                               ; preds = %31
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @V_UI4(i32* %72)
  %74 = load i64*, i64** %6, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i32, i32* @CIM_UINT32, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %84

77:                                               ; preds = %31
  %78 = load i64*, i64** %6, align 8
  store i64 0, i64* %78, align 8
  br label %84

79:                                               ; preds = %31
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @V_VT(i32* %80)
  %82 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @WBEM_E_FAILED, align 4
  store i32 %83, i32* %4, align 4
  br label %86

84:                                               ; preds = %77, %71, %65, %59, %53, %50, %34
  %85 = load i32, i32* @S_OK, align 4
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %84, %79, %48, %29, %27, %10
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i64 @to_array(i32*, i32*) #1

declare dso_local i64 @V_BOOL(i32*) #1

declare dso_local i64 @heap_strdupW(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i64 @V_I2(i32*) #1

declare dso_local i64 @V_UI2(i32*) #1

declare dso_local i64 @V_I4(i32*) #1

declare dso_local i64 @V_UI4(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
