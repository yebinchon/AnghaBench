; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_transmit.c_PrepareNextFragment.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_transmit.c_PrepareNextFragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i8*, i8* }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Called. IFC (0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Preparing 1 fragment.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@MID_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Copying data from %x to %x (%d)\0A\00", align 1
@IPv4_MF_MASK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"IP Check: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"No more fragments.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PrepareNextFragment(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load i32, i32* @MAX_TRACE, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = bitcast %struct.TYPE_6__* %10 to i8*
  %12 = call i32 @TI_DbgPrint(i32 %9, i8* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %131

17:                                               ; preds = %1
  %18 = load i32, i32* @MAX_TRACE, align 4
  %19 = call i32 @TI_DbgPrint(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %27, 8
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @TRUE, align 8
  store i64 %38, i64* %7, align 8
  br label %44

39:                                               ; preds = %17
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %39, %36
  %45 = load i32, i32* @MID_TRACE, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @TI_DbgPrint(i32 %45, i8* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @RtlCopyMemory(i32 %58, i64 %61, i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %44
  %72 = load i64, i64* @IPv4_MF_MASK, align 8
  %73 = load i64, i64* %8, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %80

75:                                               ; preds = %44
  %76 = load i64, i64* @IPv4_MF_MASK, align 8
  %77 = xor i64 %76, -1
  %78 = load i64, i64* %8, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %8, align 8
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i8* @WH2N(i64 %84)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = call i8* @WH2N(i64 %93)
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IPv4Checksum(%struct.TYPE_5__* %99, i32 %102, i32 0)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load i32, i32* @MID_TRACE, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call i32 @TI_DbgPrint(i32 %106, i8* %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 4
  store i64 %117, i64* %119, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load i64, i64* @TRUE, align 8
  store i64 %130, i64* %2, align 8
  br label %135

131:                                              ; preds = %1
  %132 = load i32, i32* @MAX_TRACE, align 4
  %133 = call i32 @TI_DbgPrint(i32 %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i64, i64* @FALSE, align 8
  store i64 %134, i64* %2, align 8
  br label %135

135:                                              ; preds = %131, %80
  %136 = load i64, i64* %2, align 8
  ret i64 %136
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @RtlCopyMemory(i32, i64, i32) #1

declare dso_local i8* @WH2N(i64) #1

declare dso_local i64 @IPv4Checksum(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
