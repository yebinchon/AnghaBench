; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsarguments.c_AcpiNsCheckAcpiCompliance.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/namespace/extr_nsarguments.c_AcpiNsCheckAcpiCompliance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@ANOBJ_EVALUATED = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@ACPI_WARN_ALWAYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Object (%s) must be a control method with %u arguments\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Object (%s) must be a control method with no arguments and no return value\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Insufficient arguments - ASL declared %u, ACPI requires %u\00", align 1
@ARG_COUNT_IS_MINIMUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Excess arguments - ASL declared %u, ACPI requires %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiNsCheckAcpiCompliance(i8* %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ANOBJ_EVALUATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11, %3
  br label %103

19:                                               ; preds = %11
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @METHOD_GET_ARG_COUNT(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32, i32* @AE_INFO, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @AcpiUtGetTypeName(i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @ACPI_BIOS_ERROR_PREDEFINED(i32 %42)
  br label %63

44:                                               ; preds = %30
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @AE_INFO, align 4
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @AcpiUtGetTypeName(i64 %59)
  %61 = call i32 @ACPI_BIOS_ERROR_PREDEFINED(i32 %60)
  br label %62

62:                                               ; preds = %53, %47, %44
  br label %63

63:                                               ; preds = %62, %33
  br label %103

64:                                               ; preds = %19
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %7, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %64
  %75 = load i32, i32* @AE_INFO, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %8, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @ACPI_BIOS_ERROR_PREDEFINED(i32 %80)
  br label %103

82:                                               ; preds = %64
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp sgt i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ARG_COUNT_IS_MINIMUM, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @AE_INFO, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* @ACPI_WARN_ALWAYS, align 4
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ACPI_BIOS_ERROR_PREDEFINED(i32 %100)
  br label %102

102:                                              ; preds = %94, %86, %82
  br label %103

103:                                              ; preds = %18, %63, %102, %74
  ret void
}

declare dso_local i64 @METHOD_GET_ARG_COUNT(i32) #1

declare dso_local i32 @ACPI_BIOS_ERROR_PREDEFINED(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
