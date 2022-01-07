; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_parent_free.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_parent_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_parent_free.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@test_parent_free.stgname = internal constant [8 x i8] c"PERMSTG\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"IStorage->CreateStream failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"IStorage->CreateStorage failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"IStorage still has %u references\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"this should fail\0A\00", align 1
@STG_E_REVERTED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"IStream->Write should fail, hr=%x\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"IStorage_Stat should fail %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_parent_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parent_free() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %9 = load i32, i32* @filenameA, align 4
  %10 = call i32 @DeleteFileA(i32 %9)
  %11 = load i32, i32* @filename, align 4
  %12 = load i32, i32* @STGM_CREATE, align 4
  %13 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @STGM_READWRITE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @STGM_TRANSACTED, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @StgCreateDocfile(i32 %11, i32 %18, i32 0, i32** %1)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @S_OK, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = load i32, i32* @STGM_READWRITE, align 4
  %27 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @IStorage_CreateStorage(i32* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_parent_free.stgname, i64 0, i64 0), i32 %28, i32 0, i32 0, i32** %2)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %106

39:                                               ; preds = %0
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %42 = load i32, i32* @STGM_READWRITE, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @IStorage_CreateStream(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_parent_free.stmname, i64 0, i64 0), i32 %43, i32 0, i32 0, i32** %5)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %39
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %56 = load i32, i32* @STGM_READWRITE, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @IStorage_CreateStorage(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_parent_free.stgname, i64 0, i64 0), i32 %57, i32 0, i32 0, i32** %3)
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %64

64:                                               ; preds = %53, %39
  %65 = load i32*, i32** %2, align 8
  %66 = call i64 @IStorage_Release(i32* %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %6, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %105

75:                                               ; preds = %64
  %76 = load i32*, i32** %5, align 8
  %77 = call i64 @IStream_Write(i32* %76, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 17, i32* null)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @STG_E_REVERTED, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @IStream_Release(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @STATFLAG_NONAME, align 4
  %88 = call i64 @IStorage_Stat(i32* %86, i32* %7, i32 %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @STG_E_REVERTED, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %4, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %3, align 8
  %96 = call i64 @IStorage_SetStateBits(i32* %95, i32 1, i32 1)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @STG_E_REVERTED, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %4, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i64 @IStorage_Release(i32* %103)
  br label %105

105:                                              ; preds = %75, %64
  br label %106

106:                                              ; preds = %105, %0
  %107 = load i32*, i32** %1, align 8
  %108 = call i64 @IStorage_Release(i32* %107)
  %109 = load i32, i32* @filenameA, align 4
  %110 = call i32 @DeleteFileA(i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_Release(i32*) #1

declare dso_local i64 @IStream_Write(i32*, i8*, i32, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_Stat(i32*, i32*, i32) #1

declare dso_local i64 @IStorage_SetStateBits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
