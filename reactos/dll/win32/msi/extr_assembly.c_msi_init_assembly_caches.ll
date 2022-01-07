; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_init_assembly_caches.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_assembly.c_msi_init_assembly_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@CLR_VERSION_V10 = common dso_local global i64 0, align 8
@CLR_VERSION_V11 = common dso_local global i64 0, align 8
@CLR_VERSION_V20 = common dso_local global i64 0, align 8
@CLR_VERSION_V40 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msi_init_assembly_caches(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = call i32 (...) @init_function_pointers()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %2, align 4
  br label %50

8:                                                ; preds = %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = call i64 @pCreateAssemblyCacheSxs(i32* %10, i32 0)
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %50

16:                                               ; preds = %8
  br i1 true, label %17, label %24

17:                                               ; preds = %16
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @CLR_VERSION_V10, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @pCreateAssemblyCacheNet10(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %17, %16
  br i1 true, label %25, label %32

25:                                               ; preds = %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CLR_VERSION_V11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = call i32 @pCreateAssemblyCacheNet11(i32* %30, i32 0)
  br label %32

32:                                               ; preds = %25, %24
  br i1 true, label %33, label %40

33:                                               ; preds = %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @CLR_VERSION_V20, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @pCreateAssemblyCacheNet20(i32* %38, i32 0)
  br label %40

40:                                               ; preds = %33, %32
  br i1 true, label %41, label %48

41:                                               ; preds = %40
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @CLR_VERSION_V40, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @pCreateAssemblyCacheNet40(i32* %46, i32 0)
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %14, %6
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @init_function_pointers(...) #1

declare dso_local i64 @pCreateAssemblyCacheSxs(i32*, i32) #1

declare dso_local i32 @pCreateAssemblyCacheNet10(i32*, i32) #1

declare dso_local i32 @pCreateAssemblyCacheNet11(i32*, i32) #1

declare dso_local i32 @pCreateAssemblyCacheNet20(i32*, i32) #1

declare dso_local i32 @pCreateAssemblyCacheNet40(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
