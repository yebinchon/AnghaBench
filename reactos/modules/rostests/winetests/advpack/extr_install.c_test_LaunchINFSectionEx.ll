; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_test_LaunchINFSectionEx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_install.c_test_LaunchINFSectionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"test.inf\00", align 1
@CURR_DIR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"test.inf,DefaultInstall,c:imacab.cab,4\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Expected 0, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"\\test.inf\22,\22DefaultInstall\22,\22c:,imacab.cab\22,\224\22\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"Expected E_INVALIDARG, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LaunchINFSectionEx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LaunchINFSectionEx() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @MAX_PATH, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = call i32 @create_inf_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** @CURR_DIR, align 8
  %10 = call i32 @lstrcpyA(i8* %7, i8* %9)
  %11 = call i32 @lstrcatA(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 @lstrcatA(i8* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i64 @pLaunchINFSectionEx(i32* null, i32* null, i8* %7, i32 0)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %17)
  %19 = call i32 @lstrcpyA(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i8*, i8** @CURR_DIR, align 8
  %21 = call i32 @lstrcatA(i8* %7, i8* %20)
  %22 = call i32 @lstrcatA(i8* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %23 = call i64 @pLaunchINFSectionEx(i32* null, i32* null, i8* %7, i32 0)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @winetest_interactive, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %0
  %32 = call i32 @lstrcpyA(i8* %7, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i64 @pLaunchINFSectionEx(i32* null, i32* null, i8* %7, i32 0)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @E_INVALIDARG, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %31, %0
  %41 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @create_inf_file(i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i64 @pLaunchINFSectionEx(i32*, i32*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @DeleteFileA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
