; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_init.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"msvcrt.dll\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"_gmtime32\00", align 1
@p_gmtime32 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"gmtime\00", align 1
@p_gmtime = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"_gmtime32_s\00", align 1
@p_gmtime32_s = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"_mkgmtime32\00", align 1
@p_mkgmtime32 = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"_strtime_s\00", align 1
@p_strtime_s = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"_strdate_s\00", align 1
@p_strdate_s = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"_localtime32_s\00", align 1
@p_localtime32_s = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [15 x i8] c"_localtime64_s\00", align 1
@p_localtime64_s = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"__daylight\00", align 1
@p__daylight = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"__p__daylight\00", align 1
@p___p__daylight = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"__p__dstbias\00", align 1
@p___p__dstbias = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [10 x i8] c"__dstbias\00", align 1
@p__dstbias = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"__p__timezone\00", align 1
@p___p__timezone = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@p_strftime = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"wcsftime\00", align 1
@p_wcsftime = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"asctime\00", align 1
@p_asctime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i64 @GetProcAddress(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** @p_gmtime32, align 8
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @GetProcAddress(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @p_gmtime, align 8
  %9 = load i32, i32* %1, align 4
  %10 = call i64 @GetProcAddress(i32 %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @p_gmtime32_s, align 8
  %12 = load i32, i32* %1, align 4
  %13 = call i64 @GetProcAddress(i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @p_mkgmtime32, align 8
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @GetProcAddress(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @p_strtime_s, align 8
  %18 = load i32, i32* %1, align 4
  %19 = call i64 @GetProcAddress(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** @p_strdate_s, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @GetProcAddress(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** @p_localtime32_s, align 8
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @GetProcAddress(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @p_localtime64_s, align 8
  %27 = load i32, i32* %1, align 4
  %28 = call i64 @GetProcAddress(i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** @p__daylight, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @GetProcAddress(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** @p___p__daylight, align 8
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @GetProcAddress(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** @p___p__dstbias, align 8
  %36 = load i32, i32* %1, align 4
  %37 = call i64 @GetProcAddress(i32 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** @p__dstbias, align 8
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @GetProcAddress(i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** @p___p__timezone, align 8
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @GetProcAddress(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** @p_strftime, align 8
  %45 = load i32, i32* %1, align 4
  %46 = call i64 @GetProcAddress(i32 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** @p_wcsftime, align 8
  %48 = load i32, i32* %1, align 4
  %49 = call i64 @GetProcAddress(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @p_asctime, align 8
  ret void
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
