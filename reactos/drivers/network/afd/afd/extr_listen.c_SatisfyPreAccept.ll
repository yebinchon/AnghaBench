; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_listen.c_SatisfyPreAccept.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_listen.c_SatisfyPreAccept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__, i64, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Giving SEQ %u to userland\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Socket Address (K) %p (U) %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"IPAddr->TAAddressCount %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"IPAddr->Address[0].AddressType %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"IPAddr->Address[0].AddressLength %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"IPAddr->Address[0].Address[0].sin_port %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"IPAddr->Address[0].Address[0].sin_addr %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@IO_NETWORK_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @SatisfyPreAccept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SatisfyPreAccept(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %5, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MID_TRACE, align 4
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @AFD_DbgPrint(i32 %18, i8* %23)
  %25 = load i32, i32* @MID_TRACE, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @AFD_DbgPrint(i32 %25, i8* %34)
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TaCopyTransportAddressInPlace(i32* %37, i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = bitcast i32* %45 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %46, %struct.TYPE_21__** %6, align 8
  %47 = load i32, i32* @MID_TRACE, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @AFD_DbgPrint(i32 %47, i8* %52)
  %54 = load i32, i32* @MID_TRACE, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @AFD_DbgPrint(i32 %54, i8* %62)
  %64 = load i32, i32* @MID_TRACE, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @AFD_DbgPrint(i32 %64, i8* %72)
  %74 = load i32, i32* @MID_TRACE, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @AFD_DbgPrint(i32 %74, i8* %85)
  %87 = load i32, i32* @MID_TRACE, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = call i32 @AFD_DbgPrint(i32 %87, i8* %98)
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %2
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %107 = call i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_22__* %106)
  %108 = call i32 @UnlockRequest(%struct.TYPE_22__* %105, i32 %107)
  br label %109

109:                                              ; preds = %104, %2
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 1
  %112 = ptrtoint %struct.TYPE_21__* %111 to i64
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %114 = ptrtoint %struct.TYPE_24__* %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load i32, i32* @STATUS_SUCCESS, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = call i32 @IoSetCancelRoutine(%struct.TYPE_22__* %123, i32* null)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %126 = load i32, i32* @IO_NETWORK_INCREMENT, align 4
  %127 = call i32 @IoCompleteRequest(%struct.TYPE_22__* %125, i32 %126)
  %128 = load i32, i32* @STATUS_SUCCESS, align 4
  ret i32 %128
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i32 @TaCopyTransportAddressInPlace(i32*, i32) #1

declare dso_local i32 @UnlockRequest(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_22__*) #1

declare dso_local i32 @IoSetCancelRoutine(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
