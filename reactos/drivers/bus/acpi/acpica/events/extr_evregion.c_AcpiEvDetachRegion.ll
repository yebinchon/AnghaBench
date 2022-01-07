; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvDetachRegion.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/events/extr_evregion.c_AcpiEvDetachRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32 }
%struct.TYPE_12__ = type { i32, i32 (%struct.TYPE_14__*, i32, i32, i8**)*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i8* }

@EvDetachRegion = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Removing Region %p from address handler %p\0A\00", align 1
@ACPI_MTX_NAMESPACE = common dso_local global i32 0, align 4
@ACPI_REG_DISCONNECT = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"from region _REG, [%s]\00", align 1
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"from region handler - deactivate, [%s]\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Circular handler list in region object %p\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Cannot remove region %p from address handler %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiEvDetachRegion(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__**, align 8
  %9 = alloca i32 (%struct.TYPE_14__*, i32, i32, i8**)*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @EvDetachRegion, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call %struct.TYPE_14__* @AcpiNsGetSecondaryObject(%struct.TYPE_14__* %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @return_VOID, align 4
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i8** %24, i8*** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = icmp ne %struct.TYPE_14__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @return_VOID, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %6, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %7, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store %struct.TYPE_14__** %41, %struct.TYPE_14__*** %8, align 8
  br label %42

42:                                               ; preds = %173, %33
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %174

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = icmp eq %struct.TYPE_14__* %46, %47
  br i1 %48, label %49, label %156

49:                                               ; preds = %45
  %50 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = ptrtoint %struct.TYPE_14__* %52 to i32
  %54 = call i32 @ACPI_DEBUG_PRINT(i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %57, align 8
  %59 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %8, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %62, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %49
  %66 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %67 = call i32 @AcpiUtReleaseMutex(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @return_VOID, align 4
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %76 = load i32, i32* @ACPI_REG_DISCONNECT, align 4
  %77 = call i32 @AcpiEvExecuteRegMethod(%struct.TYPE_14__* %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* @AE_INFO, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @AcpiUtGetRegionName(i32 %87)
  %89 = call i32 @ACPI_EXCEPTION(i32 %88)
  br label %90

90:                                               ; preds = %81, %74
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32, i32* @ACPI_MTX_NAMESPACE, align 4
  %95 = call i32 @AcpiUtAcquireMutex(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @ACPI_FAILURE(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @return_VOID, align 4
  br label %101

101:                                              ; preds = %99, %93
  br label %102

102:                                              ; preds = %101, %90
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %149

110:                                              ; preds = %102
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32 (%struct.TYPE_14__*, i32, i32, i8**)*, i32 (%struct.TYPE_14__*, i32, i32, i8**)** %113, align 8
  store i32 (%struct.TYPE_14__*, i32, i32, i8**)* %114, i32 (%struct.TYPE_14__*, i32, i32, i8**)** %9, align 8
  %115 = load i32 (%struct.TYPE_14__*, i32, i32, i8**)*, i32 (%struct.TYPE_14__*, i32, i32, i8**)** %9, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i8**, i8*** %10, align 8
  %123 = call i32 %115(%struct.TYPE_14__* %116, i32 %117, i32 %121, i8** %122)
  store i32 %123, i32* %12, align 4
  %124 = load i8**, i8*** %10, align 8
  %125 = icmp ne i8** %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i8**, i8*** %10, align 8
  store i8* null, i8** %127, align 8
  br label %128

128:                                              ; preds = %126, %110
  %129 = load i32, i32* %12, align 4
  %130 = call i64 @ACPI_FAILURE(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %128
  %133 = load i32, i32* @AE_INFO, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @AcpiUtGetRegionName(i32 %138)
  %140 = call i32 @ACPI_EXCEPTION(i32 %139)
  br label %141

141:                                              ; preds = %132, %128
  %142 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %143 = xor i32 %142, -1
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %143
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %141, %102
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %152, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = call i32 @AcpiUtRemoveReference(%struct.TYPE_14__* %153)
  %155 = load i32, i32* @return_VOID, align 4
  br label %156

156:                                              ; preds = %149, %45
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  store %struct.TYPE_14__** %159, %struct.TYPE_14__*** %8, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %162, align 8
  store %struct.TYPE_14__* %163, %struct.TYPE_14__** %6, align 8
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %166 = icmp eq %struct.TYPE_14__* %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = load i32, i32* @AE_INFO, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = ptrtoint %struct.TYPE_14__* %169 to i32
  %171 = call i32 @ACPI_ERROR(i32 %170)
  %172 = load i32, i32* @return_VOID, align 4
  br label %173

173:                                              ; preds = %167, %156
  br label %42

174:                                              ; preds = %42
  %175 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = ptrtoint %struct.TYPE_14__* %177 to i32
  %179 = call i32 @ACPI_DEBUG_PRINT(i32 %178)
  %180 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %struct.TYPE_14__* @AcpiNsGetSecondaryObject(%struct.TYPE_14__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtReleaseMutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiEvExecuteRegMethod(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @AcpiUtGetRegionName(i32) #1

declare dso_local i32 @AcpiUtAcquireMutex(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_14__*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
