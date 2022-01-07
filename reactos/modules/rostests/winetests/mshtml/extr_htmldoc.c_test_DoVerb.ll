; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_DoVerb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_DoVerb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.test_DoVerb.rect = private unnamed_addr constant %struct.TYPE_3__ { i32 0, i32 0, i32 500, i32 500 }, align 4
@container_locked = common dso_local global i8* null, align 8
@GetContainer = common dso_local global i32 0, align 4
@LockContainer = common dso_local global i32 0, align 4
@ActivateMe = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@expect_LockContainer_fLock = common dso_local global i8* null, align 8
@OLEIVERB_SHOW = common dso_local global i32 0, align 4
@ClientSite = common dso_local global i32 0, align 4
@container_hwnd = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"DoVerb failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_DoVerb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DoVerb(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_3__* @__const.test_DoVerb.rect to i8*), i64 16, i1 false)
  %6 = load i8*, i8** @container_locked, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @GetContainer, align 4
  %10 = call i32 @SET_EXPECT(i32 %9)
  %11 = load i32, i32* @LockContainer, align 4
  %12 = call i32 @SET_EXPECT(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ActivateMe, align 4
  %15 = call i32 @SET_EXPECT(i32 %14)
  %16 = load i8*, i8** @TRUE, align 8
  store i8* %16, i8** @expect_LockContainer_fLock, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @OLEIVERB_SHOW, align 4
  %19 = load i32, i32* @container_hwnd, align 4
  %20 = call i64 @IOleObject_DoVerb(i32* %17, i32 %18, i32* null, i32* @ClientSite, i32 -1, i32 %19, %struct.TYPE_3__* %3)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i8*, i8** @container_locked, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* @GetContainer, align 4
  %31 = call i32 @CHECK_CALLED(i32 %30)
  %32 = load i32, i32* @LockContainer, align 4
  %33 = call i32 @CHECK_CALLED(i32 %32)
  %34 = load i8*, i8** @TRUE, align 8
  store i8* %34, i8** @container_locked, align 8
  br label %35

35:                                               ; preds = %29, %13
  %36 = load i32, i32* @ActivateMe, align 4
  %37 = call i32 @CHECK_CALLED(i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SET_EXPECT(i32) #2

declare dso_local i64 @IOleObject_DoVerb(i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @ok(i32, i8*, i64) #2

declare dso_local i32 @CHECK_CALLED(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
