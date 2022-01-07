; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_ProbeIsaPnpBus.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_ProbeIsaPnpBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }

@FILE_DEVICE_CONTROLLER = common dso_local global i32 0, align 4
@FILE_DEVICE_SECURE_OPEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DO_BUS_ENUMERATED_DEVICE = common dso_local global i32 0, align 4
@dsStopped = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Detected ISA PnP device - VID: 0x%x PID: 0x%x IoBase: 0x%x IRQ:0x%x\0A\00", align 1
@DO_DEVICE_INITIALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProbeIsaPnpBus(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_22__, align 4
  %6 = alloca %struct.TYPE_21__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ASSERT(i32 %13)
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %150, %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp sle i32 %16, 255
  br i1 %17, label %18, label %153

18:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %146, %18
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %20, 255
  br i1 %21, label %22, label %149

22:                                               ; preds = %19
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FILE_DEVICE_CONTROLLER, align 4
  %30 = load i32, i32* @FILE_DEVICE_SECURE_OPEN, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @IoCreateDevice(i32 %28, i32 4, i32* null, i32 %29, i32 %30, i32 %31, %struct.TYPE_20__** %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %2, align 4
  br label %155

38:                                               ; preds = %22
  %39 = load i32, i32* @DO_BUS_ENUMERATED_DEVICE, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %4, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %48 = call i32 @RtlZeroMemory(%struct.TYPE_18__* %47, i32 4)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %52, align 8
  %53 = load i32, i32* @FALSE, align 4
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @dsStopped, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = call i32 (...) @WaitForKey()
  %68 = call i32 (...) @SendKey()
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @Wake(i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @Peek(i32 %73, %struct.TYPE_22__* %5, i32 4)
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 128
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %38
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = call i32 @IoDeleteDevice(%struct.TYPE_20__* %83)
  %85 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %155

86:                                               ; preds = %38
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @FindLogDevId(i32 %89, i32 %90, %struct.TYPE_21__* %6)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %149

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @WriteLogicalDeviceNumber(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ReadIoBase(i32 %107, i32 0)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @ReadIrqNo(i32 %113, i32 0)
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @DPRINT1(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %122, i32 %125, i32 %128)
  %130 = call i32 (...) @WaitForKey()
  %131 = load i32, i32* @DO_DEVICE_INITIALIZING, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  %141 = call i32 @InsertTailList(i32* %138, i32* %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %94
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %19

149:                                              ; preds = %93, %19
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %15

153:                                              ; preds = %15
  %154 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %79, %36
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IoCreateDevice(i32, i32, i32*, i32, i32, i32, %struct.TYPE_20__**) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @WaitForKey(...) #1

declare dso_local i32 @SendKey(...) #1

declare dso_local i32 @Wake(i32) #1

declare dso_local i32 @Peek(i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @IoDeleteDevice(%struct.TYPE_20__*) #1

declare dso_local i32 @FindLogDevId(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @WriteLogicalDeviceNumber(i32) #1

declare dso_local i32 @ReadIoBase(i32, i32) #1

declare dso_local i32 @ReadIrqNo(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
