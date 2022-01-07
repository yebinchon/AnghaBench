; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_special_reference.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/hlink/extr_hlink.c_test_special_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HLSR_HOME = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"HlinkGetSpecialReference(HLSR_HOME) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"ref == NULL\0A\00", align 1
@HLSR_SEARCHPAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"HlinkGetSpecialReference(HLSR_SEARCHPAGE) failed: %08x\0A\00", align 1
@HLSR_HISTORYFOLDER = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"HlinkGetSpecialReference(HLSR_HISTORYFOLDER) failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ref=%p\0A\00", align 1
@E_INVALIDARG = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_special_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_special_reference() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @HLSR_HOME, align 4
  %4 = call i32* @HlinkGetSpecialReference(i32 %3, i32** %1)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32*, i32** @S_OK, align 8
  %7 = icmp eq i32* %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @CoTaskMemFree(i32* %15)
  %17 = load i32, i32* @HLSR_SEARCHPAGE, align 4
  %18 = call i32* @HlinkGetSpecialReference(i32 %17, i32** %1)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i32*, i32** @S_OK, align 8
  %21 = icmp eq i32* %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @CoTaskMemFree(i32* %29)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %31 = load i32, i32* @HLSR_HISTORYFOLDER, align 4
  %32 = call i32* @HlinkGetSpecialReference(i32 %31, i32** %1)
  store i32* %32, i32** %2, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** @E_NOTIMPL, align 8
  %35 = icmp eq i32* %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = icmp eq i32* %39, null
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %42)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %1, align 8
  %44 = call i32* @HlinkGetSpecialReference(i32 4, i32** %1)
  store i32* %44, i32** %2, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** @E_INVALIDARG, align 8
  %47 = icmp eq i32* %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32* %49)
  %51 = load i32*, i32** %1, align 8
  %52 = icmp eq i32* %51, null
  %53 = zext i1 %52 to i32
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* %54)
  ret void
}

declare dso_local i32* @HlinkGetSpecialReference(i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
