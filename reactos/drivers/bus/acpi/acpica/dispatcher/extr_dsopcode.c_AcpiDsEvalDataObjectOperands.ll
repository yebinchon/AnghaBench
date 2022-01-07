; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalDataObjectOperands.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsopcode.c_AcpiDsEvalDataObjectOperands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_30__*, %struct.TYPE_30__**, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_23__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@DsEvalDataObjectOperands = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Missing child while evaluating opcode %4.4X, Op %p\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@AML_NAME_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsEvalDataObjectOperands(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, %struct.TYPE_30__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_30__* %2, %struct.TYPE_30__** %7, align 8
  %11 = load i32, i32* @DsEvalDataObjectOperands, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %31 = ptrtoint %struct.TYPE_29__* %30 to i32
  %32 = call i32 @ACPI_ERROR(i32 %31)
  %33 = load i32, i32* @AE_OK, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @AcpiDsCreateOperand(%struct.TYPE_28__* %36, i32 %41, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ACPI_FAILURE(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %46, %35
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %54, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %55, i64 %60
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %63 = call i32 @AcpiExResolveOperands(i32 %52, %struct.TYPE_30__** %61, %struct.TYPE_28__* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @ACPI_FAILURE(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %67, %49
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %72, align 8
  %74 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %73, i64 %78
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  store %struct.TYPE_30__* %80, %struct.TYPE_30__** %9, align 8
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %86 = call i32 @AcpiDsObjStackPop(i32 1, %struct.TYPE_28__* %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i64 @ACPI_FAILURE(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @return_ACPI_STATUS(i32 %91)
  br label %93

93:                                               ; preds = %90, %70
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %95 = call i32 @AcpiUtRemoveReference(%struct.TYPE_30__* %94)
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %110 [
    i32 130, label %100
    i32 129, label %105
    i32 128, label %105
  ]

100:                                              ; preds = %93
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %103 = load i64, i64* %10, align 8
  %104 = call i32 @AcpiDsBuildInternalBufferObj(%struct.TYPE_28__* %101, %struct.TYPE_29__* %102, i64 %103, %struct.TYPE_30__** %7)
  store i32 %104, i32* %8, align 4
  br label %113

105:                                              ; preds = %93, %93
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @AcpiDsBuildInternalPackageObj(%struct.TYPE_28__* %106, %struct.TYPE_29__* %107, i64 %108, %struct.TYPE_30__** %7)
  store i32 %109, i32* %8, align 4
  br label %113

110:                                              ; preds = %93
  %111 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  %112 = call i32 @return_ACPI_STATUS(i32 %111)
  br label %113

113:                                              ; preds = %110, %105, %100
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @ACPI_SUCCESS(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %113
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %120, align 8
  %122 = icmp ne %struct.TYPE_26__* %121, null
  br i1 %122, label %123, label %152

123:                                              ; preds = %117
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 129
  br i1 %131, label %132, label %156

132:                                              ; preds = %123
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 128
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* @AML_NAME_OP, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %141, %117
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 2
  store %struct.TYPE_30__* %153, %struct.TYPE_30__** %155, align 8
  br label %156

156:                                              ; preds = %152, %141, %132, %123
  br label %157

157:                                              ; preds = %156, %113
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @return_ACPI_STATUS(i32 %158)
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsCreateOperand(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExResolveOperands(i32, %struct.TYPE_30__**, %struct.TYPE_28__*) #1

declare dso_local i32 @AcpiDsObjStackPop(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_30__*) #1

declare dso_local i32 @AcpiDsBuildInternalBufferObj(%struct.TYPE_28__*, %struct.TYPE_29__*, i64, %struct.TYPE_30__**) #1

declare dso_local i32 @AcpiDsBuildInternalPackageObj(%struct.TYPE_28__*, %struct.TYPE_29__*, i64, %struct.TYPE_30__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
