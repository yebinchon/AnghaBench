; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_load_res.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_load_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@strict_dispid_check = common dso_local global i32 0, align 4
@test_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Could not find resource %s\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @load_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_res(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* @strict_dispid_check, align 4
  %9 = load i8*, i8** %2, align 8
  store i8* %9, i8** @test_name, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @FindResourceA(i32* null, i8* %10, i32 40)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @SizeofResource(i32* null, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i8* @LoadResource(i32* null, i32* %19)
  store i8* %20, i8** %3, align 8
  %21 = load i32, i32* @CP_ACP, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i8* %22, i32 %23, i32* null, i32 0)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32* @SysAllocStringLen(i32* null, i32 %25)
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* @CP_ACP, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @MultiByteToWideChar(i32 %27, i32 0, i8* %28, i32 %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  ret i32* %33
}

declare dso_local i32* @FindResourceA(i32*, i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, i8*) #1

declare dso_local i32 @SizeofResource(i32*, i32*) #1

declare dso_local i8* @LoadResource(i32*, i32*) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
