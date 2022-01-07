; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetFolder.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/scrrun/extr_filesystem.c_test_GetFolder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_GetFolder.dummyW = internal constant [6 x i8] c"dummy\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@fs3 = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@E_POINTER = common dso_local global i32* null, align 8
@CTL_E_PATHNOTFOUND = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32* null, align 8
@CLSID_Folder = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetFolder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetFolder() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %10 = load i32, i32* @fs3, align 4
  %11 = call i32* @IFileSystem3_GetFolder(i32 %10, i32* null, i32** %3)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** @E_INVALIDARG, align 8
  %14 = icmp eq i32* %12, %13
  %15 = zext i1 %14 to i32
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  %23 = load i32, i32* @fs3, align 4
  %24 = call i32* @IFileSystem3_GetFolder(i32 %23, i32* null, i32** null)
  store i32* %24, i32** %4, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** @E_POINTER, align 8
  %27 = icmp eq i32* %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = call i32* @SysAllocString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_GetFolder.dummyW, i64 0, i64 0))
  store i32* %31, i32** %5, align 8
  %32 = load i32, i32* @fs3, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = call i32* @IFileSystem3_GetFolder(i32 %32, i32* %33, i32** null)
  store i32* %34, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32*, i32** @E_POINTER, align 8
  %37 = icmp eq i32* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %39)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %41 = load i32, i32* @fs3, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @IFileSystem3_GetFolder(i32 %41, i32* %42, i32** %3)
  store i32* %43, i32** %4, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** @CTL_E_PATHNOTFOUND, align 8
  %46 = icmp eq i32* %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %48)
  %50 = load i32*, i32** %3, align 8
  %51 = icmp eq i32* %50, null
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @SysFreeString(i32* %55)
  %57 = load i32, i32* @MAX_PATH, align 4
  %58 = call i32 @GetWindowsDirectoryW(i8* %9, i32 %57)
  %59 = call i32* @SysAllocString(i8* %9)
  store i32* %59, i32** %5, align 8
  %60 = load i32, i32* @fs3, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @IFileSystem3_GetFolder(i32 %60, i32* %61, i32** %3)
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** @S_OK, align 8
  %65 = icmp eq i32* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @SysFreeString(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @test_provideclassinfo(i32* %71, i32* @CLSID_Folder)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @IFolder_Release(i32* %73)
  %75 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %75)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @IFileSystem3_GetFolder(i32, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32*) #2

declare dso_local i32* @SysAllocString(i8*) #2

declare dso_local i32 @SysFreeString(i32*) #2

declare dso_local i32 @GetWindowsDirectoryW(i8*, i32) #2

declare dso_local i32 @test_provideclassinfo(i32*, i32*) #2

declare dso_local i32 @IFolder_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
