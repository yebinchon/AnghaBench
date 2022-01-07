; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_utils.c_acpi_create_volatile_registry_tables.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_utils.c_acpi_create_volatile_registry_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [32 x i32] [i32 92, i32 82, i32 101, i32 103, i32 105, i32 115, i32 116, i32 114, i32 121, i32 92, i32 77, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 92, i32 72, i32 65, i32 82, i32 68, i32 87, i32 65, i32 82, i32 69, i32 92, i32 65, i32 67, i32 80, i32 73, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@OBJ_KERNEL_HANDLE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@REG_OPTION_VOLATILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"ZwCreateKey() for ACPI failed (Status 0x%08lx)\0A\00", align 1
@ACPI_SIG_DSDT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"AcpiGetTable() for DSDT failed (Status 0x%08lx)\0A\00", align 1
@STATUS_UNSUCCESSFUL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 68, i32 83, i32 68, i32 84, i32 0], align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"acpi_dump_table_to_registry() for DSDT failed (Status 0x%08lx)\0A\00", align 1
@ACPI_SIG_FACS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [49 x i8] c"AcpiGetTable() for FACS failed (Status 0x%08lx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i32] [i32 70, i32 65, i32 67, i32 83, i32 0], align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"acpi_dump_table_to_registry() for FACS failed (Status 0x%08lx)\0A\00", align 1
@ACPI_SIG_FADT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"AcpiGetTable() for FADT failed (Status 0x%08lx)\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i32] [i32 70, i32 65, i32 68, i32 84, i32 0], align 4
@.str.10 = private unnamed_addr constant [64 x i8] c"acpi_dump_table_to_registry() for FADT failed (Status 0x%08lx)\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"AcpiOsMapMemory() failed\0A\00", align 1
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@AcpiGbl_DoNotUseXsdt = common dso_local global i32 0, align 4
@ACPI_XSDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@ACPI_RSDT_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i32] [i32 82, i32 83, i32 68, i32 84, i32 0], align 4
@.str.13 = private unnamed_addr constant [64 x i8] c"acpi_dump_table_to_registry() for RSDT failed (Status 0x%08lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_create_volatile_registry_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([32 x i32]* @.str to i8*))
  store i32 %12, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %13 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %14 = load i32, i32* @OBJ_KERNEL_HANDLE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @InitializeObjectAttributes(i32* %2, i32* %3, i32 %15, i32* null, i32* null)
  %17 = load i32, i32* @KEY_WRITE, align 4
  %18 = load i32, i32* @REG_OPTION_VOLATILE, align 4
  %19 = call i32 @ZwCreateKey(i32** %4, i32 %17, i32* %2, i32 0, i32* null, i32 %18, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %0
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %1, align 4
  br label %148

27:                                               ; preds = %0
  %28 = load i32, i32* @ACPI_SIG_DSDT, align 4
  %29 = call i32 @AcpiGetTable(i32 %28, i32 0, %struct.TYPE_7__** %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %36, i32* %5, align 4
  br label %144

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = call i32 @acpi_create_registry_table(i32* %38, %struct.TYPE_7__* %39, i8* bitcast ([5 x i32]* @.str.3 to i8*))
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  br label %144

47:                                               ; preds = %37
  %48 = load i32, i32* @ACPI_SIG_FACS, align 4
  %49 = call i32 @AcpiGetTable(i32 %48, i32 0, %struct.TYPE_7__** %7)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %56, i32* %5, align 4
  br label %144

57:                                               ; preds = %47
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = call i32 @acpi_create_registry_table(i32* %58, %struct.TYPE_7__* %59, i8* bitcast ([5 x i32]* @.str.6 to i8*))
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  br label %144

67:                                               ; preds = %57
  %68 = load i32, i32* @ACPI_SIG_FADT, align 4
  %69 = call i32 @AcpiGetTable(i32 %68, i32 0, %struct.TYPE_7__** %7)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @STATUS_UNSUCCESSFUL, align 4
  store i32 %76, i32* %5, align 4
  br label %144

77:                                               ; preds = %67
  %78 = load i32*, i32** %4, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = call i32 @acpi_create_registry_table(i32* %78, %struct.TYPE_7__* %79, i8* bitcast ([5 x i32]* @.str.9 to i8*))
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @NT_SUCCESS(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  br label %144

87:                                               ; preds = %77
  %88 = call i64 (...) @AcpiOsGetRootPointer()
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call %struct.TYPE_7__* @AcpiOsMapMemory(i64 %89, i32 24)
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %9, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %92 = icmp ne %struct.TYPE_7__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %95, i32* %5, align 4
  br label %144

96:                                               ; preds = %87
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* @AcpiGbl_DoNotUseXsdt, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i32, i32* @ACPI_XSDT_ENTRY_SIZE, align 4
  store i32 %113, i32* %11, align 4
  br label %119

114:                                              ; preds = %106, %101, %96
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %10, align 8
  %118 = load i32, i32* @ACPI_RSDT_ENTRY_SIZE, align 4
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %121 = call i32 @AcpiOsUnmapMemory(%struct.TYPE_7__* %120, i32 24)
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call %struct.TYPE_7__* @AcpiOsMapMemory(i64 %122, i32 %123)
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %7, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = icmp ne %struct.TYPE_7__* %125, null
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %129 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %129, i32* %5, align 4
  br label %144

130:                                              ; preds = %119
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = call i32 @acpi_create_registry_table(i32* %131, %struct.TYPE_7__* %132, i8* bitcast ([5 x i32]* @.str.12 to i8*))
  store i32 %133, i32* %5, align 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @AcpiOsUnmapMemory(%struct.TYPE_7__* %134, i32 %135)
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @NT_SUCCESS(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %5, align 4
  %142 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %130
  br label %144

144:                                              ; preds = %143, %127, %93, %84, %73, %64, %53, %44, %33
  %145 = load i32*, i32** %4, align 8
  %146 = call i32 @ZwClose(i32* %145)
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %1, align 4
  br label %148

148:                                              ; preds = %144, %23
  %149 = load i32, i32* %1, align 4
  ret i32 %149
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @ZwCreateKey(i32**, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @AcpiGetTable(i32, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_create_registry_table(i32*, %struct.TYPE_7__*, i8*) #1

declare dso_local i64 @AcpiOsGetRootPointer(...) #1

declare dso_local %struct.TYPE_7__* @AcpiOsMapMemory(i64, i32) #1

declare dso_local i32 @AcpiOsUnmapMemory(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ZwClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
