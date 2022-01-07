; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetDriveName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetDriveName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getdrivename_test = type { i32*, i64* }

@getdrivenametestdata = common dso_local global %struct.getdrivename_test* null, align 8
@fs3 = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got %s, expected %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetDriveName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetDriveName() #0 {
  %1 = alloca %struct.getdrivename_test*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load %struct.getdrivename_test*, %struct.getdrivename_test** @getdrivenametestdata, align 8
  store %struct.getdrivename_test* %5, %struct.getdrivename_test** %1, align 8
  %6 = load i32, i32* @fs3, align 4
  %7 = call i32 @IFileSystem3_GetDriveName(i32 %6, i32* null, i32** null)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @E_POINTER, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (i32, i8*, i32, ...) @ok(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %14 = load i32, i32* @fs3, align 4
  %15 = call i32 @IFileSystem3_GetDriveName(i32 %14, i32* null, i32** %3)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, i32, ...) @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %3, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %81, %0
  %29 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %30 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %28
  %35 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %36 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = call i32* @SysAllocString(i64* %37)
  store i32* %38, i32** %4, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %39 = load i32, i32* @fs3, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @IFileSystem3_GetDriveName(i32 %39, i32* %40, i32** %3)
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @S_OK, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %2, align 4
  %47 = call i32 (i32, i8*, i32, ...) @ok(i32 %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %34
  %51 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %52 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lstrcmpW(i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @wine_dbgstr_w(i32* %59)
  %61 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %62 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @wine_dbgstr_w(i32* %63)
  %65 = call i32 (i32, i8*, i32, ...) @ok(i32 %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %64)
  br label %81

66:                                               ; preds = %34
  %67 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %68 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @wine_dbgstr_w(i32* %74)
  %76 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %77 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @wine_dbgstr_w(i32* %78)
  %80 = call i32 (i32, i8*, i32, ...) @ok(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %66, %50
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @SysFreeString(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @SysFreeString(i32* %84)
  %86 = load %struct.getdrivename_test*, %struct.getdrivename_test** %1, align 8
  %87 = getelementptr inbounds %struct.getdrivename_test, %struct.getdrivename_test* %86, i32 1
  store %struct.getdrivename_test* %87, %struct.getdrivename_test** %1, align 8
  br label %28

88:                                               ; preds = %28
  ret void
}

declare dso_local i32 @IFileSystem3_GetDriveName(i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32* @SysAllocString(i64*) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @wine_dbgstr_w(i32*) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
