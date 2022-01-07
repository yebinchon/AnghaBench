; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiOpenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_tdi.c_TdiOpenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Called. DeviceName (%wZ, %u)\0A\00", align 1
@AFD_SHARE_REUSE = common dso_local global i64 0, align 8
@FILE_SHARE_READ = common dso_local global i64 0, align 8
@FILE_SHARE_WRITE = common dso_local global i64 0, align 8
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@IoFileObjectType = common dso_local global i32* null, align 8
@KernelMode = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"ObReferenceObjectByHandle() failed with status (0x%X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Got handle (%p)  Object (%p)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ZwCreateFile() failed with status (0x%X)\0A\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64, i32*, i32**)* @TdiOpenDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TdiOpenDevice(i32 %0, i64 %1, i32 %2, i64 %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32** %5, i32*** %12, align 8
  %17 = load i32, i32* @MAX_TRACE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i64, i64* %10, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @AFD_DbgPrint(i32 %17, i8* %20)
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @AFD_SHARE_REUSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i64 0, i64* %16, align 8
  br label %30

26:                                               ; preds = %6
  %27 = load i64, i64* @FILE_SHARE_READ, align 8
  %28 = load i64, i64* @FILE_SHARE_WRITE, align 8
  %29 = or i64 %27, %28
  store i64 %29, i64* %16, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %33 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @InitializeObjectAttributes(i32* %13, i32 %31, i32 %34, i32* null, i32* null)
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = load i32, i32* @GENERIC_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SYNCHRONIZE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %43 = load i64, i64* %16, align 8
  %44 = load i32, i32* @FILE_OPEN_IF, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ZwCreateFile(i32* %36, i32 %41, i32* %13, i32* %14, i32 0, i32 %42, i64 %43, i32 %44, i32 0, i32 %45, i64 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i64 @NT_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %30
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GENERIC_READ, align 4
  %55 = load i32, i32* @GENERIC_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @SYNCHRONIZE, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** @IoFileObjectType, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @KernelMode, align 4
  %62 = load i32**, i32*** %12, align 8
  %63 = bitcast i32** %62 to i32*
  %64 = call i32 @ObReferenceObjectByHandle(i32 %53, i32 %58, i32 %60, i32 %61, i32* %63, i32* null)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @NT_SUCCESS(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* @MIN_TRACE, align 4
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @AFD_DbgPrint(i32 %69, i8* %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ZwClose(i32 %75)
  br label %85

77:                                               ; preds = %51
  %78 = load i32, i32* @MAX_TRACE, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32**, i32*** %12, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to i8*
  %84 = call i32 @AFD_DbgPrint(i32 %78, i8* %83)
  br label %85

85:                                               ; preds = %77, %68
  br label %92

86:                                               ; preds = %30
  %87 = load i32, i32* @MIN_TRACE, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @AFD_DbgPrint(i32 %87, i8* %90)
  br label %92

92:                                               ; preds = %86, %85
  %93 = load i32, i32* %15, align 4
  %94 = call i64 @NT_SUCCESS(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %98 = load i32*, i32** %11, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32**, i32*** %12, align 8
  store i32* null, i32** %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @ZwCreateFile(i32*, i32, i32*, i32*, i32, i32, i64, i32, i32, i32, i64) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ObReferenceObjectByHandle(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ZwClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
