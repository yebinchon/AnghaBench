; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiOpenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiOpenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_OPEN_IF = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@MIN_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"ObReferenceObjectByHandle() failed with status (0x%X).\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ZwCreateFile() failed with status (0x%X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiOpenDevice(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @RtlInitUnicodeString(i32* %13, i32 %15)
  %17 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %18 = call i32 @InitializeObjectAttributes(i32* %11, i32* %13, i32 %17, i32* null, i32* null)
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @GENERIC_READ, align 4
  %21 = load i32, i32* @GENERIC_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %24 = load i32, i32* @FILE_SHARE_READ, align 4
  %25 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FILE_OPEN_IF, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @ZwCreateFile(i32* %19, i32 %22, i32* %11, i32* %12, i32 0, i32 %23, i32 %26, i32 %27, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @NT_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %5
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = load i32, i32* @GENERIC_WRITE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @KernelMode, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @ObReferenceObjectByHandle(i32 %36, i32 %39, i32* null, i32 %40, i32* %41, i32* null)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @NT_SUCCESS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @MIN_TRACE, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @TDI_DbgPrint(i32 %47, i8* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ZwClose(i32 %53)
  br label %55

55:                                               ; preds = %46, %34
  br label %62

56:                                               ; preds = %5
  %57 = load i32, i32* @MIN_TRACE, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @TDI_DbgPrint(i32 %57, i8* %60)
  br label %62

62:                                               ; preds = %56, %55
  %63 = load i32, i32* %14, align 4
  ret i32 %63
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ZwCreateFile(i32*, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ObReferenceObjectByHandle(i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @TDI_DbgPrint(i32, i8*) #1

declare dso_local i32 @ZwClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
