; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_setdir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_setdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: SetCurrentDirectoryA failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"%s: SetCurrentDirectory did not change the directory, though it passed\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"%s: Couldn't set directory to its original value\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%s: SetCurrentDirectoryA passed when it should have failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"%s: SetCurrentDirectory changed the directory, though it failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i64, i32*)* @test_setdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_setdir(i32* %0, i32* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @SetCurrentDirectoryA(i32* %21)
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* @MAX_PATH, align 4
  %25 = call i64 @GetCurrentDirectoryA(i32 %24, i32* %20)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %5
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** %7, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32* [ %32, %31 ], [ %34, %33 ]
  store i32* %36, i32** %13, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i64 @lstrlenA(i32* %37)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %14, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %41)
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %13, align 8
  %50 = call i64 @lstrcmpiA(i32* %49, i32* %20)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32* %53)
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @SetCurrentDirectoryA(i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  br label %79

59:                                               ; preds = %5
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @lstrlenA(i32* %60)
  store i64 %61, i64* %16, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32* %65)
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %16, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32* %71)
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @lstrcmpiA(i32* %73, i32* %20)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32* %77)
  br label %79

79:                                               ; preds = %59, %35
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetCurrentDirectoryA(i32*) #2

declare dso_local i64 @GetCurrentDirectoryA(i32, i32*) #2

declare dso_local i64 @lstrlenA(i32*) #2

declare dso_local i32 @ok(i32, i8*, i32*) #2

declare dso_local i64 @lstrcmpiA(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
