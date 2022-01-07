; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exmutex.c_AcpiExReleaseMutex.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/executer/extr_exmutex.c_AcpiExReleaseMutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32 }

@AE_OK = common dso_local global i32 0, align 4
@ExReleaseMutex = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot release Mutex [%4.4s], not acquired\00", align 1
@AE_AML_MUTEX_NOT_ACQUIRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cannot release Mutex [%4.4s], null thread info\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AcpiGbl_GlobalLockMutex = common dso_local global %struct.TYPE_18__* null, align 8
@.str.2 = private unnamed_addr constant [61 x i8] c"Thread %u cannot release Mutex [%4.4s] acquired by thread %u\00", align 1
@AE_AML_NOT_OWNER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [70 x i8] c"Cannot release Mutex [%4.4s], SyncLevel mismatch: mutex %u current %u\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [89 x i8] c"Releasing: Object SyncLevel %u, Thread SyncLevel %u, Prev SyncLevel %u, Depth %u TID %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"Released: Object SyncLevel %u, Thread SyncLevel, %u, Prev SyncLevel %u, Depth %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExReleaseMutex(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ExReleaseMutex, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = icmp ne %struct.TYPE_18__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @AE_INFO, align 4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @AcpiUtGetNodeName(i32 %29)
  %31 = call i32 @ACPI_ERROR(i32 %30)
  %32 = load i32, i32* @AE_AML_MUTEX_NOT_ACQUIRED, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %24, %17
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @AE_INFO, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AcpiUtGetNodeName(i32 %44)
  %46 = call i32 @ACPI_ERROR(i32 %45)
  %47 = load i32, i32* @AE_AML_INTERNAL, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %49
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** @AcpiGbl_GlobalLockMutex, align 8
  %62 = icmp ne %struct.TYPE_18__* %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @AcpiUtGetNodeName(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ACPI_ERROR(i32 %79)
  %81 = load i32, i32* @AE_AML_NOT_OWNER, align 4
  %82 = call i32 @return_ACPI_STATUS(i32 %81)
  br label %83

83:                                               ; preds = %63, %59, %49
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %83
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @AcpiUtGetNodeName(i32 %97)
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ACPI_ERROR(i32 %107)
  %109 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  br label %111

111:                                              ; preds = %92, %83
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %6, align 8
  %118 = load i32, i32* @ACPI_DB_EXEC, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  %136 = ptrtoint %struct.TYPE_14__* %135 to i32
  %137 = call i32 @ACPI_DEBUG_PRINT(i32 %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %139 = call i32 @AcpiExReleaseMutexObject(%struct.TYPE_18__* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i64 @ACPI_FAILURE(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %111
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @return_ACPI_STATUS(i32 %144)
  br label %146

146:                                              ; preds = %143, %111
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load i64, i64* %6, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %146
  %157 = load i32, i32* @ACPI_DB_EXEC, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* %6, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ACPI_DEBUG_PRINT(i32 %171)
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @return_ACPI_STATUS(i32 %173)
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @AcpiUtGetNodeName(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiExReleaseMutexObject(%struct.TYPE_18__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
