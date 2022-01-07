; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exfldio.c_AcpiExAccessRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exfldio.c_AcpiExAccessRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_10__* }

@ExAccessRegion = common dso_local global i32 0, align 4
@ACPI_IO_MASK = common dso_local global i32 0, align 4
@ACPI_READ = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"[READ]\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[WRITE]\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c" Region [%s:%X], Width %X, ByteBase %X, Offset %X at %8.8X%8.8X\0A\00", align 1
@AE_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Region %s (ID=%u) not implemented\00", align 1
@AE_NOT_EXIST = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Region %s (ID=%u) has no handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiExAccessRegion(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @ExAccessRegion, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @AcpiExSetupRegion(%struct.TYPE_10__* %15, i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @ACPI_FAILURE(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @return_ACPI_STATUS(i64 %22)
  br label %24

24:                                               ; preds = %21, %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %11, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @ACPI_IO_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @ACPI_READ, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %42 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([7 x i8]* @.str to i32))
  br label %46

43:                                               ; preds = %24
  %44 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %45 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([8 x i8]* @.str.1 to i32))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @AcpiUtGetRegionName(i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @ACPI_FORMAT_UINT64(i32 %71)
  %73 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ACPI_MUL_8(i32 %81)
  %83 = load i32*, i32** %8, align 8
  %84 = call i64 @AcpiEvAddressSpaceDispatch(%struct.TYPE_10__* %74, %struct.TYPE_10__* %75, i32 %76, i32 %77, i32 %82, i32* %83)
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @ACPI_FAILURE(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %46
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @AE_NOT_IMPLEMENTED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @AcpiUtGetRegionName(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ACPI_ERROR(i32 %102)
  br label %121

104:                                              ; preds = %88
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @AE_NOT_EXIST, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i32, i32* @AE_INFO, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @AcpiUtGetRegionName(i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ACPI_ERROR(i32 %118)
  br label %120

120:                                              ; preds = %108, %104
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %46
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @return_ACPI_STATUS(i64 %123)
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @AcpiExSetupRegion(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @AcpiUtGetRegionName(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i32) #1

declare dso_local i64 @AcpiEvAddressSpaceDispatch(%struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ACPI_MUL_8(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
