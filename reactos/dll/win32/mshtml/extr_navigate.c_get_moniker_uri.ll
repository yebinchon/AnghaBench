; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_get_moniker_uri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_navigate.c_get_moniker_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IUriContainer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No IUriContainer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_moniker_uri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_moniker_uri(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32** %4 to i8**
  %9 = call i32 @IMoniker_QueryInterface(i32* %7, i32* @IID_IUriContainer, i8** %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @SUCCEEDED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @IUriContainer_GetIUri(i32* %14, i32** %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @IUriContainer_Release(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %27

22:                                               ; preds = %13
  br label %25

23:                                               ; preds = %1
  %24 = call i32 @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %2, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32*, i32** %2, align 8
  ret i32* %28
}

declare dso_local i32 @IMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUriContainer_GetIUri(i32*, i32**) #1

declare dso_local i32 @IUriContainer_Release(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
