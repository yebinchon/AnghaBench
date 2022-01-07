; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_get_facbuf_for_iid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_marshal.c_get_facbuf_for_iid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@WINE_CLSCTX_DONT_HOST = common dso_local global i32 0, align 4
@IID_IPSFactoryBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**)* @get_facbuf_for_iid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_facbuf_for_iid(i32 %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @CoGetPSClsid(i32 %8, i32* %7)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %3, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %17 = load i32, i32* @WINE_CLSCTX_DONT_HOST, align 4
  %18 = or i32 %16, %17
  %19 = load i32**, i32*** %5, align 8
  %20 = bitcast i32** %19 to i32*
  %21 = call i64 @CoGetClassObject(i32* %7, i32 %18, i32* null, i32* @IID_IPSFactoryBuffer, i32* %20)
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %15, %13
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local i64 @CoGetPSClsid(i32, i32*) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
