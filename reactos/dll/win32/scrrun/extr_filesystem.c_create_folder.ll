; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_folder.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.folder = type { i32, %struct.TYPE_3__, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@foldervtbl = common dso_local global i32 0, align 4
@CLSID_Folder = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_folder(i32* %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca %struct.folder*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @debugstr_w(i32* %8)
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call %struct.folder* @heap_alloc(i32 24)
  store %struct.folder* %11, %struct.folder** %6, align 8
  %12 = load %struct.folder*, %struct.folder** %6, align 8
  %13 = icmp ne %struct.folder* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.folder*, %struct.folder** %6, align 8
  %18 = getelementptr inbounds %struct.folder, %struct.folder* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @foldervtbl, i32** %19, align 8
  %20 = load %struct.folder*, %struct.folder** %6, align 8
  %21 = getelementptr inbounds %struct.folder, %struct.folder* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @SysAllocString(i32* %22)
  %24 = load %struct.folder*, %struct.folder** %6, align 8
  %25 = getelementptr inbounds %struct.folder, %struct.folder* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.folder*, %struct.folder** %6, align 8
  %27 = getelementptr inbounds %struct.folder, %struct.folder* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %16
  %31 = load %struct.folder*, %struct.folder** %6, align 8
  %32 = call i32 @heap_free(%struct.folder* %31)
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %3, align 4
  br label %45

34:                                               ; preds = %16
  %35 = load %struct.folder*, %struct.folder** %6, align 8
  %36 = getelementptr inbounds %struct.folder, %struct.folder* %35, i32 0, i32 1
  %37 = bitcast %struct.TYPE_3__* %36 to i32*
  %38 = load %struct.folder*, %struct.folder** %6, align 8
  %39 = getelementptr inbounds %struct.folder, %struct.folder* %38, i32 0, i32 2
  %40 = call i32 @init_classinfo(i32* @CLSID_Folder, i32* %37, i32* %39)
  %41 = load %struct.folder*, %struct.folder** %6, align 8
  %42 = getelementptr inbounds %struct.folder, %struct.folder* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %43, align 8
  %44 = load i32, i32* @S_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %30, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local %struct.folder* @heap_alloc(i32) #1

declare dso_local i32 @SysAllocString(i32*) #1

declare dso_local i32 @heap_free(%struct.folder*) #1

declare dso_local i32 @init_classinfo(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
