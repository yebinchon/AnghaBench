; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_recursive.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_copyto_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_copyto_recursive.stgname = internal constant [5 x i8] c"STG1\00", align 1
@test_copyto_recursive.stgname2 = internal constant [5 x i8] c"STG2\00", align 1
@filenameA = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"IStorage->CreateStorage failed, hr=%08x\0A\00", align 1
@STG_E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"IStorage->CopyTo failed, hr=%08x\0A\00", align 1
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@IID_IStorage = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"deleted file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_copyto_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_copyto_recursive() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @filenameA, align 4
  %8 = call i32 @DeleteFileA(i32 %7)
  %9 = load i32, i32* @filename, align 4
  %10 = load i32, i32* @STGM_CREATE, align 4
  %11 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STGM_READWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @StgCreateDocfile(i32 %9, i32 %14, i32 0, i32** %1)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = load i32, i32* @STGM_READWRITE, align 4
  %23 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @IStorage_CreateStorage(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_recursive.stgname, i64 0, i64 0), i32 %24, i32 0, i32 0, i32** %2)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %5, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i32*, i32** %1, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @IStorage_CopyTo(i32* %32, i32 0, i32* null, i32* null, i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @STGM_READWRITE, align 4
  %43 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @STGM_TRANSACTED, align 4
  %46 = or i32 %44, %45
  %47 = call i64 @IStorage_CreateStorage(i32* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_recursive.stgname2, i64 0, i64 0), i32 %46, i32 0, i32 0, i32** %3)
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = call i64 @IStorage_CopyTo(i32* %54, i32 0, i32* null, i32* null, i32* %55)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @STGM_READWRITE, align 4
  %65 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @STGM_TRANSACTED, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @IStorage_CreateStorage(i32* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @test_copyto_recursive.stgname2, i64 0, i64 0), i32 %68, i32 0, i32 0, i32** %4)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %5, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %1, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i64 @IStorage_CopyTo(i32* %76, i32 0, i32* null, i32* null, i32* %77)
  store i64 %78, i64* %5, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* @STG_E_ACCESSDENIED, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %5, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %1, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @IStorage_CopyTo(i32* %85, i32 1, i32* @IID_IStorage, i32* null, i32* %86)
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i64, i64* %5, align 8
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @IStorage_Release(i32* %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @IStorage_Release(i32* %96)
  %98 = load i32*, i32** %2, align 8
  %99 = call i32 @IStorage_Release(i32* %98)
  %100 = load i32*, i32** %1, align 8
  %101 = call i32 @IStorage_Release(i32* %100)
  %102 = load i32, i32* @filenameA, align 4
  %103 = call i32 @DeleteFileA(i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DeleteFileA(i32) #1

declare dso_local i64 @StgCreateDocfile(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStorage(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i64 @IStorage_CopyTo(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @IStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
