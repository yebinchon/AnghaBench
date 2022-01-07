; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfNameByIndexW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhLookupPerfNameByIndexW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PDH_MAX_COUNTER_NAME = common dso_local global i32 0, align 4
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"PdhLookupPerfNameByIndexW failed 0x%08x\0A\00", align 1
@PDH_MORE_DATA = common dso_local global i64 0, align 8
@PDH_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@processor_time = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"PdhLookupPerfNameByIndexW failed %d\0A\00", align 1
@uptime = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhLookupPerfNameByIndexW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhLookupPerfNameByIndexW() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @PDH_MAX_COUNTER_NAME, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i32, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = call i64 @PdhLookupPerfNameByIndexW(i32* null, i32 0, i32* null, i64* null)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %14)
  store i64 0, i64* %4, align 8
  %16 = call i64 @PdhLookupPerfNameByIndexW(i32* null, i32 6, i32* %8, i64* %4)
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @PDH_MORE_DATA, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @PDH_INSUFFICIENT_BUFFER, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %0
  %25 = phi i1 [ true, %0 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = call i64 @ARRAY_SIZE(i32* %8)
  store i64 %29, i64* %4, align 8
  %30 = call i64 @PdhLookupPerfNameByIndexW(i32* null, i32 6, i32* %8, i64* %4)
  store i64 %30, i64* %1, align 8
  %31 = load i64, i64* %1, align 8
  %32 = load i64, i64* @ERROR_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %1, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = load i32*, i32** @processor_time, align 8
  %39 = call i64 @ARRAY_SIZE(i32* %38)
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = call i64 @ARRAY_SIZE(i32* %8)
  store i64 %44, i64* %4, align 8
  %45 = call i64 @PdhLookupPerfNameByIndexW(i32* null, i32 674, i32* null, i64* %4)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %24
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @PDH_MORE_DATA, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %24
  %54 = phi i1 [ true, %24 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %1, align 8
  %57 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = call i64 @ARRAY_SIZE(i32* %8)
  store i64 %58, i64* %4, align 8
  %59 = call i64 @PdhLookupPerfNameByIndexW(i32* null, i32 674, i32* %8, i64* %4)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* @ERROR_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i64, i64* %1, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %4, align 8
  %67 = load i32*, i32** @uptime, align 8
  %68 = call i64 @ARRAY_SIZE(i32* %67)
  %69 = icmp eq i64 %66, %68
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  %73 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %73)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @PdhLookupPerfNameByIndexW(i32*, i32, i32*, i64*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
