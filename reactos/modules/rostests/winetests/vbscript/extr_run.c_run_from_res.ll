; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_run_from_res.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/vbscript/extr_run.c_run_from_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@strict_dispid_check = common dso_local global i32 0, align 4
@test_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Could not find resource %s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@global_success_d = common dso_local global i32 0, align 4
@global_success_i = common dso_local global i32 0, align 4
@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"parse_script failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @run_from_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_from_res(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* @strict_dispid_check, align 4
  %10 = load i8*, i8** %2, align 8
  store i8* %10, i8** @test_name, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i32* @FindResourceA(i32* null, i8* %11, i32 40)
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @SizeofResource(i32* null, i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @LoadResource(i32* null, i32* %20)
  store i8* %21, i8** %3, align 8
  %22 = load i32, i32* @CP_ACP, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @MultiByteToWideChar(i32 %22, i32 0, i8* %23, i32 %24, i32* null, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @SysAllocStringLen(i32* null, i32 %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* @CP_ACP, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MultiByteToWideChar(i32 %28, i32 0, i8* %29, i32 %30, i32* %31, i32 %32)
  %34 = load i32, i32* @global_success_d, align 4
  %35 = call i32 @SET_EXPECT(i32 %34)
  %36 = load i32, i32* @global_success_i, align 4
  %37 = call i32 @SET_EXPECT(i32 %36)
  %38 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i8* @parse_script(i32 %38, i32* %39, i32* null)
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* @global_success_d, align 4
  %42 = call i32 @CHECK_CALLED(i32 %41)
  %43 = load i32, i32* @global_success_i, align 4
  %44 = call i32 @CHECK_CALLED(i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** @S_OK, align 8
  %47 = icmp eq i8* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @SysFreeString(i32* %51)
  ret void
}

declare dso_local i32* @FindResourceA(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @SizeofResource(i32*, i32*) #1

declare dso_local i8* @LoadResource(i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i8* @parse_script(i32, i32*, i32*) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
