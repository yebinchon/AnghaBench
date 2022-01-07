; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdsapi/extr_ntdsapi.c_test_DsClientMakeSpnForTargetServer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdsapi/extr_ntdsapi.c_test_DsClientMakeSpnForTargetServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_DsClientMakeSpnForTargetServer.classW = internal constant [6 x i8] c"class\00", align 1
@test_DsClientMakeSpnForTargetServer.hostW = internal constant [12 x i8] c"host.domain\00", align 1
@test_DsClientMakeSpnForTargetServer.resultW = internal constant [18 x i8] c"class/host.domain\00", align 16
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@ERROR_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"wrong data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DsClientMakeSpnForTargetServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DsClientMakeSpnForTargetServer() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  %4 = call i64 @DsClientMakeSpnForTargetServerW(i8* null, i8* null, i64* null, i8* null)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = call i64 @DsClientMakeSpnForTargetServerW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsClientMakeSpnForTargetServer.classW, i64 0, i64 0), i8* null, i64* null, i8* null)
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i64, i64* %1, align 8
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = call i64 @DsClientMakeSpnForTargetServerW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsClientMakeSpnForTargetServer.classW, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_DsClientMakeSpnForTargetServer.hostW, i64 0, i64 0), i64* null, i8* null)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i64 0, i64* %2, align 8
  %25 = call i64 @DsClientMakeSpnForTargetServerW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsClientMakeSpnForTargetServer.classW, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_DsClientMakeSpnForTargetServer.hostW, i64 0, i64 0), i64* %2, i8* null)
  store i64 %25, i64* %1, align 8
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* @ERROR_BUFFER_OVERFLOW, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %2, align 8
  %33 = call i64 @lstrlenW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_DsClientMakeSpnForTargetServer.resultW, i64 0, i64 0))
  %34 = add nsw i64 %33, 1
  %35 = icmp eq i64 %32, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %2, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %40 = call i64 @ARRAY_SIZE(i8* %39)
  store i64 %40, i64* %2, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  store i8 0, i8* %41, align 16
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %43 = call i64 @DsClientMakeSpnForTargetServerW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_DsClientMakeSpnForTargetServer.classW, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_DsClientMakeSpnForTargetServer.hostW, i64 0, i64 0), i64* %2, i8* %42)
  store i64 %43, i64* %1, align 8
  %44 = load i64, i64* %1, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %1, align 8
  %49 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i64, i64* %2, align 8
  %51 = call i64 @lstrlenW(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_DsClientMakeSpnForTargetServer.resultW, i64 0, i64 0))
  %52 = add nsw i64 %51, 1
  %53 = icmp eq i64 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %2, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %58 = call i32 @lstrcmpW(i8* %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @test_DsClientMakeSpnForTargetServer.resultW, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @DsClientMakeSpnForTargetServerW(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @lstrcmpW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
