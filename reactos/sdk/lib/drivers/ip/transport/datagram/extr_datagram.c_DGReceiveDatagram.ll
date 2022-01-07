; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGReceiveDatagram.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGReceiveDatagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32, i8*, i32, i32, %struct.TYPE_11__*, i32, i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@DATAGRAM_RECV_TAG = common dso_local global i32 0, align 4
@DGReceiveComplete = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Leaving (pending %08x).\0A\00", align 1
@STATUS_PENDING = common dso_local global i32 0, align 4
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Leaving with errors (0x%X).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DGReceiveDatagram(%struct.TYPE_13__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_11__* %5, i32 %6, i8* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %25 = load i32, i32* @MAX_TRACE, align 4
  %26 = call i32 @TI_DbgPrint(i32 %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %28 = call i32 @LockObject(%struct.TYPE_13__* %27, i32* %24)
  %29 = load i32, i32* @NonPagedPool, align 4
  %30 = load i32, i32* @DATAGRAM_RECV_TAG, align 4
  %31 = call %struct.TYPE_12__* @ExAllocatePoolWithTag(i32 %29, i32 4, i32 %30)
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %23, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br i1 %33, label %34, label %115

34:                                               ; preds = %10
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 10
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 11
  %52 = call i32 @AddrGetAddress(i64 %47, i32* %49, i64* %51)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @NT_SUCCESS(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %44
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %58 = load i32, i32* @DATAGRAM_RECV_TAG, align 4
  %59 = call i32 @ExFreePoolWithTag(%struct.TYPE_12__* %57, i32 %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %61 = load i32, i32* %24, align 4
  %62 = call i32 @UnlockObject(%struct.TYPE_13__* %60, i32 %61)
  %63 = load i32, i32* %22, align 4
  store i32 %63, i32* %11, align 4
  br label %127

64:                                               ; preds = %44
  br label %71

65:                                               ; preds = %39, %34
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 11
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 10
  %70 = call i32 @AddrInitIPv4(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %65, %64
  %72 = load i32, i32* %21, align 4
  %73 = call i32 @IoMarkIrpPending(i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 9
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %76, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* %20, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load i64, i64* @DGReceiveComplete, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %98, align 8
  %99 = load i32, i32* %21, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = call i32 @InsertTailList(i32* %103, i32* %105)
  %107 = load i32, i32* @MAX_TRACE, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %109 = bitcast %struct.TYPE_12__* %108 to i8*
  %110 = call i32 @TI_DbgPrint(i32 %107, i8* %109)
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %112 = load i32, i32* %24, align 4
  %113 = call i32 @UnlockObject(%struct.TYPE_13__* %111, i32 %112)
  %114 = load i32, i32* @STATUS_PENDING, align 4
  store i32 %114, i32* %11, align 4
  br label %127

115:                                              ; preds = %10
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %117 = load i32, i32* %24, align 4
  %118 = call i32 @UnlockObject(%struct.TYPE_13__* %116, i32 %117)
  %119 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %119, i32* %22, align 4
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* @MAX_TRACE, align 4
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @TI_DbgPrint(i32 %121, i8* %124)
  %126 = load i32, i32* %22, align 4
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %120, %71, %56
  %128 = load i32, i32* %11, align 4
  ret i32 %128
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @LockObject(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @AddrGetAddress(i64, i32*, i64*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AddrInitIPv4(i32*, i32) #1

declare dso_local i32 @IoMarkIrpPending(i32) #1

declare dso_local i32 @InsertTailList(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
