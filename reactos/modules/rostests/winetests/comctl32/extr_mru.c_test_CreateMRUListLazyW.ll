; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_test_CreateMRUListLazyW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_test_CreateMRUListLazyW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32*, i32*, i64 }

@test_CreateMRUListLazyW.mrutestW = internal constant [8 x i8] c"MRUTest\00", align 1
@hComctl32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CreateMRUListLazyW\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_TEST_KEYA = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't create test key \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateMRUListLazyW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateMRUListLazyW() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @hComctl32, align 4
  %6 = call i8* @GetProcAddress(i32 %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  %9 = zext i1 %8 to i32
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %13 = load i8*, i8** @REG_TEST_KEYA, align 8
  %14 = call i32 @RegCreateKeyA(i32 %12, i8* %13, i8** %3)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = load i8*, i8** @REG_TEST_KEYA, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 40, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_CreateMRUListLazyW.mrutestW, i64 0, i64 0), i8** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* %25, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = call i8* @pCreateMRUListLazyW(%struct.TYPE_3__* %1, i32 0, i32 0, i32 0)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @pFreeMRUList(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 39, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_CreateMRUListLazyW.mrutestW, i64 0, i64 0), i8** %39, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %43, align 8
  %44 = call i8* @pCreateMRUListLazyW(%struct.TYPE_3__* %1, i32 0, i32 0, i32 0)
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = icmp ne i8* %45, null
  %47 = zext i1 %46 to i32
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @pFreeMRUList(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 41, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_CreateMRUListLazyW.mrutestW, i64 0, i64 0), i8** %55, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* %57, i32** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = call i8* @pCreateMRUListLazyW(%struct.TYPE_3__* %1, i32 0, i32 0, i32 0)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  %63 = zext i1 %62 to i32
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @pFreeMRUList(i8* %66)
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_CreateMRUListLazyW.mrutestW, i64 0, i64 0), i8** %71, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* %73, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %75, align 8
  %76 = call i8* @pCreateMRUListLazyW(%struct.TYPE_3__* %1, i32 0, i32 0, i32 0)
  store i8* %76, i8** %4, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = icmp ne i8* %77, null
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @pFreeMRUList(i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 40, i32* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_CreateMRUListLazyW.mrutestW, i64 0, i64 0), i8** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 3
  store i32* null, i32** %89, align 8
  %90 = call i8* @pCreateMRUListLazyW(%struct.TYPE_3__* %1, i32 0, i32 0, i32 0)
  store i8* %90, i8** %4, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = icmp eq i8* %91, null
  %93 = zext i1 %92 to i32
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @RegCloseKey(i8* %96)
  ret void
}

declare dso_local i8* @GetProcAddress(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @RegCreateKeyA(i32, i8*, i8**) #1

declare dso_local i8* @pCreateMRUListLazyW(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @pFreeMRUList(i8*) #1

declare dso_local i32 @RegCloseKey(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
