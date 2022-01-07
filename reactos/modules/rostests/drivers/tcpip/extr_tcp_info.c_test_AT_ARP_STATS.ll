; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/drivers/tcpip/extr_tcp_info.c_test_AT_ARP_STATS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/drivers/tcpip/extr_tcp_info.c_test_AT_ARP_STATS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.in_addr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@AT_ARP = common dso_local global i64 0, align 8
@INFO_CLASS_PROTOCOL = common dso_local global i32 0, align 4
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@AT_MIB_ADDRXLAT_INFO_ID = common dso_local global i32 0, align 4
@TcpFileHandle = common dso_local global i32 0, align 4
@IOCTL_TCP_QUERY_INFORMATION_EX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"DeviceIoControl failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ARP Info:\0A\00", align 1
@IndentationLevel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ai_numroutes: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ai_unknown:   %lx\0A\00", align 1
@AT_MIB_ADDRXLAT_ENTRY_ID = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ARP Entry %lu:\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ae_index:    %lu\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ae_physaddr: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ae_address:  %lx (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"ae_unknown:  %lu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @test_AT_ARP_STATS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AT_ARP_STATS(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [16 x i32], align 16
  %12 = alloca %struct.in_addr, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @AT_ARP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %143

17:                                               ; preds = %2
  %18 = call i32 @ZeroMemory(%struct.TYPE_13__* %6, i32 16)
  %19 = load i32, i32* %3, align 4
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @INFO_CLASS_PROTOCOL, align 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @AT_MIB_ADDRXLAT_INFO_ID, align 4
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TcpFileHandle, align 4
  %32 = load i32, i32* @IOCTL_TCP_QUERY_INFORMATION_EX, align 4
  %33 = call i32 @DeviceIoControl(i32 %31, i32 %32, %struct.TYPE_13__* %6, i32 16, %struct.TYPE_14__* %5, i32 48, i64* %7, i32* null)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @ok_long(i64 %36, i32 48)
  %38 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @IndentationLevel, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @IndentationLevel, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %140

50:                                               ; preds = %17
  %51 = load i32, i32* @AT_MIB_ADDRXLAT_ENTRY_ID, align 4
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = call i32 (...) @GetProcessHeap()
  %55 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %57, 48
  %59 = trunc i64 %58 to i32
  %60 = call %struct.TYPE_14__* @HeapAlloc(i32 %54, i32 %55, i32 %59)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %9, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = icmp ne %struct.TYPE_14__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %65 = load i32, i32* @TcpFileHandle, align 4
  %66 = load i32, i32* @IOCTL_TCP_QUERY_INFORMATION_EX, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %69, 48
  %71 = trunc i64 %70 to i32
  %72 = call i32 @DeviceIoControl(i32 %65, i32 %66, %struct.TYPE_13__* %6, i32 16, %struct.TYPE_14__* %67, i32 %71, i64* %7, i32* null)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = mul i64 %77, 48
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ok_long(i64 %75, i32 %79)
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %133, %50
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %136

86:                                               ; preds = %81
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %12, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %95 = call i32 @RtlIpv4AddressToStringA(%struct.in_addr* %12, i32* %94)
  %96 = load i64, i64* %10, align 8
  %97 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  %98 = load i32, i32* @IndentationLevel, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @IndentationLevel, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @dbg_print_physaddr(i32 %110, i32 %115)
  %117 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i64 %116)
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 0
  %124 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %122, i32* %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = load i64, i64* %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 (i8*, ...) @indent_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i64 %129)
  %131 = load i32, i32* @IndentationLevel, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* @IndentationLevel, align 4
  br label %133

133:                                              ; preds = %86
  %134 = load i64, i64* %10, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %81

136:                                              ; preds = %81
  %137 = call i32 (...) @GetProcessHeap()
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %139 = call i32 @HeapFree(i32 %137, i32 0, %struct.TYPE_14__* %138)
  br label %140

140:                                              ; preds = %136, %17
  %141 = load i32, i32* @IndentationLevel, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* @IndentationLevel, align 4
  br label %143

143:                                              ; preds = %140, %16
  ret void
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DeviceIoControl(i32, i32, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32, i64*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ok_long(i64, i32) #1

declare dso_local i32 @indent_printf(i8*, ...) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @RtlIpv4AddressToStringA(%struct.in_addr*, i32*) #1

declare dso_local i64 @dbg_print_physaddr(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
