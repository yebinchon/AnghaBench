; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_power_flags.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/busmgr/extr_bus.c_acpi_bus_get_power_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.acpi_device_power_state*, %struct.TYPE_7__ }
%struct.acpi_device_power_state = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PSC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_IRC\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@ACPI_STATE_D0 = common dso_local global i64 0, align 8
@ACPI_STATE_D3 = common dso_local global i64 0, align 8
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bus_get_power_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_get_power_flags(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.acpi_device_power_state*, align 8
  %8 = alloca [5 x i8], align 1
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %10 = icmp ne %struct.acpi_device* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %12, i32* %2, align 4
  br label %172

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @AcpiGetHandle(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ACPI_SUCCESS(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @AcpiGetHandle(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %36 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %26
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @AcpiGetHandle(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @ACPI_SUCCESS(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %49 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i64, i64* @ACPI_STATE_D0, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %134, %51
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @ACPI_STATE_D3, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %137

57:                                               ; preds = %53
  %58 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %61, i64 %62
  store %struct.acpi_device_power_state* %63, %struct.acpi_device_power_state** %7, align 8
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  store i8 95, i8* %64, align 1
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8 80, i8* %65, align 1
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 82, i8* %66, align 1
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i64, i64* %6, align 8
  %69 = add i64 48, %68
  %70 = trunc i64 %69 to i8
  store i8 %70, i8* %67, align 1
  %71 = getelementptr inbounds i8, i8* %67, i64 1
  store i8 0, i8* %71, align 1
  %72 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %73 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %76 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %77 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %76, i32 0, i32 3
  %78 = call i32 @acpi_evaluate_reference(i32 %74, i8* %75, i32* null, %struct.TYPE_10__* %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @ACPI_SUCCESS(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %57
  %83 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %84 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %90 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %94 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %88, %82, %57
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2
  store i8 83, i8* %97, align 1
  %98 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %102 = call i32 @AcpiGetHandle(i32 %100, i8* %101, i32* %5)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @ACPI_SUCCESS(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %108 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %111 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %106, %96
  %114 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %115 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %121 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119, %113
  %126 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %127 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %131 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %130, i32 0, i32 0
  store i32 -1, i32* %131, align 8
  %132 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %7, align 8
  %133 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %132, i32 0, i32 1
  store i32 -1, i32* %133, align 4
  br label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %6, align 8
  br label %53

137:                                              ; preds = %53
  %138 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %139 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 1
  %141 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %140, align 8
  %142 = load i64, i64* @ACPI_STATE_D0, align 8
  %143 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %141, i64 %142
  %144 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %147 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %148, align 8
  %150 = load i64, i64* @ACPI_STATE_D0, align 8
  %151 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %149, i64 %150
  %152 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %151, i32 0, i32 0
  store i32 100, i32* %152, align 8
  %153 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %154 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %155, align 8
  %157 = load i64, i64* @ACPI_STATE_D3, align 8
  %158 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %156, i64 %157
  %159 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %162 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 1
  %164 = load %struct.acpi_device_power_state*, %struct.acpi_device_power_state** %163, align 8
  %165 = load i64, i64* @ACPI_STATE_D3, align 8
  %166 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %164, i64 %165
  %167 = getelementptr inbounds %struct.acpi_device_power_state, %struct.acpi_device_power_state* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %169 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %170 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %137, %11
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @AcpiGetHandle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_evaluate_reference(i32, i8*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
