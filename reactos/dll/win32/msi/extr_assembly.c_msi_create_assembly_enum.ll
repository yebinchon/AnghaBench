; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_create_assembly_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_create_assembly_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CANOF_PARSE_DISPLAY_NAME = common dso_local global i32 0, align 4
@E_NOT_SUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ASM_CACHE_GAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @msi_create_assembly_enum(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @CANOF_PARSE_DISPLAY_NAME, align 4
  %13 = call i64 @pCreateAssemblyNameObject(i32** %7, i32* %11, i32 %12, i32* null)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %67

18:                                               ; preds = %2
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @IAssemblyName_GetName(i32* %19, i32* %10, i32* null)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @E_NOT_SUFFICIENT_BUFFER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i32* @msi_alloc(i32 %28)
  store i32* %29, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %18
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @IAssemblyName_Release(i32* %32)
  store i32* null, i32** %3, align 8
  br label %67

34:                                               ; preds = %24
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @IAssemblyName_GetName(i32* %35, i32* %10, i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @IAssemblyName_Release(i32* %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i64 @FAILED(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @msi_free(i32* %44)
  store i32* null, i32** %3, align 8
  br label %67

46:                                               ; preds = %34
  %47 = load i32*, i32** %9, align 8
  %48 = call i64 @pCreateAssemblyNameObject(i32** %7, i32* %47, i32 0, i32* null)
  store i64 %48, i64* %6, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @msi_free(i32* %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @FAILED(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32* null, i32** %3, align 8
  br label %67

55:                                               ; preds = %46
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @ASM_CACHE_GAC, align 4
  %58 = call i64 @pCreateAssemblyEnum(i32** %8, i32* null, i32* %56, i32 %57, i32* null)
  store i64 %58, i64* %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @IAssemblyName_Release(i32* %59)
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @FAILED(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  br label %67

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  store i32* %66, i32** %3, align 8
  br label %67

67:                                               ; preds = %65, %64, %54, %43, %31, %17
  %68 = load i32*, i32** %3, align 8
  ret i32* %68
}

declare dso_local i64 @pCreateAssemblyNameObject(i32**, i32*, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IAssemblyName_GetName(i32*, i32*, i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @IAssemblyName_Release(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

declare dso_local i64 @pCreateAssemblyEnum(i32**, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
