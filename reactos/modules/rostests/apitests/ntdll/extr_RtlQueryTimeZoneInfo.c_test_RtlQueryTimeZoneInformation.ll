; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlQueryTimeZoneInfo.c_test_RtlQueryTimeZoneInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_RtlQueryTimeZoneInfo.c_test_RtlQueryTimeZoneInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@TIME_ZONE_ID_STANDARD = common dso_local global i64 0, align 8
@TIME_ZONE_ID_UNKNOWN = common dso_local global i64 0, align 8
@TIME_ZONE_ID_DAYLIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Get Time Zone Name failed with error = %ld.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i32] [i32 84, i32 101, i32 115, i32 116, i32 32, i32 83, i32 116, i32 97, i32 110, i32 100, i32 97, i32 114, i32 100, i32 32, i32 90, i32 111, i32 110, i32 101, i32 0], align 4
@.str.2 = private unnamed_addr constant [19 x i32] [i32 84, i32 101, i32 115, i32 116, i32 32, i32 68, i32 97, i32 121, i32 108, i32 105, i32 103, i32 104, i32 116, i32 32, i32 90, i32 111, i32 110, i32 101, i32 0], align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Set Time Zone Information failed with error = %ld.\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"SetTimeZoneInformation() is not available, so tests cannot be run.\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Get Time Zone Information Returned failed with error = %ld.\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Standard Time Zone Name = %ls, expected %ls.\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"pRtlQueryTimeZoneInformation failed, got %08lx\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"tzinfo.DaylightDate.wMonth expected '4', got '%d'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"tzinfo.DaylightDate.wDay expected '2', got '%d'.\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"tzinfo.DaylightDate.wDayOfWeek expected '6', got '%d'.\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"tzinfo.DaylightDate.wYear expected '0', got '%d'.\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"tzinfo.StandardDate.wMonth expected '11', got '%d'.\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"tzinfo.StandardDate.wDay expected '3', got '%d'.\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"tzinfo.StandardDate.wDayOfWeek expected '5', got '%d'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"tzinfo.StandardDate.wYear expected '0', got '%d'.\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"tzinfo.Bias expected '360', got '%ld'.\0A\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"tzinfo.DaylightBias expected '-60', got '%ld'.\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"tzinfo.StandardBias expected '120', got '%ld'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlQueryTimeZoneInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlQueryTimeZoneInformation() #0 {
  %1 = alloca %struct.TYPE_17__, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__, align 4
  %4 = alloca %struct.TYPE_16__, align 4
  %5 = alloca %struct.TYPE_16__, align 4
  %6 = alloca i64, align 8
  %7 = call i64 @GetTimeZoneInformation(%struct.TYPE_16__* %3)
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @TIME_ZONE_ID_STANDARD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %0
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @TIME_ZONE_ID_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @TIME_ZONE_ID_DAYLIGHT, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %15, %11, %0
  %20 = phi i1 [ true, %11 ], [ true, %0 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 (i32, i8*, i32, ...) @ok(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @ZeroMemory(%struct.TYPE_16__* %4, i32 52)
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i32 360, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wcscpy(i32 %27, i8* bitcast ([19 x i32]* @.str.1 to i8*))
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 11, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32 5, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32 3, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store i32 2, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 1
  store i32 120, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @wcscpy(i32 %39, i8* bitcast ([19 x i32]* @.str.2 to i8*))
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 6, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  store i32 2, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store i32 2, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 2
  store i32 -60, i32* %49, align 4
  %50 = call i32 @SetLastError(i32 -559038737)
  %51 = call i32 @SetTimeZoneInformation(%struct.TYPE_16__* %4)
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, i32, ...) @ok(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 (...) @GetLastError()
  %55 = icmp ne i32 %54, -559038737
  br i1 %55, label %56, label %58

56:                                               ; preds = %19
  %57 = call i32 @win_skip(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  br label %206

58:                                               ; preds = %19
  %59 = call i64 @GetTimeZoneInformation(%struct.TYPE_16__* %5)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @TIME_ZONE_ID_STANDARD, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @TIME_ZONE_ID_UNKNOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @TIME_ZONE_ID_DAYLIGHT, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %63, %58
  %72 = phi i1 [ true, %63 ], [ true, %58 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 (...) @GetLastError()
  %75 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wcscmp(i32 %77, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @wcscmp(i32 %90, i32 %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, i32, ...) @ok(i32 %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %98, i32 %100)
  %102 = call i32 @memset(%struct.TYPE_17__* %1, i32 0, i32 44)
  %103 = call i32 @pRtlQueryTimeZoneInformation(%struct.TYPE_17__* %1)
  store i32 %103, i32* %2, align 4
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %2, align 4
  %109 = call i32 (i32, i8*, i32, ...) @ok(i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 4
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, ...) @ok(i32 %114, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i32
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i32, i8*, i32, ...) @ok(i32 %123, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 6
  %132 = zext i1 %131 to i32
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, i32, ...) @ok(i32 %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  %141 = zext i1 %140 to i32
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i32, ...) @ok(i32 %141, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 11
  %150 = zext i1 %149 to i32
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i32, i8*, i32, ...) @ok(i32 %150, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 3
  %159 = zext i1 %158 to i32
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, ...) @ok(i32 %159, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 5
  %168 = zext i1 %167 to i32
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i32, i8*, i32, ...) @ok(i32 %168, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0), i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, i32, ...) @ok(i32 %177, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 360
  %185 = zext i1 %184 to i32
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, i32, ...) @ok(i32 %185, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, -60
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, ...) @ok(i32 %192, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 120
  %199 = zext i1 %198 to i32
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = call i32 (i32, i8*, i32, ...) @ok(i32 %199, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i32 %201)
  %203 = call i32 @SetTimeZoneInformation(%struct.TYPE_16__* %3)
  %204 = call i32 (...) @GetLastError()
  %205 = call i32 (i32, i8*, i32, ...) @ok(i32 %203, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %71, %56
  ret void
}

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_16__*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @wcscpy(i32, i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SetTimeZoneInformation(%struct.TYPE_16__*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @wcscmp(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @pRtlQueryTimeZoneInformation(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
