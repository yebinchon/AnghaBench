; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetDynamicTimeZoneInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetDynamicTimeZoneInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, i64, i64*, i64*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64*, i64, i64*, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"got %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"got std name %s, %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"got different StandardDate\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"got daylight name %s, %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"got different DaylightDate\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"got empty tz keyname\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Dyn TimeZoneKeyName %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDynamicTimeZoneInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDynamicTimeZoneInformation() #0 {
  %1 = alloca %struct.TYPE_6__, align 8
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i64 @pGetDynamicTimeZoneInformation(%struct.TYPE_6__* %1)
  store i64 %5, i64* %3, align 8
  %6 = call i64 @GetTimeZoneInformation(%struct.TYPE_5__* %2)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = call i32 @lstrcmpW(i64* %26, i64* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @wine_dbgstr_w(i64* %34)
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @wine_dbgstr_w(i64* %37)
  %39 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 5
  %42 = call i32 @memcmp(i32* %40, i32* %41, i32 4)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %54, i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %61 = load i64*, i64** %60, align 8
  %62 = call i32 @lstrcmpW(i64* %59, i64* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = call i32 @wine_dbgstr_w(i64* %67)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 3
  %70 = load i64*, i64** %69, align 8
  %71 = call i32 @wine_dbgstr_w(i64* %70)
  %72 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %68, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 4
  %75 = call i32 @memcmp(i32* %73, i32* %74, i32 4)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 4
  %88 = load i64*, i64** %87, align 8
  %89 = call i32 @wine_dbgstr_w(i64* %88)
  %90 = call i32 @trace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  ret void
}

declare dso_local i64 @pGetDynamicTimeZoneInformation(%struct.TYPE_6__*) #1

declare dso_local i64 @GetTimeZoneInformation(%struct.TYPE_5__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrcmpW(i64*, i64*) #1

declare dso_local i32 @wine_dbgstr_w(i64*) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @trace(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
