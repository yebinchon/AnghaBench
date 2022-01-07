; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_security_set_sd.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_security.c_security_set_sd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"stub\0A\00", align 1
@class_systemsecurityW = common dso_local global i32 0, align 4
@method_setsdW = common dso_local global i32 0, align 4
@PARAM_OUT = common dso_local global i32 0, align 4
@VT_UI4 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@param_returnvalueW = common dso_local global i32 0, align 4
@CIM_UINT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_set_sd(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32* null, i32** %9, align 8
  %11 = call i32 @FIXME(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @class_systemsecurityW, align 4
  %13 = load i32, i32* @method_setsdW, align 4
  %14 = load i32, i32* @PARAM_OUT, align 4
  %15 = call i32 @create_signature(i32 %12, i32 %13, i32 %14, i32** %8)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @SUCCEEDED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @IWbemClassObject_SpawnInstance(i32* %20, i32 0, i32** %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @IWbemClassObject_Release(i32* %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @SUCCEEDED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load i32, i32* @VT_UI4, align 4
  %30 = load i32, i32* @S_OK, align 4
  %31 = call i32 @set_variant(i32 %29, i32 %30, i32* null, i32* %7)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @param_returnvalueW, align 4
  %34 = load i32, i32* @CIM_UINT32, align 4
  %35 = call i32 @IWbemClassObject_Put(i32* %32, i32 %33, i32 0, i32* %7, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @SUCCEEDED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %28
  %40 = load i32**, i32*** %6, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  %44 = load i32**, i32*** %6, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @IWbemClassObject_AddRef(i32* %45)
  br label %47

47:                                               ; preds = %42, %39, %28
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @IWbemClassObject_Release(i32* %48)
  br label %50

50:                                               ; preds = %47, %24
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @create_signature(i32, i32, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IWbemClassObject_SpawnInstance(i32*, i32, i32**) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @set_variant(i32, i32, i32*, i32*) #1

declare dso_local i32 @IWbemClassObject_Put(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @IWbemClassObject_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
