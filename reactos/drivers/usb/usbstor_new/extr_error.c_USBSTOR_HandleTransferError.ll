; ModuleID = '/home/carl/AnghaBench/reactos/drivers/usb/usbstor_new/extr_error.c_USBSTOR_HandleTransferError.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/usb/usbstor_new/extr_error.c_USBSTOR_HandleTransferError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_26__*, %struct.TYPE_20__*, %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32, %struct.TYPE_25__, i64 }
%struct.TYPE_20__ = type { i64, i64, i32*, i32, i8*, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Retrying Count %lu %p\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"USBSTOR_HandleTransferError returning with Status %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @USBSTOR_HandleTransferError(i32 %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_26__* %10)
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %15 = call i32 @ASSERT(%struct.TYPE_26__* %14)
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %21 = call i32 @ASSERT(%struct.TYPE_26__* %20)
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %25 = call i32 @ASSERT(%struct.TYPE_26__* %24)
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = call i32 @USBSTOR_ResetDevice(i32 %30, %struct.TYPE_20__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @NT_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %86

38:                                               ; preds = %2
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @USBSTOR_ResetPipeWithHandle(i32 %43, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %38
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @USBSTOR_ResetPipeWithHandle(i32 %68, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %63, %38
  br label %86

86:                                               ; preds = %85, %2
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %88, align 8
  %90 = call %struct.TYPE_27__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__* %89)
  store %struct.TYPE_27__* %90, %struct.TYPE_27__** %6, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %96, %struct.TYPE_26__** %7, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %98 = call i32 @ASSERT(%struct.TYPE_26__* %97)
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %102, %struct.TYPE_26__** %8, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %104 = call i32 @ASSERT(%struct.TYPE_26__* %103)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @STATUS_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %86
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, 1
  br i1 %112, label %113, label %154

113:                                              ; preds = %108, %86
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %131, align 8
  %133 = call i32 @USBSTOR_QueueTerminateRequest(i32 %129, %struct.TYPE_26__* %132)
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  %137 = load i32, i32* @IO_NO_INCREMENT, align 4
  %138 = call i32 @IoCompleteRequest(%struct.TYPE_26__* %136, i32 %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @USBSTOR_QueueNextRequest(i32 %143)
  %145 = load i8*, i8** @FALSE, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 4
  store i8* %145, i8** %149, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 2
  store i32* null, i32** %153, align 8
  br label %191

154:                                              ; preds = %108
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %157, %struct.TYPE_26__* %162)
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 5
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %170, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  %176 = call i32 @USBSTOR_HandleExecuteSCSI(%struct.TYPE_26__* %168, %struct.TYPE_26__* %171, i32 %175)
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 4
  store i8* %177, i8** %181, align 8
  %182 = load i32, i32* @TRUE, align 4
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 3
  store i32 %182, i32* %186, align 8
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 2
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %154, %113
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  %195 = call i32 @FreeItem(%struct.TYPE_26__* %194)
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %197 = call i32 @FreeItem(%struct.TYPE_26__* %196)
  %198 = load i32, i32* %5, align 4
  %199 = call i32 (i8*, i32, ...) @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %198)
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i32 @ASSERT(%struct.TYPE_26__*) #1

declare dso_local i32 @USBSTOR_ResetDevice(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @USBSTOR_ResetPipeWithHandle(i32, i32) #1

declare dso_local %struct.TYPE_27__* @IoGetCurrentIrpStackLocation(%struct.TYPE_26__*) #1

declare dso_local i32 @USBSTOR_QueueTerminateRequest(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @USBSTOR_QueueNextRequest(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32, ...) #1

declare dso_local i32 @USBSTOR_HandleExecuteSCSI(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @FreeItem(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
