; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_protocol.c_ProSendAndFreePnPEvent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndis/ndis/extr_protocol.c_ProSendAndFreePnPEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, i8** }
%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 (i32, %struct.TYPE_17__*)* }

@ADAPTER_BINDING = common dso_local global i32 0, align 4
@AdapterListEntry = common dso_local global i32 0, align 4
@NDIS_STATUS_PENDING = common dso_local global i64 0, align 8
@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ProSendAndFreePnPEvent(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %8, align 8
  br label %15

15:                                               ; preds = %77, %3
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = icmp ne %struct.TYPE_19__* %16, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %15
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = load i32, i32* @ADAPTER_BINDING, align 4
  %23 = load i32, i32* @AdapterListEntry, align 4
  %24 = call %struct.TYPE_20__* @CONTAINING_RECORD(%struct.TYPE_19__* %21, i32 %22, i32 %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %10, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64 (i32, %struct.TYPE_17__*)*, i64 (i32, %struct.TYPE_17__*)** %29, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = call i64 %30(i32 %34, %struct.TYPE_17__* %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @NDIS_STATUS_PENDING, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %20
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @IoMarkIrpPending(i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %50, align 8
  %52 = bitcast %struct.TYPE_19__* %51 to i8*
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  %57 = load i64, i64* @NDIS_STATUS_PENDING, align 8
  store i64 %57, i64* %4, align 8
  br label %95

58:                                               ; preds = %20
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = icmp ne %struct.TYPE_17__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = call i32 @ExFreePool(%struct.TYPE_17__* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = call i32 @ExFreePool(%struct.TYPE_17__* %73)
  %75 = load i64, i64* %9, align 8
  store i64 %75, i64* %4, align 8
  br label %95

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %79, align 8
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %8, align 8
  br label %15

81:                                               ; preds = %15
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = icmp ne %struct.TYPE_17__* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = call i32 @ExFreePool(%struct.TYPE_17__* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = call i32 @ExFreePool(%struct.TYPE_17__* %92)
  %94 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  store i64 %94, i64* %4, align 8
  br label %95

95:                                               ; preds = %91, %72, %40
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local %struct.TYPE_20__* @CONTAINING_RECORD(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @IoMarkIrpPending(i64) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
