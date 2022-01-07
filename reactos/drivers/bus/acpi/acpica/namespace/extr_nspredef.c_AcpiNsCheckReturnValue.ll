; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nspredef.c_AcpiNsCheckReturnValue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nspredef.c_AcpiNsCheckReturnValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }

@AE_OK = common dso_local global i64 0, align 8
@AE_CTRL_RETURN_VALUE = common dso_local global i64 0, align 8
@AcpiGbl_DisableAutoRepair = common dso_local global i64 0, align 8
@ACPI_RTYPE_ALL = common dso_local global i64 0, align 8
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@AE_AML_OPERAND_TYPE = common dso_local global i64 0, align 8
@AE_AML_OPERAND_VALUE = common dso_local global i64 0, align 8
@ACPI_OBJECT_REPAIRED = common dso_local global i32 0, align 4
@ANOBJ_EVALUATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiNsCheckReturnValue(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i32 %2, i64 %3, %struct.TYPE_20__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_20__** %4, %struct.TYPE_20__*** %11, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %13, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %18 = icmp ne %struct.TYPE_19__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* @AE_OK, align 8
  store i64 %20, i64* %6, align 8
  br label %122

21:                                               ; preds = %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @AE_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @AE_CTRL_RETURN_VALUE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @AE_OK, align 8
  store i64 %30, i64* %6, align 8
  br label %122

31:                                               ; preds = %25, %21
  %32 = load i64, i64* @AcpiGbl_DisableAutoRepair, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACPI_RTYPE_ALL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40, %34, %31
  %48 = load i64, i64* @AE_OK, align 8
  store i64 %48, i64* %6, align 8
  br label %122

49:                                               ; preds = %40
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %51 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %57 = call i64 @AcpiNsCheckObjectType(%struct.TYPE_22__* %50, %struct.TYPE_20__** %51, i64 %55, i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @ACPI_FAILURE(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %103

62:                                               ; preds = %49
  %63 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = icmp ne %struct.TYPE_20__* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %103

67:                                               ; preds = %62
  %68 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %67
  %76 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  store %struct.TYPE_20__* %77, %struct.TYPE_20__** %79, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %81 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %82 = call i64 @AcpiNsCheckPackage(%struct.TYPE_22__* %80, %struct.TYPE_20__** %81)
  store i64 %82, i64* %12, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i64 @ACPI_FAILURE(i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %75
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @AE_AML_OPERAND_TYPE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* @AE_AML_OPERAND_VALUE, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %103

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = load i64, i64* %12, align 8
  %101 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %102 = call i64 @AcpiNsComplexRepairs(%struct.TYPE_22__* %98, %struct.TYPE_21__* %99, i64 %100, %struct.TYPE_20__** %101)
  store i64 %102, i64* %12, align 8
  br label %103

103:                                              ; preds = %97, %94, %66, %61
  %104 = load i64, i64* %12, align 8
  %105 = call i64 @ACPI_FAILURE(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %103
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ACPI_OBJECT_REPAIRED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %107, %103
  %115 = load i32, i32* @ANOBJ_EVALUATED, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %107
  %121 = load i64, i64* %12, align 8
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %120, %47, %29, %19
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i64 @AcpiNsCheckObjectType(%struct.TYPE_22__*, %struct.TYPE_20__**, i64, i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i64 @AcpiNsCheckPackage(%struct.TYPE_22__*, %struct.TYPE_20__**) #1

declare dso_local i64 @AcpiNsComplexRepairs(%struct.TYPE_22__*, %struct.TYPE_21__*, i64, %struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
