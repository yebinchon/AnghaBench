; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_testSystemDir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shellpath.c_testSystemDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@CSIDL_SYSTEM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"GetSystemDirectory returns %s SHGetSpecialFolderPath returns %s\0A\00", align 1
@CSIDL_SYSTEMX86 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @testSystemDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testSystemDir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %1, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %2, align 8
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %4, align 8
  %15 = trunc i64 %10 to i32
  %16 = call i32 @GetSystemDirectoryA(i8* %11, i32 %15)
  %17 = call i32 @myPathRemoveBackslashA(i8* %11)
  %18 = load i32, i32* @CSIDL_SYSTEM, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i64 @pSHGetSpecialFolderPathA(i32* null, i8* %8, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %0
  %23 = call i32 @myPathRemoveBackslashA(i8* %8)
  %24 = call i32 @lstrcmpiA(i8* %11, i8* %8)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %8)
  br label %29

29:                                               ; preds = %22, %0
  %30 = trunc i64 %13 to i32
  %31 = call i32 @pGetSystemWow64DirectoryA(i8* %14, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = trunc i64 %13 to i32
  %35 = call i32 @GetSystemDirectoryA(i8* %14, i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = call i32 @myPathRemoveBackslashA(i8* %14)
  %38 = load i32, i32* @CSIDL_SYSTEMX86, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i64 @pSHGetSpecialFolderPathA(i32* null, i8* %8, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %36
  %43 = call i32 @myPathRemoveBackslashA(i8* %8)
  %44 = call i32 @lstrcmpiA(i8* %14, i8* %8)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = call i32 @lstrcmpiA(i8* %11, i8* %8)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @broken(i32 %50)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %46, %42
  %54 = phi i1 [ true, %42 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %8)
  br label %57

57:                                               ; preds = %53, %36
  %58 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @myPathRemoveBackslashA(i8*) #2

declare dso_local i64 @pSHGetSpecialFolderPathA(i32*, i8*, i32, i32) #2

declare dso_local i32 @ok(i32, i8*, i8*, i8*) #2

declare dso_local i32 @lstrcmpiA(i8*, i8*) #2

declare dso_local i32 @pGetSystemWow64DirectoryA(i8*, i32) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
