; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_OpenProduct.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_automation.c_InstallerImpl_OpenProduct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPATCH_METHOD = common dso_local global i32 0, align 4
@DISP_E_MEMBERNOTFOUND = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*, i32*, i32*)* @InstallerImpl_OpenProduct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InstallerImpl_OpenProduct(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DISPATCH_METHOD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @DISP_E_MEMBERNOTFOUND, align 4
  store i32 %19, i32* %6, align 4
  br label %39

20:                                               ; preds = %5
  %21 = call i32 @VariantInit(i32* %13)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @VT_BSTR, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @DispGetParam(i32* %22, i32 0, i32 %23, i32* %13, i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %39

31:                                               ; preds = %20
  %32 = call i32 @V_BSTR(i32* %13)
  %33 = call i32 @debugstr_w(i32 %32)
  %34 = call i32 @FIXME(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @VariantInit(i32* %35)
  %37 = call i32 @VariantClear(i32* %13)
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %31, %29, %18
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @DispGetParam(i32*, i32, i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
