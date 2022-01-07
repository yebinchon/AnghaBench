; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIpStatisticsEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIpStatisticsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"GetIpStatisticsEx(NULL, AF_INET) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@AF_BAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"GetIpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"GetIpStatisticsEx returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"IP IPv4 Ex stats:\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"    dwForwarding:      %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"    dwDefaultTTL:      %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"    dwInReceives:      %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"    dwInHdrErrors:     %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"    dwInAddrErrors:    %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"    dwForwDatagrams:   %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"    dwInUnknownProtos: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"    dwInDiscards:      %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"    dwInDelivers:      %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"    dwOutRequests:     %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"    dwRoutingDiscards: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"    dwOutDiscards:     %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"    dwOutNoRoutes:     %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"    dwReasmTimeout:    %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"    dwReasmReqds:      %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"    dwReasmOks:        %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"    dwReasmFails:      %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"    dwFragOks:         %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"    dwFragFails:       %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"    dwFragCreates:     %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"    dwNumIf:           %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"    dwNumAddr:         %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"    dwNumRoutes:       %u\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [19 x i8] c"IP IPv6 Ex stats:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetIpStatisticsEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetIpStatisticsEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = load i32, i32* @AF_INET, align 4
  %6 = call i64 @pGetIpStatisticsEx(%struct.TYPE_5__* null, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @AF_BAN, align 4
  %14 = call i64 @pGetIpStatisticsEx(%struct.TYPE_5__* %2, i32 %13)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @AF_INET, align 4
  %22 = call i64 @pGetIpStatisticsEx(%struct.TYPE_5__* %2, i32 %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @NO_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @NO_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %108

32:                                               ; preds = %0
  %33 = load i32, i32* @winetest_debug, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %108

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %37 = call i32 @U(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 21
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 16
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 15
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 14
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 13
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %35, %32, %0
  %109 = load i32, i32* @AF_INET6, align 4
  %110 = call i64 @pGetIpStatisticsEx(%struct.TYPE_5__* %2, i32 %109)
  store i64 %110, i64* %1, align 8
  %111 = load i64, i64* %1, align 8
  %112 = load i64, i64* @NO_ERROR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* %1, align 8
  %116 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %117 = icmp eq i64 %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i64 @broken(i32 %118)
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %114, %108
  %122 = phi i1 [ true, %108 ], [ %120, %114 ]
  %123 = zext i1 %122 to i32
  %124 = load i64, i64* %1, align 8
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %124)
  %126 = load i64, i64* %1, align 8
  %127 = load i64, i64* @NO_ERROR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %205

129:                                              ; preds = %121
  %130 = load i32, i32* @winetest_debug, align 4
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %205

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  %134 = call i32 @U(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %2)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 21
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 20
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 19
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 18
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 17
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 16
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %155)
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 15
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 14
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 13
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %167)
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 11
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i32 %185)
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %132, %129, %121
  ret void
}

declare dso_local i64 @pGetIpStatisticsEx(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @U(%struct.TYPE_5__* byval(%struct.TYPE_5__) align 8) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
