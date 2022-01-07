; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_GetUIObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_GetUIObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@__const.test_GetUIObject.filename = private unnamed_addr constant [19 x i8] c"\\testdir\\test1.txt\00", align 16
@.str = private unnamed_addr constant [48 x i8] c"GetCurrentDirectoryW returned an empty string.\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"Got 0x%08x\0A\00", align 1
@IID_IShellFolder = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to bind to folder, hr %#x.\0A\00", align 1
@IID_IContextMenu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"GetUIObjectOf() failed, hr %#x.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetUIObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetUIObject() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [19 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = bitcast [19 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.test_GetUIObject.filename, i32 0, i32 0), i64 19, i1 false)
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = call i32 @GetCurrentDirectoryW(i32 %16, i8* %14)
  %18 = getelementptr inbounds i8, i8* %14, i64 0
  %19 = load i8, i8* %18, align 16
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %0
  %22 = call i32 @skip(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %80

23:                                               ; preds = %0
  %24 = getelementptr inbounds [19 x i8], [19 x i8]* %7, i64 0, i64 0
  %25 = call i32 @lstrcatW(i8* %14, i8* %24)
  %26 = call i32 @SHGetDesktopFolder(i32** %1)
  %27 = call i32 (...) @CreateFilesFolders()
  %28 = load i32*, i32** %1, align 8
  %29 = call i64 @IShellFolder_ParseDisplayName(i32* %28, i32* null, i32* null, i8* %14, i32* null, i32* %3, i32 0)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* %3, align 4
  %37 = bitcast i32** %9 to i8**
  %38 = call i64 @SHBindToParent(i32 %36, i32* @IID_IShellFolder, i8** %37, i32* %8)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = bitcast i32** %2 to i8**
  %47 = call i64 @IShellFolder_GetUIObjectOf(i32* %45, i32* null, i32 1, i32* %8, i32* @IID_IContextMenu, i32* null, i8** %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @test_contextmenu(i32* %54, i32 %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32 @IContextMenu_Release(i32* %57)
  %59 = load i32*, i32** %1, align 8
  %60 = bitcast i32** %2 to i8**
  %61 = call i64 @IShellFolder_GetUIObjectOf(i32* %59, i32* null, i32 0, i32* null, i32* @IID_IContextMenu, i32* null, i8** %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = call i32 @test_contextmenu(i32* %68, i32 %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @IContextMenu_Release(i32* %71)
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @IShellFolder_Release(i32* %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @ILFree(i32 %75)
  %77 = load i32*, i32** %1, align 8
  %78 = call i32 @IShellFolder_Release(i32* %77)
  %79 = call i32 (...) @Cleanup()
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %23, %21
  %81 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %10, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetCurrentDirectoryW(i32, i8*) #3

declare dso_local i32 @skip(i8*) #3

declare dso_local i32 @lstrcatW(i8*, i8*) #3

declare dso_local i32 @SHGetDesktopFolder(i32**) #3

declare dso_local i32 @CreateFilesFolders(...) #3

declare dso_local i64 @IShellFolder_ParseDisplayName(i32*, i32*, i32*, i8*, i32*, i32*, i32) #3

declare dso_local i32 @ok(i32, i8*, i64) #3

declare dso_local i64 @SHBindToParent(i32, i32*, i8**, i32*) #3

declare dso_local i64 @IShellFolder_GetUIObjectOf(i32*, i32*, i32, i32*, i32*, i32*, i8**) #3

declare dso_local i32 @test_contextmenu(i32*, i32) #3

declare dso_local i32 @IContextMenu_Release(i32*) #3

declare dso_local i32 @IShellFolder_Release(i32*) #3

declare dso_local i32 @ILFree(i32) #3

declare dso_local i32 @Cleanup(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
