; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_bindctx.c_bsch_from_bctx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_bindctx.c_bsch_from_bctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bscb_holderW = common dso_local global i32 0, align 4
@IID_IBindStatusCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @bsch_from_bctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bsch_from_bctx(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @bscb_holderW, align 4
  %9 = call i32 @IBindCtx_GetObjectParam(i32* %7, i32 %8, i32** %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @FAILED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32** %4 to i8**
  %17 = call i32 @IUnknown_QueryInterface(i32* %15, i32* @IID_IBindStatusCallback, i8** %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @IUnknown_Release(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @SUCCEEDED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32* [ %24, %23 ], [ null, %25 ]
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %26, %13
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local i32 @IBindCtx_GetObjectParam(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
