; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exresolv.c_AcpiExResolveObjectToValue.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exresolv.c_AcpiExResolveObjectToValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_21__**, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ExResolveObjectToValue = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"[Arg/Local %X] ValueObj is %p\0A\00", align 1
@AML_INT_METHODCALL_OP = common dso_local global i32 0, align 4
@AML_COPY_OBJECT_OP = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Attempt to dereference an Index to NULL package element Idx=%p\00", align 1
@AE_AML_UNINITIALIZED_ELEMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Unknown TargetType 0x%X in Index/Reference object %p\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_TYPE_THERMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Unknown Reference type 0x%X in %p\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FieldRead SourceDesc=%p Type=%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__**, %struct.TYPE_20__*)* @AcpiExResolveObjectToValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiExResolveObjectToValue(%struct.TYPE_21__** %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__**, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %6, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %8, align 8
  %11 = load i32, i32* @ExResolveObjectToValue, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %175 [
    i32 130, label %19
    i32 134, label %151
    i32 128, label %154
    i32 133, label %157
    i32 129, label %157
    i32 132, label %157
    i32 131, label %157
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  switch i32 %24, label %143 [
    i32 138, label %25
    i32 141, label %25
    i32 139, label %52
    i32 136, label %102
    i32 140, label %102
    i32 135, label %102
    i32 137, label %103
  ]

25:                                               ; preds = %19, %19
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = call i32 @AcpiDsMethodDataGetValue(i32 %26, i32 %30, %struct.TYPE_20__* %31, %struct.TYPE_21__** %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = load i32, i32* @ACPI_DB_EXEC, align 4
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %46 = ptrtoint %struct.TYPE_21__* %45 to i32
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = call i32 @AcpiUtRemoveReference(%struct.TYPE_21__* %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %51, align 8
  br label %150

52:                                               ; preds = %19
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %91 [
    i32 133, label %57
    i32 128, label %58
  ]

57:                                               ; preds = %52
  br label %101

58:                                               ; preds = %52
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AML_INT_METHODCALL_OP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AML_COPY_OBJECT_OP, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64, %58
  br label %101

71:                                               ; preds = %64
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %74, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  store %struct.TYPE_21__* %76, %struct.TYPE_21__** %8, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %78 = icmp ne %struct.TYPE_21__* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %81 = call i32 @AcpiUtAddReference(%struct.TYPE_21__* %80)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %83 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %83, align 8
  br label %90

84:                                               ; preds = %71
  %85 = load i32, i32* @AE_INFO, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = ptrtoint %struct.TYPE_21__* %86 to i32
  %88 = call i32 @ACPI_ERROR(i32 %87)
  %89 = load i32, i32* @AE_AML_UNINITIALIZED_ELEMENT, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %84, %79
  br label %101

91:                                               ; preds = %52
  %92 = load i32, i32* @AE_INFO, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = ptrtoint %struct.TYPE_21__* %97 to i32
  %99 = call i32 @ACPI_ERROR(i32 %98)
  %100 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %91, %90, %70, %57
  br label %150

102:                                              ; preds = %19, %19, %19
  br label %150

103:                                              ; preds = %19
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %121, label %112

112:                                              ; preds = %103
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ACPI_TYPE_THERMAL, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %112, %103
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = bitcast %struct.TYPE_17__* %125 to i8*
  %127 = bitcast i8* %126 to %struct.TYPE_21__*
  %128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %127, %struct.TYPE_21__** %128, align 8
  br label %140

129:                                              ; preds = %112
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %135, %struct.TYPE_21__** %136, align 8
  %137 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  %139 = call i32 @AcpiUtAddReference(%struct.TYPE_21__* %138)
  br label %140

140:                                              ; preds = %129, %121
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = call i32 @AcpiUtRemoveReference(%struct.TYPE_21__* %141)
  br label %150

143:                                              ; preds = %19
  %144 = load i32, i32* @AE_INFO, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = ptrtoint %struct.TYPE_21__* %146 to i32
  %148 = call i32 @ACPI_ERROR(i32 %147)
  %149 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %143, %140, %102, %101, %39
  br label %176

151:                                              ; preds = %2
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %153 = call i32 @AcpiDsGetBufferArguments(%struct.TYPE_21__* %152)
  store i32 %153, i32* %6, align 4
  br label %176

154:                                              ; preds = %2
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = call i32 @AcpiDsGetPackageArguments(%struct.TYPE_21__* %155)
  store i32 %156, i32* %6, align 4
  br label %176

157:                                              ; preds = %2, %2, %2, %2
  %158 = load i32, i32* @ACPI_DB_EXEC, align 4
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ACPI_DEBUG_PRINT(i32 %163)
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %167 = call i32 @AcpiExReadDataFromField(%struct.TYPE_20__* %165, %struct.TYPE_21__* %166, %struct.TYPE_21__** %8)
  store i32 %167, i32* %6, align 4
  %168 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = call i32 @AcpiUtRemoveReference(%struct.TYPE_21__* %169)
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %172 = bitcast %struct.TYPE_21__* %171 to i8*
  %173 = bitcast i8* %172 to %struct.TYPE_21__*
  %174 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %4, align 8
  store %struct.TYPE_21__* %173, %struct.TYPE_21__** %174, align 8
  br label %176

175:                                              ; preds = %2
  br label %176

176:                                              ; preds = %175, %157, %154, %151, %150
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @return_ACPI_STATUS(i32 %177)
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiDsMethodDataGetValue(i32, i32, %struct.TYPE_20__*, %struct.TYPE_21__**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_21__*) #1

declare dso_local i32 @AcpiUtAddReference(%struct.TYPE_21__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiDsGetBufferArguments(%struct.TYPE_21__*) #1

declare dso_local i32 @AcpiDsGetPackageArguments(%struct.TYPE_21__*) #1

declare dso_local i32 @AcpiExReadDataFromField(%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_21__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
