; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_utils.c_acpi_evaluate_reference.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_utils.c_acpi_evaluate_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_handle_list = type { i64, i64* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i32*, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acpi_evaluate_reference\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"No return object (len %X ptr %p)\0A\00", align 1
@AE_BAD_DATA = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Expecting a [Package], found type %X\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"[Package] has zero elements (%p)\0A\00", align 1
@ACPI_MAX_HANDLES = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"Expecting a [Reference] package element, found type %X\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Invalid reference in package %s\0A\00", align 1
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Found reference [%p]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_evaluate_reference(i32 %0, i32 %1, i32* %2, %struct.acpi_handle_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.acpi_handle_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.acpi_handle_list* %3, %struct.acpi_handle_list** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %10, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %17 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 3
  store i32 0, i32* %21, align 8
  store i64 0, i64* %14, align 8
  %22 = call i32 @ACPI_FUNCTION_TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %24 = icmp ne %struct.acpi_handle_list* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @AcpiEvaluateObject(i32 %29, i32 %30, i32* %31, %struct.TYPE_9__* %13)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %172

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %59, label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* @ACPI_DB_ERROR, align 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = ptrtoint %struct.TYPE_8__* %51 to i32
  %53 = call i32 @ACPI_DEBUG_PRINT(i32 %52)
  %54 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @acpi_util_eval_error(i32 %55, i32 %56, i32 %57)
  br label %172

59:                                               ; preds = %44
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %59
  %66 = load i32, i32* @ACPI_DB_ERROR, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ACPI_DEBUG_PRINT(i32 %70)
  %72 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @acpi_util_eval_error(i32 %73, i32 %74, i32 %75)
  br label %172

77:                                               ; preds = %59
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @ACPI_DB_ERROR, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = ptrtoint %struct.TYPE_8__* %85 to i32
  %87 = call i32 @ACPI_DEBUG_PRINT(i32 %86)
  %88 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @acpi_util_eval_error(i32 %89, i32 %90, i32 %91)
  br label %172

93:                                               ; preds = %77
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_MAX_HANDLES, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %101, i32* %5, align 4
  br label %190

102:                                              ; preds = %93
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %108 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  store i64 0, i64* %14, align 8
  br label %109

109:                                              ; preds = %168, %102
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %112 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %171

115:                                              ; preds = %109
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i64, i64* %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %120
  store %struct.TYPE_8__* %121, %struct.TYPE_8__** %12, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %115
  %128 = load i32, i32* @AE_BAD_DATA, align 4
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* @ACPI_DB_ERROR, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ACPI_DEBUG_PRINT(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @acpi_util_eval_error(i32 %134, i32 %135, i32 %136)
  br label %171

138:                                              ; preds = %115
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @ACPI_DB_ERROR, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @ACPI_DEBUG_PRINT(i32 %146)
  %148 = load i32, i32* @AE_NULL_ENTRY, align 4
  store i32 %148, i32* %10, align 4
  br label %171

149:                                              ; preds = %138
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %155 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 %153, i64* %158, align 8
  %159 = load i32, i32* @ACPI_DB_INFO, align 4
  %160 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %161 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %160, i32 0, i32 1
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %14, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @ACPI_DEBUG_PRINT(i32 %166)
  br label %168

168:                                              ; preds = %149
  %169 = load i64, i64* %14, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %14, align 8
  br label %109

171:                                              ; preds = %144, %127, %109
  br label %172

172:                                              ; preds = %171, %83, %65, %47, %36
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @ACPI_FAILURE(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %9, align 8
  %178 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %177, i32 0, i32 0
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %176, %172
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @AcpiOsFree(i64 %185)
  br label %187

187:                                              ; preds = %183, %179
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @return_ACPI_STATUS(i32 %188)
  br label %190

190:                                              ; preds = %187, %100
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i8*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_util_eval_error(i32, i32, i32) #1

declare dso_local i32 @AcpiOsFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
