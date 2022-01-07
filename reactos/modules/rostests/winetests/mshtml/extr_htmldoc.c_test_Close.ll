; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Close.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"QueryInterface(IID_IOleObject) failed: %08x\0A\00", align 1
@GetContainer = common dso_local global i32 0, align 4
@LockContainer = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@expect_LockContainer_fLock = common dso_local global i8* null, align 8
@OLECLOSE_NOSAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Close failed: %08x\0A\00", align 1
@container_locked = common dso_local global i8* null, align 8
@CLIENTSITE_SETNULL = common dso_local global i32 0, align 4
@CLIENTSITE_DONTSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Close(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %5 to i8**
  %9 = call i64 @IHTMLDocument2_QueryInterface(i32* %7, i32* @IID_IOleObject, i8** %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* @GetContainer, align 4
  %22 = call i32 @SET_EXPECT(i32 %21)
  %23 = load i32, i32* @LockContainer, align 4
  %24 = call i32 @SET_EXPECT(i32 %23)
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** @expect_LockContainer_fLock, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @OLECLOSE_NOSAVE, align 4
  %28 = call i64 @IOleObject_Close(i32* %26, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @GetContainer, align 4
  %36 = call i32 @CHECK_CALLED(i32 %35)
  %37 = load i32, i32* @LockContainer, align 4
  %38 = call i32 @CHECK_CALLED(i32 %37)
  %39 = load i8*, i8** @FALSE, align 8
  store i8* %39, i8** @container_locked, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %20
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @CLIENTSITE_SETNULL, align 4
  %45 = load i32, i32* @CLIENTSITE_DONTSET, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @test_ClientSite(i32* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %20
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @IOleObject_Release(i32* %49)
  br label %51

51:                                               ; preds = %48, %19
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleObject_Close(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @test_ClientSite(i32*, i32) #1

declare dso_local i32 @IOleObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
