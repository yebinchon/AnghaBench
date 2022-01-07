; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetTimeZoneInformationForYear.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetTimeZoneInformationForYear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }

@test_GetTimeZoneInformationForYear.std_tzname = internal constant [24 x i8] c"Greenland Standard Time\00", align 16
@test_GetTimeZoneInformationForYear.dlt_tzname = internal constant [24 x i8] c"Greenland Daylight Time\00", align 16
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"GetTimeZoneInformationForYear failed, err %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Expected Bias %d, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected StandardName %s, got %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"StandardDate does not match\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Expected StandardBias %d, got %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Expected DaylightName %s, got %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"DaylightDate does not match\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Expected DaylightBias %d, got %d\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Expected Bias 180, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Expected standard month 10, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Expected standard day 24, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Expected StandardBias 0, got %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Expected daylight month 3, got %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Expected daylight day 28, got %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Expected DaylightBias -60, got %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Got differing StandardName values %s and %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Got differing DaylightName values %s and %s\0A\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [38 x i8] c"GetTimeZoneInformationForYear err %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetTimeZoneInformationForYear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetTimeZoneInformationForYear() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_14__, align 4
  %3 = alloca %struct.TYPE_13__, align 4
  %4 = alloca %struct.TYPE_13__, align 4
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i32 @GetLocalTime(%struct.TYPE_14__* %2)
  %10 = call i32 @GetTimeZoneInformation(%struct.TYPE_13__* %3)
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pGetTimeZoneInformationForYear(i32 %12, %struct.TYPE_15__* null, %struct.TYPE_13__* %4)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @TRUE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 (...) @GetLastError()
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lstrcmpW(i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wine_dbgstr_w(i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @wine_dbgstr_w(i32 %43)
  %45 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 6
  %48 = call i32 @memcmp(%struct.TYPE_16__* %46, %struct.TYPE_16__* %47, i32 4)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %60, i32 %62)
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @lstrcmpW(i32 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @wine_dbgstr_w(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @wine_dbgstr_w(i32 %76)
  %78 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %74, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %81 = call i32 @memcmp(%struct.TYPE_16__* %79, %struct.TYPE_16__* %80, i32 4)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %93, i32 %95)
  %97 = call i32 @pGetDynamicTimeZoneInformation(%struct.TYPE_15__* %6)
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @pGetTimeZoneInformationForYear(i32 %99, %struct.TYPE_15__* %6, %struct.TYPE_13__* %4)
  store i64 %100, i64* %1, align 8
  %101 = load i64, i64* %1, align 8
  %102 = load i64, i64* @TRUE, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 (...) @GetLastError()
  %106 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @ok(i32 %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @lstrcmpW(i32 %119, i32 %121)
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @wine_dbgstr_w(i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @wine_dbgstr_w(i32 %130)
  %132 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 6
  %135 = call i32 @memcmp(%struct.TYPE_16__* %133, %struct.TYPE_16__* %134, i32 4)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %141, %143
  %145 = zext i1 %144 to i32
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %149)
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @lstrcmpW(i32 %152, i32 %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @wine_dbgstr_w(i32 %160)
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @wine_dbgstr_w(i32 %163)
  %165 = call i32 (i32, i8*, ...) @ok(i32 %158, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %161, i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 5
  %168 = call i32 @memcmp(%struct.TYPE_16__* %166, %struct.TYPE_16__* %167, i32 4)
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %174, %176
  %178 = zext i1 %177 to i32
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @ok(i32 %178, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %180, i32 %182)
  %184 = call i32 @memset(%struct.TYPE_15__* %6, i32 170, i32 16)
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @lstrcpyW(i32 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_GetTimeZoneInformationForYear.std_tzname, i64 0, i64 0))
  %188 = load i64, i64* @FALSE, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i64 %188, i64* %189, align 8
  %190 = call i64 @pGetTimeZoneInformationForYear(i32 2015, %struct.TYPE_15__* %6, %struct.TYPE_13__* %4)
  store i64 %190, i64* %1, align 8
  %191 = load i64, i64* %1, align 8
  %192 = load i64, i64* @TRUE, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 (...) @GetLastError()
  %196 = call i32 (i32, i8*, ...) @ok(i32 %194, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 180
  %200 = zext i1 %199 to i32
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i32, i8*, ...) @ok(i32 %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 10
  %208 = zext i1 %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 (i32, i8*, ...) @ok(i32 %208, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %211)
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 6
  %214 = call i32 @day_of_month(%struct.TYPE_16__* %213, i32 2015)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 24
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %7, align 4
  %219 = call i32 (i32, i8*, ...) @ok(i32 %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %218)
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i8*, ...) @ok(i32 %223, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 3
  %231 = zext i1 %230 to i32
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i32, i8*, ...) @ok(i32 %231, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %234)
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %237 = call i32 @day_of_month(%struct.TYPE_16__* %236, i32 2015)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = icmp eq i32 %238, 28
  %240 = zext i1 %239 to i32
  %241 = load i32, i32* %8, align 4
  %242 = call i32 (i32, i8*, ...) @ok(i32 %240, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %241)
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, -60
  %246 = zext i1 %245 to i32
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32, i8*, ...) @ok(i32 %246, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %248)
  %250 = call i64 @pGetTimeZoneInformationForYear(i32 2016, %struct.TYPE_15__* %6, %struct.TYPE_13__* %5)
  store i64 %250, i64* %1, align 8
  %251 = load i64, i64* %1, align 8
  %252 = load i64, i64* @TRUE, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 (...) @GetLastError()
  %256 = call i32 (i32, i8*, ...) @ok(i32 %254, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %255)
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @lstrcmpW(i32 %258, i32 %260)
  %262 = icmp ne i32 %261, 0
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @wine_dbgstr_w(i32 %266)
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @wine_dbgstr_w(i32 %269)
  %271 = call i32 (i32, i8*, ...) @ok(i32 %264, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 %267, i32 %270)
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @lstrcmpW(i32 %273, i32 %275)
  %277 = icmp ne i32 %276, 0
  %278 = xor i1 %277, true
  %279 = zext i1 %278 to i32
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @wine_dbgstr_w(i32 %281)
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @wine_dbgstr_w(i32 %284)
  %286 = call i32 (i32, i8*, ...) @ok(i32 %279, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i64 0, i64 0), i32 %282, i32 %285)
  %287 = call i32 @memset(%struct.TYPE_15__* %6, i32 170, i32 16)
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @lstrcpyW(i32 %289, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_GetTimeZoneInformationForYear.dlt_tzname, i64 0, i64 0))
  %291 = call i32 @SetLastError(i32 -559038737)
  %292 = call i64 @pGetTimeZoneInformationForYear(i32 2015, %struct.TYPE_15__* %6, %struct.TYPE_13__* %4)
  store i64 %292, i64* %1, align 8
  %293 = load i64, i64* %1, align 8
  %294 = load i64, i64* @FALSE, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %0
  %297 = call i32 (...) @GetLastError()
  %298 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %307, label %300

300:                                              ; preds = %296, %0
  %301 = load i64, i64* %1, align 8
  %302 = load i64, i64* @TRUE, align 8
  %303 = icmp eq i64 %301, %302
  %304 = zext i1 %303 to i32
  %305 = call i64 @broken(i32 %304)
  %306 = icmp ne i64 %305, 0
  br label %307

307:                                              ; preds = %300, %296
  %308 = phi i1 [ true, %296 ], [ %306, %300 ]
  %309 = zext i1 %308 to i32
  %310 = call i32 (...) @GetLastError()
  %311 = call i32 (i32, i8*, ...) @ok(i32 %309, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %310)
  ret void
}

declare dso_local i32 @GetLocalTime(%struct.TYPE_14__*) #1

declare dso_local i32 @GetTimeZoneInformation(%struct.TYPE_13__*) #1

declare dso_local i64 @pGetTimeZoneInformationForYear(i32, %struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @lstrcmpW(i32, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @memcmp(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @pGetDynamicTimeZoneInformation(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @lstrcpyW(i32, i8*) #1

declare dso_local i32 @day_of_month(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
