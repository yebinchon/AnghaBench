; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_SetAdapterOid.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_ioctl.c_SetAdapterOid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_26__, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_23__, %struct.TYPE_20__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32, i32*, i32* }

@NdisRequestSetInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Setting OID 0x%x on adapter %wZ\0A\00", align 1
@NDIS_STATUS_PENDING = common dso_local global i64 0, align 8
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NDIS_STATUS_INVALID_LENGTH = common dso_local global i64 0, align 8
@NDIS_STATUS_BUFFER_TOO_SHORT = common dso_local global i64 0, align 8
@STATUS_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Final request status: 0x%x (%d)\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i64 0, align 8
@IO_NO_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)* @SetAdapterOid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetAdapterOid(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  store %struct.TYPE_27__* %21, %struct.TYPE_27__** %6, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %28 = icmp ne %struct.TYPE_27__* %27, null
  br i1 %28, label %29, label %123

29:                                               ; preds = %2
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp uge i64 %31, 4
  br i1 %32, label %33, label %123

33:                                               ; preds = %29
  %34 = load i32, i32* @NdisRequestSetInformation, align 4
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 3
  store i32* %57, i32** %60, align 8
  br label %65

61:                                               ; preds = %33
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 3
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %61, %54
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 3
  %74 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %71, i32* %73)
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @NdisRequest(i64* %9, i32 %77, %struct.TYPE_19__* %7)
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @NDIS_STATUS_PENDING, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %65
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = load i32, i32* @Executive, align 4
  %86 = load i32, i32* @KernelMode, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = call i32 @KeWaitForSingleObject(i32* %84, i32 %85, i32 %86, i32 %87, i32* null)
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  br label %92

92:                                               ; preds = %82, %65
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @NDIS_STATUS_INVALID_LENGTH, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @NDIS_STATUS_BUFFER_TOO_SHORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %92
  %101 = load i64, i64* @STATUS_BUFFER_TOO_SMALL, align 8
  store i64 %101, i64* %9, align 8
  br label %116

102:                                              ; preds = %96
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  store i32* %111, i32** %114, align 8
  br label %115

115:                                              ; preds = %106, %102
  br label %116

116:                                              ; preds = %115, %100
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %117, i32* %121)
  br label %125

123:                                              ; preds = %29, %2
  %124 = load i64, i64* @STATUS_INVALID_PARAMETER, align 8
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %123, %116
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = load i32, i32* @IO_NO_INCREMENT, align 4
  %132 = call i32 @IoCompleteRequest(%struct.TYPE_17__* %130, i32 %131)
  %133 = load i64, i64* %9, align 8
  ret i64 %133
}

declare dso_local i32 @DPRINT(i8*, i64, i32*) #1

declare dso_local i32 @NdisRequest(i64*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
