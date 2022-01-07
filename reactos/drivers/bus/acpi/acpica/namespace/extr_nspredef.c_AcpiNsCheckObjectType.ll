; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nspredef.c_AcpiNsCheckObjectType.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nspredef.c_AcpiNsCheckObjectType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"Invalid return type - Found a Namespace node [%4.4s] type %s\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_RTYPE_ANY = common dso_local global i64 0, align 8
@ACPI_RTYPE_REFERENCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected return object of type %s\00", align 1
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Return type mismatch - found %s, expected %s\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"Return Package type mismatch at index %u - found %s, expected %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiNsCheckObjectType(%struct.TYPE_17__* %0, %struct.TYPE_16__** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [96 x i8], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__** %1, %struct.TYPE_16__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %10, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %20 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_16__* %19)
  %21 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %18
  %24 = load i32, i32* @AE_INFO, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @AcpiUtGetTypeName(i32 %39)
  %41 = call i32 @ACPI_WARN_PREDEFINED(i32 %40)
  %42 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %42, i32* %5, align 4
  br label %130

43:                                               ; preds = %18, %4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %45 = call i64 @AcpiNsGetBitmappedType(%struct.TYPE_16__* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_RTYPE_ANY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %79

54:                                               ; preds = %43
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %57, %58
  %60 = load i64, i64* @ACPI_RTYPE_REFERENCE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %65 = call i32 @AcpiNsCheckReference(%struct.TYPE_17__* %63, %struct.TYPE_16__* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %5, align 4
  br label %130

67:                                               ; preds = %54
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %7, align 8
  %72 = call i32 @AcpiNsSimpleRepair(%struct.TYPE_17__* %68, i64 %69, i64 %70, %struct.TYPE_16__** %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @ACPI_SUCCESS(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @AE_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %130

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78, %53
  %80 = getelementptr inbounds [96 x i8], [96 x i8]* %12, i64 0, i64 0
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @AcpiUtGetExpectedReturnTypes(i8* %80, i64 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %84 = icmp ne %struct.TYPE_16__* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @AE_INFO, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds [96 x i8], [96 x i8]* %12, i64 0, i64 0
  %94 = ptrtoint i8* %93 to i32
  %95 = call i32 @ACPI_WARN_PREDEFINED(i32 %94)
  br label %128

96:                                               ; preds = %79
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @ACPI_NOT_PACKAGE_ELEMENT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = load i32, i32* @AE_INFO, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_16__* %108)
  %110 = getelementptr inbounds [96 x i8], [96 x i8]* %12, i64 0, i64 0
  %111 = ptrtoint i8* %110 to i32
  %112 = call i32 @ACPI_WARN_PREDEFINED(i32 %111)
  br label %127

113:                                              ; preds = %96
  %114 = load i32, i32* @AE_INFO, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = call i32 @AcpiUtGetObjectTypeName(%struct.TYPE_16__* %122)
  %124 = getelementptr inbounds [96 x i8], [96 x i8]* %12, i64 0, i64 0
  %125 = ptrtoint i8* %124 to i32
  %126 = call i32 @ACPI_WARN_PREDEFINED(i32 %125)
  br label %127

127:                                              ; preds = %113, %100
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %76, %62, %23
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_16__*) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

declare dso_local i64 @AcpiNsGetBitmappedType(%struct.TYPE_16__*) #1

declare dso_local i32 @AcpiNsCheckReference(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @AcpiNsSimpleRepair(%struct.TYPE_17__*, i64, i64, %struct.TYPE_16__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiUtGetExpectedReturnTypes(i8*, i64) #1

declare dso_local i32 @AcpiUtGetObjectTypeName(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
