; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_icmp.c_PrepareICMPPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_icmp.c_PrepareICMPPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i64, %struct.TYPE_25__*, %struct.TYPE_25__, i32, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i32, i64, i64, i32, i64 }

@DEBUG_ICMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Called. DataSize (%d).\0A\00", align 1
@IP_ADDRESS_V4 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Size (%d). Data at (0x%X).\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"NdisPacket at (0x%X).\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Copying Address: %x -> %x\0A\00", align 1
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@MID_TRACE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"Leaving\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PrepareICMPPacket(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1, %struct.TYPE_23__* %2, %struct.TYPE_25__* %3, %struct.TYPE_25__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @DEBUG_ICMP, align 4
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @TI_DbgPrint(i32 %18, i8* %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %24 = load i32, i32* @IP_ADDRESS_V4, align 4
  %25 = call i32 @IPInitializePacket(%struct.TYPE_23__* %23, i32 %24)
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 4, %29
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i32 @AllocatePacketWithBuffer(i32* %14, i32* null, i64 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @NT_SUCCESS(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %6
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %7, align 4
  br label %152

38:                                               ; preds = %6
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 2
  %50 = bitcast i64* %49 to %struct.TYPE_25__**
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = call i32 @GetDataPtr(i32 %47, i32 0, %struct.TYPE_25__** %50, i64* %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %17, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load i32, i32* @DEBUG_ICMP, align 4
  %62 = load i64, i64* %17, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %64 = bitcast %struct.TYPE_25__* %63 to i8*
  %65 = call i32 @TI_DbgPrint(i32 %61, i8* %64)
  %66 = load i32, i32* @DEBUG_ICMP, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @TI_DbgPrint(i32 %66, i8* %69)
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  store i32 4, i32* %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.TYPE_25__*
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i64 %80
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 3
  store %struct.TYPE_25__* %81, %struct.TYPE_25__** %83, align 8
  %84 = load i32, i32* @DEBUG_ICMP, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %88 = bitcast %struct.TYPE_25__* %87 to i8*
  %89 = call i32 @TI_DbgPrint(i32 %84, i8* %88)
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %93 = call i32 @RtlCopyMemory(%struct.TYPE_25__* %91, %struct.TYPE_25__* %92, i32 4)
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @RtlCopyMemory(%struct.TYPE_25__* %96, %struct.TYPE_25__* %97, i32 %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %103, %struct.TYPE_22__** %16, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i32 69, i32* %105, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 9
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, 4
  %111 = call i32 @WH2N(i64 %110)
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = call i64 (...) @Random()
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 7
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %120 = icmp ne %struct.TYPE_26__* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %38
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %130

127:                                              ; preds = %38
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  store i32 128, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %121
  %131 = load i32, i32* @IPPROTO_ICMP, align 4
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 4
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @MID_TRACE, align 4
  %150 = call i32 @TI_DbgPrint(i32 %149, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %151 = load i32, i32* @TRUE, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %130, %36
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @IPInitializePacket(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @AllocatePacketWithBuffer(i32*, i32*, i64) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @GetDataPtr(i32, i32, %struct.TYPE_25__**, i64*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_25__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @WH2N(i64) #1

declare dso_local i64 @Random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
