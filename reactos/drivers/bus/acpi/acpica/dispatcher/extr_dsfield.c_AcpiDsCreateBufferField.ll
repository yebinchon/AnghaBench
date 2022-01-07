; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsCreateBufferField.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/dispatcher/extr_dsfield.c_AcpiDsCreateBufferField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, i32*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i64, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }

@DsCreateBufferField = common dso_local global i32 0, align 4
@AML_CREATE_FIELD_OP = common dso_local global i64 0, align 8
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_PARSE_EXECUTE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Parse execute mode is not set\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_NS_TEMPORARY = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsCreateBufferField(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  %12 = load i32, i32* @DsCreateBufferField, align 4
  %13 = call i32 @ACPI_FUNCTION_TRACE(i32 %12)
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AML_CREATE_FIELD_OP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %22 = call %struct.TYPE_26__* @AcpiPsGetArg(%struct.TYPE_26__* %21, i32 3)
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %6, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %25 = call %struct.TYPE_26__* @AcpiPsGetArg(%struct.TYPE_26__* %24, i32 2)
  store %struct.TYPE_26__* %25, %struct.TYPE_26__** %6, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %28 = icmp ne %struct.TYPE_26__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %31 = call i32 @return_ACPI_STATUS(i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %7, align 8
  br label %105

41:                                               ; preds = %32
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ACPI_PARSE_EXECUTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @AE_INFO, align 4
  %50 = call i32 @ACPI_ERROR(i32 ptrtoint ([30 x i8]* @.str to i32))
  %51 = load i32, i32* @AE_AML_INTERNAL, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  %55 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %53
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @ACPI_NS_TEMPORARY, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %63, %53
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %84 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = call i32 @AcpiNsLookup(i32 %77, i32 %82, i32 %83, i32 %84, i32 %85, %struct.TYPE_25__* %86, i32** %7)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @ACPI_FAILURE(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %74
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ACPI_ERROR_NAMESPACE(i32 %94, i32 %99, i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @return_ACPI_STATUS(i32 %102)
  br label %104

104:                                              ; preds = %91, %74
  br label %105

105:                                              ; preds = %104, %37
  %106 = load i32*, i32** %7, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 1
  store i32* %106, i32** %109, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call %struct.TYPE_27__* @AcpiNsGetAttachedObject(i32* %110)
  store %struct.TYPE_27__* %111, %struct.TYPE_27__** %9, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %113 = icmp ne %struct.TYPE_27__* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32, i32* @AE_OK, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  br label %117

117:                                              ; preds = %114, %105
  %118 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %119 = call %struct.TYPE_27__* @AcpiUtCreateInternalObject(i32 %118)
  store %struct.TYPE_27__* %119, %struct.TYPE_27__** %9, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %121 = icmp ne %struct.TYPE_27__* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %123, i32* %8, align 4
  br label %156

124:                                              ; preds = %117
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %127, align 8
  store %struct.TYPE_27__* %128, %struct.TYPE_27__** %10, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  store i32* %143, i32** %146, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %149 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %150 = call i32 @AcpiNsAttachObject(i32* %147, %struct.TYPE_27__* %148, i32 %149)
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i64 @ACPI_FAILURE(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %124
  br label %156

155:                                              ; preds = %124
  br label %156

156:                                              ; preds = %155, %154, %122
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %158 = call i32 @AcpiUtRemoveReference(%struct.TYPE_27__* %157)
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @return_ACPI_STATUS(i32 %159)
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_26__* @AcpiPsGetArg(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiNsLookup(i32, i32, i32, i32, i32, %struct.TYPE_25__*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @AcpiNsGetAttachedObject(i32*) #1

declare dso_local %struct.TYPE_27__* @AcpiUtCreateInternalObject(i32) #1

declare dso_local i32 @AcpiNsAttachObject(i32*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
