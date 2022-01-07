; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_bsc.c_bind_url.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_bsc.c_bind_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32, i32*, i32*, i32 (i8*, i8*, i32)*, i8* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@bsc_vtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@IID_IStream = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bind_url(i32* %0, i32 (i8*, i8*, i32)* %1, i8* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, i8*, i32)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 (i8*, i8*, i32)* %1, i32 (i8*, i8*, i32)** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %14)
  %16 = call i32 @CreateBindCtx(i32 0, i32** %11)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %74

22:                                               ; preds = %4
  %23 = call %struct.TYPE_6__* @heap_alloc(i32 56)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32* @bsc_vtbl, i32** %26, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  store i32 (i8*, i8*, i32)* %32, i32 (i8*, i8*, i32)** %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @RegisterBindStatusCallback(i32* %42, %struct.TYPE_7__* %44, i32* null, i32 0)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i64 @SUCCEEDED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %22
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = bitcast i32** %13 to i32*
  %53 = call i32 @IMoniker_BindToStorage(i32* %50, i32* %51, i32* null, i32* @IID_IStream, i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @IStream_Release(i32* %57)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @IBindCtx_Release(i32* %60)
  br label %62

62:                                               ; preds = %59, %22
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @FAILED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = call i32 @IBindStatusCallback_Release(%struct.TYPE_7__* %68)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %9, align 8
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %72, align 8
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70, %20
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @CreateBindCtx(i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

declare dso_local i32 @RegisterBindStatusCallback(i32*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IBindStatusCallback_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
