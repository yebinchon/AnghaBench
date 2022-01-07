; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfIndexByNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfIndexByNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDH_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"PdhLookupPerfIndexByNameA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"No Counter\00", align 1
@PDH_STRING_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"% Processor Time\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"PdhLookupPerfIndexByNameA failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"System Up Time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhLookupPerfIndexByNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhLookupPerfIndexByNameA() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* null, i32* null)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* null, i32* %2)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @PDH_STRING_NOT_FOUND, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @PDH_INVALID_ARGUMENT, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @ERROR_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 6
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = call i32 @PdhLookupPerfIndexByNameA(i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %2)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 674
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  ret void
}

declare dso_local i32 @PdhLookupPerfIndexByNameA(i32*, i8*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
