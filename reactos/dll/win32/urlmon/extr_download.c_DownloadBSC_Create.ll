; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_download.c_DownloadBSC_Create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_download.c_DownloadBSC_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@BindStatusCallbackVtbl = common dso_local global i32 0, align 4
@ServiceProviderVtbl = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_9__**)* @DownloadBSC_Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DownloadBSC_Create(i32* %0, i64 %1, %struct.TYPE_9__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_9__** %2, %struct.TYPE_9__*** %7, align 8
  %9 = call %struct.TYPE_9__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %8, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32* @BindStatusCallbackVtbl, i32** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* @ServiceProviderVtbl, i32** %20, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @heap_strdupW(i64 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = call i32 @heap_free(%struct.TYPE_9__* %35)
  %37 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %37, i32* %4, align 4
  br label %52

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %14
  %40 = load i32*, i32** %5, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @IBindStatusCallback_AddRef(i32* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %50, align 8
  %51 = load i32, i32* @S_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %34, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.TYPE_9__* @heap_alloc_zero(i32) #1

declare dso_local i32 @heap_strdupW(i64) #1

declare dso_local i32 @heap_free(%struct.TYPE_9__*) #1

declare dso_local i32 @IBindStatusCallback_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
