; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_umstream.c_URLStartDownload.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_umstream.c_URLStartDownload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IStream = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32**, i32*)* @URLStartDownload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @URLStartDownload(i32 %0, i32** %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32**, i32*** %6, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @CreateURLMoniker(i32* null, i32 %12, i32** %9)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i64 @FAILED(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %4, align 8
  br label %58

19:                                               ; preds = %3
  %20 = call i64 @CreateBindCtx(i32 0, i32** %10)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @IMoniker_Release(i32* %25)
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %4, align 8
  br label %58

28:                                               ; preds = %19
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @RegisterBindStatusCallback(i32* %29, i32* %30, i32* null, i32 0)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @FAILED(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @IBindCtx_Release(i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @IMoniker_Release(i32* %38)
  %40 = load i64, i64* %8, align 8
  store i64 %40, i64* %4, align 8
  br label %58

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32**, i32*** %6, align 8
  %45 = bitcast i32** %44 to i8**
  %46 = call i64 @IMoniker_BindToStorage(i32* %42, i32* %43, i32* null, i32* @IID_IStream, i8** %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @E_PENDING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* @S_OK, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @IBindCtx_Release(i32* %53)
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @IMoniker_Release(i32* %55)
  %57 = load i64, i64* %8, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %52, %35, %24, %17
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @CreateBindCtx(i32, i32**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i64 @RegisterBindStatusCallback(i32*, i32*, i32*, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
