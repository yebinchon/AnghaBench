; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/udp/extr_udp.c_AddUDPHeaderIPv4.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/udp/extr_udp.c_AddUDPHeaderIPv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Packet: %x NdisPacket %x\0A\00", align 1
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Copying data (hdr %x data %x (%d))\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Packet: %d ip %d udp %d payload\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddUDPHeaderIPv4(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4, %struct.TYPE_6__* %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = load i32, i32* @MID_TRACE, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @TI_DbgPrint(i32 %20, i8* %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32, i32* @IPPROTO_UDP, align 4
  %36 = bitcast %struct.TYPE_5__** %18 to i32*
  %37 = call i32 @AddGenericHeaderIPv4(i32 %28, i32 %29, i8* %30, i32 %31, i8* %32, %struct.TYPE_6__* %33, i8* %34, i32 %35, i32 4, i32* %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @NT_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %8
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %9, align 4
  br label %112

43:                                               ; preds = %8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* null, i8** %51, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr i8, i8* %52, i64 4
  %54 = call i8* @WH2N(i8* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @MID_TRACE, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @TI_DbgPrint(i32 %57, i8* %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i8*, i8** %17, align 8
  %78 = call i32 @RtlCopyMemory(i64 %75, i32 %76, i8* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %84 = ptrtoint %struct.TYPE_5__* %83 to i32
  %85 = load i8*, i8** %17, align 8
  %86 = getelementptr i8, i8* %85, i64 4
  %87 = call i8* @UDPv4ChecksumCalculate(i32 %82, i32 %84, i8* %86)
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @WH2N(i8* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @MID_TRACE, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %98 = ptrtoint %struct.TYPE_5__* %97 to i64
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %98, %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %107 = ptrtoint %struct.TYPE_5__* %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = load i8*, i8** %17, align 8
  %110 = call i32 @TI_DbgPrint(i32 %96, i8* %109)
  %111 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %43, %41
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @AddGenericHeaderIPv4(i32, i32, i8*, i32, i8*, %struct.TYPE_6__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i8* @WH2N(i8*) #1

declare dso_local i32 @RtlCopyMemory(i64, i32, i8*) #1

declare dso_local i8* @UDPv4ChecksumCalculate(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
