; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_hglobal_storage_creation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_hglobal_storage_creation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"CreateILockBytesOnHGlobal failed, hr=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ILockBytes_WriteAt failed, hr=%x\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"StgCreateDocfileOnILockBytes failed, hr=%x\0A\00", align 1
@STGM_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"StgOpenStorageOnILockBytes failed, hr=%x\0A\00", align 1
@STATFLAG_NONAME = common dso_local global i32 0, align 4
@GUID_NULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"unexpected CLSID value\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ILockBytes_Stat failed, hr=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"expected truncated size, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_hglobal_storage_creation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_hglobal_storage_creation() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca %struct.TYPE_10__, align 4
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %7 = load i32, i32* @TRUE, align 4
  %8 = call i64 @CreateILockBytesOnHGlobal(i32* null, i32 %7, i32** %1)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %3, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i32 170, i32 512)
  %18 = load i32*, i32** %1, align 8
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ILockBytes_WriteAt(i32* %18, i32 %21, i8* %19, i32 512, i32* null)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i32 2000, i32* %29, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ILockBytes_WriteAt(i32* %30, i32 %33, i8* %31, i32 512, i32* null)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %3, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @STGM_CREATE, align 4
  %43 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @STGM_READWRITE, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @StgCreateDocfileOnILockBytes(i32* %41, i32 %46, i32 0, i32** %2)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %3, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @IStorage_Release(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @STGM_READ, align 4
  %58 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @StgOpenStorageOnILockBytes(i32* %56, i32* null, i32 %59, i32* null, i32 0, i32** %2)
  store i64 %60, i64* %3, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @S_OK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %3, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @SUCCEEDED(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %0
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @STATFLAG_NONAME, align 4
  %73 = call i64 @IStorage_Stat(i32* %71, %struct.TYPE_11__* %4, i32 %72)
  store i64 %73, i64* %3, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %3, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 1
  %81 = call i32 @IsEqualCLSID(i32* %80, i32* @GUID_NULL)
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32*, i32** %2, align 8
  %84 = call i32 @IStorage_Release(i32* %83)
  br label %85

85:                                               ; preds = %70, %0
  %86 = load i32*, i32** %1, align 8
  %87 = load i32, i32* @STATFLAG_NONAME, align 4
  %88 = call i64 @ILockBytes_Stat(i32* %86, %struct.TYPE_11__* %4, i32 %87)
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %3, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %98, 2512
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i32*, i32** %1, align 8
  %107 = call i32 @ILockBytes_Release(i32* %106)
  ret void
}

declare dso_local i64 @CreateILockBytesOnHGlobal(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @ILockBytes_WriteAt(i32*, i32, i8*, i32, i32*) #1

declare dso_local i64 @StgCreateDocfileOnILockBytes(i32*, i32, i32, i32**) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i64 @StgOpenStorageOnILockBytes(i32*, i32*, i32, i32*, i32, i32**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IStorage_Stat(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @IsEqualCLSID(i32*, i32*) #1

declare dso_local i64 @ILockBytes_Stat(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ILockBytes_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
