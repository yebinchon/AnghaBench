; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_custom_lockbytes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_custom_lockbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@test_custom_lockbytes.stmname = internal constant [9 x i8] c"CONTENTS\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_TRANSACTED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"StgCreateDocfileOnILockBytes failed %x\0A\00", align 1
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"IStorage_CreateStream failed %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpected call to LockRegion\0A\00", align 1
@LOCK_WRITE = common dso_local global i32 0, align 4
@LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@LOCK_ONLYONCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"expected LockRegion to be called\0A\00", align 1
@STG_E_INVALIDFUNCTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_custom_lockbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_custom_lockbytes() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32 @CreateTestLockBytes(%struct.TYPE_4__** %1)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i32, i32* @STGM_CREATE, align 4
  %9 = load i32, i32* @STGM_READWRITE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @STGM_TRANSACTED, align 4
  %12 = or i32 %10, %11
  %13 = call i64 @StgCreateDocfileOnILockBytes(i32* %7, i32 %12, i32 0, i32** %3)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %2, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %22 = load i32, i32* @STGM_READWRITE, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @IStorage_CreateStream(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_custom_lockbytes.stmname, i64 0, i64 0), i32 %23, i32 0, i32 0, i32** %4)
  store i64 %24, i64* %2, align 8
  %25 = load i64, i64* %2, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %2, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @IStream_Release(i32* %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @IStorage_Commit(i32* %33, i32 0)
  store i64 %34, i64* %2, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @IStorage_Release(i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @LOCK_WRITE, align 4
  %45 = load i32, i32* @LOCK_EXCLUSIVE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @LOCK_ONLYONCE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* @STGM_CREATE, align 4
  %54 = load i32, i32* @STGM_READWRITE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @STGM_TRANSACTED, align 4
  %57 = or i32 %55, %56
  %58 = call i64 @StgCreateDocfileOnILockBytes(i32* %52, i32 %57, i32 0, i32** %3)
  store i64 %58, i64* %2, align 8
  %59 = load i64, i64* %2, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %2, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %67 = load i32, i32* @STGM_READWRITE, align 4
  %68 = or i32 %66, %67
  %69 = call i64 @IStorage_CreateStream(i32* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_custom_lockbytes.stmname, i64 0, i64 0), i32 %68, i32 0, i32 0, i32** %4)
  store i64 %69, i64* %2, align 8
  %70 = load i64, i64* %2, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %2, align 8
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @IStream_Release(i32* %76)
  %78 = load i32*, i32** %3, align 8
  %79 = call i64 @IStorage_Commit(i32* %78, i32 0)
  store i64 %79, i64* %2, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @IStorage_Release(i32* %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i64, i64* @STG_E_INVALIDFUNCTION, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* @STGM_CREATE, align 4
  %92 = load i32, i32* @STGM_READWRITE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @STGM_TRANSACTED, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @StgCreateDocfileOnILockBytes(i32* %90, i32 %95, i32 0, i32** %3)
  store i64 %96, i64* %2, align 8
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @STG_E_INVALIDFUNCTION, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* %2, align 8
  %102 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %104 = call i32 @DeleteTestLockBytes(%struct.TYPE_4__* %103)
  ret void
}

declare dso_local i32 @CreateTestLockBytes(%struct.TYPE_4__**) #1

declare dso_local i64 @StgCreateDocfileOnILockBytes(i32*, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IStorage_CreateStream(i32*, i8*, i32, i32, i32, i32**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IStorage_Commit(i32*, i32) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteTestLockBytes(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
