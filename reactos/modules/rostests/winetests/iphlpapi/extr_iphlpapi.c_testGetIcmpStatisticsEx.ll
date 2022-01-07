; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIcmpStatisticsEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/iphlpapi/extr_iphlpapi.c_testGetIcmpStatisticsEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [82 x i8] c"GetIcmpStatisticsEx(NULL, AF_INET) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@AF_BAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"GetIcmpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\0A\00", align 1
@NO_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"GetIcmpStatisticsEx returned %d, expected NO_ERROR\0A\00", align 1
@winetest_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"ICMP IPv4 Ex stats:           %8s %8s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"    dwMsgs:              %8u %8u\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"    dwErrors:            %8u %8u\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"    rgdwTypeCount[%3i]: %8u %8u\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@ERROR_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"ICMP IPv6 Ex stats:           %8s %8s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testGetIcmpStatisticsEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetIcmpStatisticsEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_7__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @AF_INET, align 4
  %6 = call i64 @pGetIcmpStatisticsEx(%struct.TYPE_7__* null, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @AF_BAN, align 4
  %14 = call i64 @pGetIcmpStatisticsEx(%struct.TYPE_7__* %2, i32 %13)
  store i64 %14, i64* %1, align 8
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @ok(i32 %18, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @AF_INET, align 4
  %22 = call i64 @pGetIcmpStatisticsEx(%struct.TYPE_7__* %2, i32 %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @NO_ERROR, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @NO_ERROR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %0
  %33 = load i32, i32* @winetest_debug, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %39, i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %71, %35
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %55, i32 %62, i32 %69)
  br label %71

71:                                               ; preds = %54
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %51

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74, %32, %0
  %76 = load i32, i32* @AF_INET6, align 4
  %77 = call i64 @pGetIcmpStatisticsEx(%struct.TYPE_7__* %2, i32 %76)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = load i64, i64* @NO_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @ERROR_NOT_SUPPORTED, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @broken(i32 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %81, %75
  %89 = phi i1 [ true, %75 ], [ %87, %81 ]
  %90 = zext i1 %89 to i32
  %91 = load i64, i64* %1, align 8
  %92 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %91)
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @NO_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %88
  %97 = load i32, i32* @winetest_debug, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %103, i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %110, i32 %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %135, %99
  %116 = load i32, i32* %4, align 4
  %117 = icmp slt i32 %116, 256
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %2, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %119, i32 %126, i32 %133)
  br label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %115

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138, %96, %88
  ret void
}

declare dso_local i64 @pGetIcmpStatisticsEx(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
