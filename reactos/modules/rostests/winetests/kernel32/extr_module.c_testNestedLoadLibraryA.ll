; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testNestedLoadLibraryA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testNestedLoadLibraryA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@testNestedLoadLibraryA.dllname = internal constant [12 x i8] c"shell32.dll\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\\system\\\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\\system32\\\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"LoadLibrary(%s) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"FreeLibrary() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s was not fully unloaded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testNestedLoadLibraryA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testNestedLoadLibraryA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_PATH, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %3, align 8
  %15 = trunc i64 %9 to i32
  %16 = call i32 @GetWindowsDirectoryA(i8* %11, i32 %15)
  %17 = call i32 @strcat(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @strcat(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @testNestedLoadLibraryA.dllname, i64 0, i64 0))
  %19 = call i32* @LoadLibraryA(i8* %11)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  br label %63

23:                                               ; preds = %0
  %24 = trunc i64 %13 to i32
  %25 = call i32 @GetWindowsDirectoryA(i8* %14, i32 %24)
  %26 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @testNestedLoadLibraryA.dllname, i64 0, i64 0))
  %28 = call i32* @LoadLibraryA(i8* %14)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %14)
  %33 = call i32* @LoadLibraryA(i8* %11)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @FreeLibrary(i32* %38)
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @FreeLibrary(i32* %41)
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @FreeLibrary(i32* %44)
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %47 = call i32* @GetModuleHandleA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @testNestedLoadLibraryA.dllname, i64 0, i64 0))
  %48 = icmp eq i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @testNestedLoadLibraryA.dllname, i64 0, i64 0))
  %51 = call i32* @LoadLibraryA(i8* %11)
  store i32* %51, i32** %4, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %56 = load i32*, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %23
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @FreeLibrary(i32* %59)
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %23
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %62, %22
  %64 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %64)
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %67 [
    i32 0, label %66
    i32 1, label %66
  ]

66:                                               ; preds = %63, %63
  ret void

67:                                               ; preds = %63
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32* @LoadLibraryA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i32* @GetModuleHandleA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
