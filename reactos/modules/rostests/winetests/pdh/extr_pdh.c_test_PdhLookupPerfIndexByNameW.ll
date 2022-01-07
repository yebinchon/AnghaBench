; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfIndexByNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfIndexByNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_PdhLookupPerfIndexByNameW.no_counter = internal constant [11 x i8] c"No Counter\00", align 1
@PDH_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PdhLookupPerfIndexByNameW failed 0x%08x\0A\00", align 1
@PDH_STRING_NOT_FOUND = common dso_local global i32 0, align 4
@processor_time = common dso_local global i8* null, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"PdhLookupPerfIndexByNameW failed %d\0A\00", align 1
@uptime = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhLookupPerfIndexByNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhLookupPerfIndexByNameW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* null, i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* null, i32* %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_PdhLookupPerfIndexByNameW.no_counter, i64 0, i64 0), i32* %2)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @PDH_STRING_NOT_FOUND, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** @processor_time, align 8
  %25 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* %24, i32* null)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i8*, i8** @processor_time, align 8
  %33 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* %32, i32* %2)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @ERROR_SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 6
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8*, i8** @uptime, align 8
  %46 = call i32 @PdhLookupPerfIndexByNameW(i32* null, i8* %45, i32* %2)
  store i32 %46, i32* %1, align 4
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* @ERROR_SUCCESS, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, 674
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  ret void
}

declare dso_local i32 @PdhLookupPerfIndexByNameW(i32*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
