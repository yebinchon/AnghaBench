; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_stack_pop_disp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_stack_pop_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VT_DISPATCH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@VT_VARIANT = common dso_local global i32 0, align 4
@VT_BYREF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"not supported type: %s\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"not disp %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @stack_pop_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stack_pop_disp(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32* @stack_pop(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @V_VT(i32* %9)
  %11 = load i32, i32* @VT_DISPATCH, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @V_DISPATCH(i32* %14)
  %16 = load i32**, i32*** %5, align 8
  store i32* %15, i32** %16, align 8
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %57

18:                                               ; preds = %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @V_VT(i32* %19)
  %21 = load i32, i32* @VT_VARIANT, align 4
  %22 = load i32, i32* @VT_BYREF, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @debugstr_variant(i32* %26)
  %28 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @VariantClear(i32* %29)
  %31 = load i32, i32* @E_FAIL, align 4
  store i32 %31, i32* %3, align 4
  br label %57

32:                                               ; preds = %18
  %33 = load i32*, i32** %6, align 8
  %34 = call i32* @V_BYREF(i32* %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @V_VT(i32* %35)
  %37 = load i32, i32* @VT_DISPATCH, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @debugstr_variant(i32* %40)
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @E_FAIL, align 4
  store i32 %43, i32* %3, align 4
  br label %57

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @V_DISPATCH(i32* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = call i32* @V_DISPATCH(i32* %49)
  %51 = call i32 @IDispatch_AddRef(i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32*, i32** %6, align 8
  %54 = call i32* @V_DISPATCH(i32* %53)
  %55 = load i32**, i32*** %5, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i32, i32* @S_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %39, %25, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @stack_pop(i32*) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32* @V_DISPATCH(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32* @V_BYREF(i32*) #1

declare dso_local i32 @IDispatch_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
