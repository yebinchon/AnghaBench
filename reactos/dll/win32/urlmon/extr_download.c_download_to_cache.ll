; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_download.c_download_to_cache.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_download.c_download_to_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32 }

@BINDF_ASYNCHRONOUS = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @download_to_cache(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @DownloadBSC_Create(i32* %15, i32* null, %struct.TYPE_3__** %10)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %5, align 4
  br label %73

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @BINDF_ASYNCHRONOUS, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @CreateAsyncBindCtx(i32 0, i32* %33, i32* null, i32** %11)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @IBindStatusCallback_Release(i32* %36)
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %5, align 4
  br label %73

43:                                               ; preds = %22
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @CreateURLMonikerEx2(i32* null, i32* %44, i32** %12, i32 0)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @IBindCtx_Release(i32* %50)
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %5, align 4
  br label %73

53:                                               ; preds = %43
  %54 = load i32*, i32** %12, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = bitcast i32** %13 to i8**
  %57 = call i32 @IMoniker_BindToStorage(i32* %54, i32* %55, i32* null, i32* @IID_IUnknown, i8** %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @IMoniker_Release(i32* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @IBindCtx_Release(i32* %60)
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @SUCCEEDED(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @IUnknown_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %65, %53
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %49, %41, %20
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @DownloadBSC_Create(i32*, i32*, %struct.TYPE_3__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i32 @CreateURLMonikerEx2(i32*, i32*, i32**, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
