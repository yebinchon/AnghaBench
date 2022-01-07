; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsExecute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/extr_osl.c_AcpiOsExecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"AcpiOsExecute\0A\00", align 1
@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@THREAD_ALL_ACCESS = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsExecute(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @DPRINT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %13 = call i32 @InitializeObjectAttributes(i32* %9, i32* null, i32 %12, i32* null, i32* null)
  %14 = load i32, i32* @THREAD_ALL_ACCESS, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @PsCreateSystemThread(i32* %8, i32 %14, i32* %9, i32* null, i32* null, i32 %16, i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @NT_SUCCESS(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @AE_ERROR, align 4
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @ZwClose(i32 %25)
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %22
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @PsCreateSystemThread(i32*, i32, i32*, i32*, i32*, i32, i8*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ZwClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
