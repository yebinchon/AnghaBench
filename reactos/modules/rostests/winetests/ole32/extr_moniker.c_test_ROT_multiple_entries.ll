; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_ROT_multiple_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_ROT_multiple_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ROT_multiple_entries.moniker_path = internal constant [26 x i8] c"\\windows\\system\\test1.doc\00", align 16
@Test_ClassFactory = common dso_local global i32 0, align 4
@MK_S_MONIKERALREADYREGISTERED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [99 x i8] c"IRunningObjectTable_Register should have returned MK_S_MONIKERALREADYREGISTERED instead of 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"cookie returned for registering duplicate object shouldn't match cookie of original object (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ROT_multiple_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ROT_multiple_entries() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i8* null, i8** %3, align 8
  store i32* null, i32** %6, align 8
  %7 = ptrtoint i8** %3 to i64
  %8 = call i64 @GetRunningObjectTable(i8* null, i64 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i64, ...) @ok_ole_success(i64 %9, i64 (i8*, i64)* @GetRunningObjectTable)
  %11 = ptrtoint i32** %2 to i64
  %12 = call i64 @CreateFileMoniker(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @test_ROT_multiple_entries.moniker_path, i64 0, i64 0), i64 %11)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = call i32 (i64, ...) @ok_ole_success(i64 %13, i64 (i8*, i64)* @CreateFileMoniker)
  %15 = load i8*, i8** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @IRunningObjectTable_Register(i8* %15, i32 0, i32* @Test_ClassFactory, i32* %16, i64* %4)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i64, ...) @ok_ole_success(i64 %18, i64 (i8*, i32, i32*, i32*, i64*)* @IRunningObjectTable_Register)
  %20 = load i8*, i8** %3, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i64 @IRunningObjectTable_Register(i8* %20, i32 0, i32* @Test_ClassFactory, i32* %21, i64* %5)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @MK_S_MONIKERALREADYREGISTERED, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = call i64 (i8*, i64, ...) @IRunningObjectTable_GetObject(i8* %35, i64 %37, i32** %6)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = call i32 (i64, ...) @ok_ole_success(i64 %39, i64 (i8*, i64, ...)* @IRunningObjectTable_GetObject)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @IUnknown_Release(i32* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @IRunningObjectTable_Revoke(i8* %43, i64 %44)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = call i32 (i64, ...) @ok_ole_success(i64 %46, i64 (i8*, i64)* @IRunningObjectTable_Revoke)
  %48 = load i8*, i8** %3, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = call i64 (i8*, i64, ...) @IRunningObjectTable_GetObject(i8* %48, i64 %50, i32** %6)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = call i32 (i64, ...) @ok_ole_success(i64 %52, i64 (i8*, i64, ...)* @IRunningObjectTable_GetObject)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @IUnknown_Release(i32* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @IRunningObjectTable_Revoke(i8* %56, i64 %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = call i32 (i64, ...) @ok_ole_success(i64 %59, i64 (i8*, i64)* @IRunningObjectTable_Revoke)
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @IMoniker_Release(i32* %61)
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @IRunningObjectTable_Release(i8* %63)
  ret void
}

declare dso_local i64 @GetRunningObjectTable(i8*, i64) #1

declare dso_local i32 @ok_ole_success(i64, ...) #1

declare dso_local i64 @CreateFileMoniker(i8*, i64) #1

declare dso_local i64 @IRunningObjectTable_Register(i8*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IRunningObjectTable_GetObject(i8*, i64, ...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IRunningObjectTable_Revoke(i8*, i64) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @IRunningObjectTable_Release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
