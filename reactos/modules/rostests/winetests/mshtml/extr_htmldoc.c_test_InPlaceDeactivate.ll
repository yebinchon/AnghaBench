; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_InPlaceDeactivate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_InPlaceDeactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleInPlaceObjectWindowless = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"QueryInterface(IID_IOleInPlaceObjectWindowless) failed: %08x\0A\00", align 1
@SetStatusText = common dso_local global i32 0, align 4
@OnFocus_FALSE = common dso_local global i32 0, align 4
@ipsex = common dso_local global i64 0, align 8
@OnInPlaceDeactivateEx = common dso_local global i32 0, align 4
@OnInPlaceDeactivate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"InPlaceDeactivate failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_InPlaceDeactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_InPlaceDeactivate(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %5 to i8**
  %9 = call i64 @IHTMLDocument2_QueryInterface(i32* %7, i32* @IID_IOleInPlaceObjectWindowless, i8** %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @FAILED(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %65

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* @SetStatusText, align 4
  %25 = call i32 @SET_EXPECT(i32 %24)
  %26 = load i32, i32* @OnFocus_FALSE, align 4
  %27 = call i32 @SET_EXPECT(i32 %26)
  %28 = load i64, i64* @ipsex, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @OnInPlaceDeactivateEx, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @OnInPlaceDeactivate, align 4
  %35 = call i32 @SET_EXPECT(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %20
  %38 = load i32*, i32** %5, align 8
  %39 = call i64 @IOleInPlaceObjectWindowless_InPlaceDeactivate(i32* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %37
  %49 = load i32, i32* @SetStatusText, align 4
  %50 = call i32 @CLEAR_CALLED(i32 %49)
  %51 = load i32, i32* @OnFocus_FALSE, align 4
  %52 = call i32 @CHECK_CALLED(i32 %51)
  %53 = load i64, i64* @ipsex, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @OnInPlaceDeactivateEx, align 4
  %57 = call i32 @CHECK_CALLED(i32 %56)
  br label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @OnInPlaceDeactivate, align 4
  %60 = call i32 @CHECK_CALLED(i32 %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @IOleInPlaceObjectWindowless_Release(i32* %63)
  br label %65

65:                                               ; preds = %62, %19
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleInPlaceObjectWindowless_InPlaceDeactivate(i32*) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IOleInPlaceObjectWindowless_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
