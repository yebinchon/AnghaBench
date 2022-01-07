; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_ReadClassStm.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_ReadClassStm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ReadClassStm.llZero = internal constant i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"ReadClassStm should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"CreateStreamOnHGlobal\00", align 1
@test_stg_cls = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"WriteClassStm\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"got wrong clsid\0A\00", align 1
@STG_E_READFAULT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"ReadClassStm should have returned STG_E_READFAULT instead of 0x%08x\0A\00", align 1
@CLSID_NULL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"clsid should have been zeroed\0A\00", align 1
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"IStream_Seek\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ReadClassStm\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"clsid should have been set to CLSID_WineTest\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ReadClassStm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ReadClassStm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = call i64 @ReadClassStm(i32* null, i32* %1)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @E_INVALIDARG, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i64 @CreateStreamOnHGlobal(i32* null, i32 %12, i32** %4)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @ok_ole_success(i64 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @WriteClassStm(i32* %16, i32* @test_stg_cls)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @ok_ole_success(i64 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @ReadClassStm(i32* %20, i32* null)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @E_INVALIDARG, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = call i32 @memset(i32* %1, i32 204, i32 4)
  %29 = call i32 @memset(i32* %2, i32 204, i32 4)
  %30 = call i64 @ReadClassStm(i32* null, i32* %1)
  store i64 %30, i64* %3, align 8
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @E_INVALIDARG, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %3, align 8
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %35)
  %37 = call i32 @IsEqualCLSID(i32* %1, i32* %2)
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @ReadClassStm(i32* %39, i32* %1)
  store i64 %40, i64* %3, align 8
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @STG_E_READFAULT, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %3, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i64 %45)
  %47 = call i32 @IsEqualCLSID(i32* %1, i32* @CLSID_NULL)
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @test_ReadClassStm.llZero, align 4
  %51 = load i32, i32* @STREAM_SEEK_SET, align 4
  %52 = call i64 @IStream_Seek(i32* %49, i32 %50, i32 %51, i32* null)
  store i64 %52, i64* %3, align 8
  %53 = load i64, i64* %3, align 8
  %54 = call i32 @ok_ole_success(i64 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @ReadClassStm(i32* %55, i32* %1)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @ok_ole_success(i64 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %59 = call i32 @IsEqualCLSID(i32* %1, i32* @test_stg_cls)
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @IStream_Release(i32* %61)
  ret void
}

declare dso_local i64 @ReadClassStm(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

declare dso_local i64 @WriteClassStm(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IsEqualCLSID(i32*, i32*) #1

declare dso_local i64 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
