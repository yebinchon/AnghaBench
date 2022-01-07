; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_arp.c_PrepareARPPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_arp.c_PrepareARPPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8* }

@DEBUG_ARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PrepareARPPacket(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i64 %5, i64 %6, i64 %7, i64 %8, i8* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_5__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i8* %9, i8** %21, align 8
  %28 = load i32, i32* @DEBUG_ARP, align 4
  %29 = call i32 @TI_DbgPrint(i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %15, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = load i32, i32* %16, align 4
  %35 = mul nsw i32 2, %34
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %26, align 4
  %39 = load i32, i32* %26, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @MAX(i32 %39, i64 %46)
  store i32 %47, i32* %26, align 4
  %48 = load i32, i32* %26, align 4
  %49 = call i32 @AllocatePacketWithBuffer(i32** %22, i32* null, i32 %48)
  store i32 %49, i32* %23, align 4
  %50 = load i32, i32* %23, align 4
  %51 = call i32 @NT_SUCCESS(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %10
  store i32* null, i32** %11, align 8
  br label %131

54:                                               ; preds = %10
  %55 = load i32*, i32** %22, align 8
  %56 = bitcast i64* %25 to i32*
  %57 = ptrtoint i32* %27 to i32
  %58 = call i32 @GetDataPtr(i32* %55, i32 0, i32* %56, i32 %57)
  %59 = load i64, i64* %25, align 8
  %60 = call i32 @ASSERT(i64 %59)
  %61 = load i64, i64* %25, align 8
  %62 = load i32, i32* %26, align 4
  %63 = call i32 @RtlZeroMemory(i64 %61, i32 %62)
  %64 = load i64, i64* %25, align 8
  %65 = trunc i64 %64 to i32
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %24, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i8*, i8** %21, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %84 = ptrtoint %struct.TYPE_5__* %83 to i32
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  store i64 %86, i64* %25, align 8
  %87 = load i64, i64* %25, align 8
  %88 = load i64, i64* %17, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @RtlCopyMemory(i64 %87, i64 %88, i32 %89)
  %91 = load i64, i64* %25, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %25, align 8
  %96 = load i64, i64* %25, align 8
  %97 = load i64, i64* %18, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @RtlCopyMemory(i64 %96, i64 %97, i32 %98)
  %100 = load i64, i64* %19, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %54
  %103 = load i64, i64* %25, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %25, align 8
  %108 = load i64, i64* %25, align 8
  %109 = load i64, i64* %19, align 8
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @RtlCopyMemory(i64 %108, i64 %109, i32 %110)
  %112 = load i64, i64* %25, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %25, align 8
  br label %125

117:                                              ; preds = %54
  %118 = load i64, i64* %25, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i32, i32* %16, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %25, align 8
  br label %125

125:                                              ; preds = %117, %102
  %126 = load i64, i64* %25, align 8
  %127 = load i64, i64* %20, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @RtlCopyMemory(i64 %126, i64 %127, i32 %128)
  %130 = load i32*, i32** %22, align 8
  store i32* %130, i32** %11, align 8
  br label %131

131:                                              ; preds = %125, %53
  %132 = load i32*, i32** %11, align 8
  ret i32* %132
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local i32 @AllocatePacketWithBuffer(i32**, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @GetDataPtr(i32*, i32, i32*, i32) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32 @RtlZeroMemory(i64, i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
