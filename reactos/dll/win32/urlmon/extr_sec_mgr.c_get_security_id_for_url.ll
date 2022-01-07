; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_security_id_for_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_sec_mgr.c_get_security_id_for_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLZONE_INVALID = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @get_security_id_for_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_security_id_for_url(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @URLZONE_INVALID, align 4
  store i32 %12, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @map_url_to_zone(i32 %13, i32* %9, i32** %10)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @FAILED(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, -2147217407
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @E_INVALIDARG, align 4
  br label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, align 4
  %30 = call i32 @CreateUri(i32* %28, i32 %29, i32 0, i32** %11)
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @CoTaskMemFree(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %27
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @generate_security_id(i32* %39, i32* %40, i32* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @IUri_Release(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %36, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @map_url_to_zone(i32, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateUri(i32*, i32, i32, i32**) #1

declare dso_local i32 @CoTaskMemFree(i32*) #1

declare dso_local i32 @generate_security_id(i32*, i32*, i32*, i32) #1

declare dso_local i32 @IUri_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
