; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_extrace.c_AcpiExTracePoint.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_extrace.c_AcpiExTracePoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExTracePoint = common dso_local global i32 0, align 4
@ACPI_DB_TRACE_POINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s %s [0x%p:%s] execution.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Begin\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s %s [0x%p] execution.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiExTracePoint(i32 %0, i64 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* @ExTracePoint, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load i8*, i8** %8, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %4
  %14 = load i32, i32* @ACPI_DB_TRACE_POINT, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @AcpiExGetTraceEventName(i32 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 %23)
  br label %36

25:                                               ; preds = %4
  %26 = load i32, i32* @ACPI_DB_TRACE_POINT, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @AcpiExGetTraceEventName(i32 %27)
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %33 = load i32*, i32** %7, align 8
  %34 = ptrtoint i32* %33 to i32
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  br label %36

36:                                               ; preds = %25, %13
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiExGetTraceEventName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
