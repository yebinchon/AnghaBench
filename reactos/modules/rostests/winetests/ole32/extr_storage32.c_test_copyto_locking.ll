; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_locking.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_copyto_locking.stgname = internal constant [5 x i8] c"STG1\00", align 1
@test_copyto_locking.stgname2 = internal constant [5 x i8] c"STG2\00", align 1
@test_copyto_locking.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"IStorage->CreateStream failed, hr=%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"IStorage->CopyTo failed, hr=%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto_locking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto_locking() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @filenameA, align 4
  %9 = call i32 @DeleteFileA(i32 %8)
  %10 = load i32, i32* @filename, align 4
  %11 = load i32, i32* @STGM_CREATE, align 4
  %12 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @STGM_READWRITE, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @StgCreateDocfile(i32 %10, i32 %15, i32 0, i32** %1)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @STGM_READWRITE, align 4
  %24 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @IStorage_CreateStorage(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_locking.stgname, i64 0, i64 0), i32 %25, i32 0, i32 0, i32** %2)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32*, i32** %1, align 8
  %34 = load i32, i32* @STGM_READWRITE, align 4
  %35 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @IStorage_CreateStorage(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_locking.stgname2, i64 0, i64 0), i32 %36, i32 0, i32 0, i32** %3)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* @STGM_READWRITE, align 4
  %46 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @IStorage_CreateStream(i32* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_copyto_locking.stmname, i64 0, i64 0), i32 %47, i32 0, i32 0, i32** %5)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %6, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = call i64 @IStorage_CopyTo(i32* %55, i32 0, i32* null, i32* null, i32* %56)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @IStream_Release(i32* %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i32, i32* @STGM_READWRITE, align 4
  %68 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @IStorage_CreateStorage(i32* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_locking.stgname, i64 0, i64 0), i32 %69, i32 0, i32 0, i32** %4)
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %6, align 8
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @IStorage_CopyTo(i32* %77, i32 0, i32* null, i32* null, i32* %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @S_OK, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* %6, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @IStorage_Release(i32* %86)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @IStorage_Release(i32* %88)
  %90 = load i32*, i32** %2, align 8
  %91 = call i32 @IStorage_Release(i32* %90)
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @IStorage_Release(i32* %92)
  %94 = load i32, i32* @filenameA, align 4
  %95 = call i32 @DeleteFileA(i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
