; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_convert.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_storage32.c_test_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_convert.filename = internal constant [12 x i8] c"storage.stg\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"StgCreateDocfile failed\0A\00", align 1
@STG_E_FILENOTFOUND = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_convert() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @GetConvertStg(i32* null)
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @E_INVALIDARG, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %2, align 8
  %9 = call i32 (i32, i8*, ...) @ok(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @STGM_CREATE, align 4
  %11 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @STGM_READWRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @StgCreateDocfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.filename, i64 0, i64 0), i32 %14, i32 0, i32** %1)
  store i64 %15, i64* %2, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32*, i32** %1, align 8
  %22 = call i64 @GetConvertStg(i32* %21)
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* @STG_E_FILENOTFOUND, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %2, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32*, i32** %1, align 8
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i64 @SetConvertStg(i32* %29, i32 %30)
  store i64 %31, i64* %2, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %2, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = call i64 @SetConvertStg(i32* %38, i32 %39)
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %2, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %1, align 8
  %48 = call i64 @GetConvertStg(i32* %47)
  store i64 %48, i64* %2, align 8
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %2, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** %1, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i64 @SetConvertStg(i32* %55, i32 %56)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %2, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i64 @GetConvertStg(i32* %64)
  store i64 %65, i64* %2, align 8
  %66 = load i64, i64* %2, align 8
  %67 = load i64, i64* @S_FALSE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %2, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @IStorage_Release(i32* %72)
  %74 = call i32 @DeleteFileW(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_convert.filename, i64 0, i64 0))
  ret void
}

declare dso_local i64 @GetConvertStg(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @StgCreateDocfile(i8*, i32, i32, i32**) #1

declare dso_local i64 @SetConvertStg(i32*, i32) #1

declare dso_local i32 @IStorage_Release(i32*) #1

declare dso_local i32 @DeleteFileW(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
