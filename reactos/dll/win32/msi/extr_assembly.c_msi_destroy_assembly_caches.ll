; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_destroy_assembly_caches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_destroy_assembly_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32**, i32* }

@CLR_VERSION_MAX = common dso_local global i64 0, align 8
@pCreateAssemblyCacheNet10 = common dso_local global i32* null, align 8
@pCreateAssemblyCacheNet11 = common dso_local global i32* null, align 8
@pCreateAssemblyCacheNet20 = common dso_local global i32* null, align 8
@pCreateAssemblyCacheNet40 = common dso_local global i32* null, align 8
@hfusion10 = common dso_local global i32* null, align 8
@hfusion11 = common dso_local global i32* null, align 8
@hfusion20 = common dso_local global i32* null, align 8
@hfusion40 = common dso_local global i32* null, align 8
@hmscoree = common dso_local global i32* null, align 8
@hsxs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msi_destroy_assembly_caches(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @IAssemblyCache_Release(i32* %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @CLR_VERSION_MAX, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %3, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @IAssemblyCache_Release(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %28, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %16

45:                                               ; preds = %16
  store i32* null, i32** @pCreateAssemblyCacheNet10, align 8
  store i32* null, i32** @pCreateAssemblyCacheNet11, align 8
  store i32* null, i32** @pCreateAssemblyCacheNet20, align 8
  store i32* null, i32** @pCreateAssemblyCacheNet40, align 8
  %46 = load i32*, i32** @hfusion10, align 8
  %47 = call i32 @FreeLibrary(i32* %46)
  %48 = load i32*, i32** @hfusion11, align 8
  %49 = call i32 @FreeLibrary(i32* %48)
  %50 = load i32*, i32** @hfusion20, align 8
  %51 = call i32 @FreeLibrary(i32* %50)
  %52 = load i32*, i32** @hfusion40, align 8
  %53 = call i32 @FreeLibrary(i32* %52)
  %54 = load i32*, i32** @hmscoree, align 8
  %55 = call i32 @FreeLibrary(i32* %54)
  %56 = load i32*, i32** @hsxs, align 8
  %57 = call i32 @FreeLibrary(i32* %56)
  store i32* null, i32** @hfusion10, align 8
  store i32* null, i32** @hfusion11, align 8
  store i32* null, i32** @hfusion20, align 8
  store i32* null, i32** @hfusion40, align 8
  store i32* null, i32** @hmscoree, align 8
  store i32* null, i32** @hsxs, align 8
  ret void
}

declare dso_local i32 @IAssemblyCache_Release(i32*) #1

declare dso_local i32 @FreeLibrary(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
