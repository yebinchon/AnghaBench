; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbprint.c_AcpiTbPrintTableHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/tables/extr_tbprint.c_AcpiTbPrintTableHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }

@ACPI_SIG_FACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%-4.4s 0x%8.8X%8.8X %06X\00", align 1
@ACPI_TABLE_RSDP = common dso_local global i32 0, align 4
@ACPI_OEM_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"RSDP 0x%8.8X%8.8X %06X (v%.2d %-6.6s)\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"%-4.4s 0x%8.8X%8.8X %06X (v%.2d %-6.6s %-8.8s %08X %-4.4s %08X)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiTbPrintTableHeader(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ACPI_SIG_FACS, align 4
  %10 = call i64 @ACPI_COMPARE_NAMESEG(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ACPI_FORMAT_UINT64(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @ACPI_INFO(i8* %22)
  br label %96

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ACPI_VALIDATE_RSDP_SIG(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ACPI_TABLE_RSDP, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %33, %struct.TYPE_7__* %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %39 = call i32 @memcpy(i32 %32, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ACPI_OEM_ID_SIZE, align 4
  %43 = call i32 @AcpiTbFixString(i32 %41, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @ACPI_FORMAT_UINT64(i32 %44)
  %46 = load i32, i32* @ACPI_TABLE_RSDP, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %46, %struct.TYPE_7__* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %30
  %53 = load i32, i32* @ACPI_TABLE_RSDP, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %53, %struct.TYPE_7__* %54)
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  br label %59

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58, %52
  %60 = phi i32 [ %57, %52 ], [ 20, %58 ]
  %61 = load i32, i32* @ACPI_TABLE_RSDP, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = call %struct.TYPE_8__* @ACPI_CAST_PTR(i32 %61, %struct.TYPE_7__* %62)
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @ACPI_INFO(i8* %69)
  br label %95

71:                                               ; preds = %24
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = call i32 @AcpiTbCleanupTableHeader(%struct.TYPE_7__* %5, %struct.TYPE_7__* %72)
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @ACPI_FORMAT_UINT64(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @ACPI_INFO(i8* %93)
  br label %95

95:                                               ; preds = %71, %59
  br label %96

96:                                               ; preds = %95, %12
  ret void
}

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i32, i32) #1

declare dso_local i32 @ACPI_INFO(i8*) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i64 @ACPI_VALIDATE_RSDP_SIG(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @ACPI_CAST_PTR(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @AcpiTbFixString(i32, i32) #1

declare dso_local i32 @AcpiTbCleanupTableHeader(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
