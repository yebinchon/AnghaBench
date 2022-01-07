; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/iphlpapi/extr_icmp.c_test_IcmpSendEcho.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/iphlpapi/extr_icmp.c_test_IcmpSendEcho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INADDR_NONE = common dso_local global i64 0, align 8
@__const.test_IcmpSendEcho.SendData = private unnamed_addr constant [32 x i8] c"Data Buffer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"IcmpCreateFile failed unexpectedly: %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"IcmpSendEcho succeeded unexpectedly\0A\00", align 1
@IP_BUF_TOO_SMALL = common dso_local global i64 0, align 8
@IP_GENERAL_FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"IcmpSendEcho returned unexpected error: %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"IcmpSendEcho failed unexpectedly: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IcmpSendEcho to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IcmpSendEcho() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = load i64, i64* @INADDR_NONE, align 8
  store i64 %8, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %9 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([32 x i8], [32 x i8]* @__const.test_IcmpSendEcho.SendData, i32 0, i32 0), i64 32, i1 false)
  store i64 0, i64* %7, align 8
  %10 = call i32 @SetLastError(i32 -559038737)
  %11 = call i64 (...) @IcmpCreateFile()
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = call i64 (...) @GetLastError()
  %17 = call i32 @skip(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %16)
  br label %61

18:                                               ; preds = %0
  store i64 134744072, i64* %2, align 8
  %19 = call i32 @malloc(i32 36)
  store i32 %19, i32* %6, align 4
  store i64 4, i64* %7, align 8
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @IcmpSendEcho(i64 %21, i64 %22, i8* %23, i32 32, i32* null, i32 %24, i64 %25, i32 5000)
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = call i32 (i64, i8*, ...) @ok(i64 %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i64 (...) @GetLastError()
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @IP_BUF_TOO_SMALL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %18
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @IP_GENERAL_FAILURE, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %37, %18
  %42 = phi i1 [ true, %18 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %4, align 8
  %46 = call i32 (i64, i8*, ...) @ok(i64 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %45)
  store i64 36, i64* %7, align 8
  %47 = call i32 @SetLastError(i32 -559038737)
  %48 = load i64, i64* %1, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %51 = load i32, i32* %6, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @IcmpSendEcho(i64 %48, i64 %49, i8* %50, i32 32, i32* null, i32 %51, i64 %52, i32 5000)
  store i64 %53, i64* %3, align 8
  %54 = load i64, i64* %3, align 8
  %55 = call i64 (...) @GetLastError()
  %56 = call i32 (i64, i8*, ...) @ok(i64 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @free(i32 %57)
  %59 = load i64, i64* %1, align 8
  %60 = call i32 @IcmpCloseHandle(i64 %59)
  br label %61

61:                                               ; preds = %41, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @IcmpCreateFile(...) #2

declare dso_local i32 @skip(i8*, i64) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @malloc(i32) #2

declare dso_local i64 @IcmpSendEcho(i64, i64, i8*, i32, i32*, i32, i64, i32) #2

declare dso_local i32 @ok(i64, i8*, ...) #2

declare dso_local i32 @free(i32) #2

declare dso_local i32 @IcmpCloseHandle(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
