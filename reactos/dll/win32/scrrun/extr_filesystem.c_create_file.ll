; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_filesystem.c_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.file = type { i32, %struct.TYPE_3__, i32, %struct.file* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@file_vtbl = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4
@INVALID_FILE_ATTRIBUTES = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DEVICE = common dso_local global i32 0, align 4
@CLSID_File = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__**)* @create_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_file(i32 %0, %struct.TYPE_3__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__**, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__** %1, %struct.TYPE_3__*** %5, align 8
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  %10 = call i8* @heap_alloc(i32 32)
  %11 = bitcast i8* %10 to %struct.file*
  store %struct.file* %11, %struct.file** %6, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = icmp ne %struct.file* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %98

16:                                               ; preds = %2
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @file_vtbl, i32** %19, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @GetFullPathNameW(i32 %22, i32 0, %struct.file* null, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %16
  %27 = load %struct.file*, %struct.file** %6, align 8
  %28 = call i32 @heap_free(%struct.file* %27)
  %29 = load i32, i32* @E_FAIL, align 4
  store i32 %29, i32* %3, align 4
  br label %98

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i8* @heap_alloc(i32 %34)
  %36 = bitcast i8* %35 to %struct.file*
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 3
  store %struct.file* %36, %struct.file** %38, align 8
  %39 = load %struct.file*, %struct.file** %6, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 3
  %41 = load %struct.file*, %struct.file** %40, align 8
  %42 = icmp ne %struct.file* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load %struct.file*, %struct.file** %6, align 8
  %45 = call i32 @heap_free(%struct.file* %44)
  %46 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %30
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 3
  %52 = load %struct.file*, %struct.file** %51, align 8
  %53 = call i32 @GetFullPathNameW(i32 %48, i32 %49, %struct.file* %52, i32* null)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = getelementptr inbounds %struct.file, %struct.file* %56, i32 0, i32 3
  %58 = load %struct.file*, %struct.file** %57, align 8
  %59 = call i32 @heap_free(%struct.file* %58)
  %60 = load %struct.file*, %struct.file** %6, align 8
  %61 = call i32 @heap_free(%struct.file* %60)
  %62 = load i32, i32* @E_FAIL, align 4
  store i32 %62, i32* %3, align 4
  br label %98

63:                                               ; preds = %47
  %64 = load %struct.file*, %struct.file** %6, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 3
  %66 = load %struct.file*, %struct.file** %65, align 8
  %67 = call i32 @GetFileAttributesW(%struct.file* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @INVALID_FILE_ATTRIBUTES, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %74 = load i32, i32* @FILE_ATTRIBUTE_DEVICE, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71, %63
  %79 = load %struct.file*, %struct.file** %6, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 3
  %81 = load %struct.file*, %struct.file** %80, align 8
  %82 = call i32 @heap_free(%struct.file* %81)
  %83 = load %struct.file*, %struct.file** %6, align 8
  %84 = call i32 @heap_free(%struct.file* %83)
  %85 = call i32 (...) @GetLastError()
  %86 = call i32 @create_error(i32 %85)
  store i32 %86, i32* %3, align 4
  br label %98

87:                                               ; preds = %71
  %88 = load %struct.file*, %struct.file** %6, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 1
  %90 = bitcast %struct.TYPE_3__* %89 to i32*
  %91 = load %struct.file*, %struct.file** %6, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 2
  %93 = call i32 @init_classinfo(i32* @CLSID_File, i32* %90, i32* %92)
  %94 = load %struct.file*, %struct.file** %6, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 1
  %96 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %5, align 8
  store %struct.TYPE_3__* %95, %struct.TYPE_3__** %96, align 8
  %97 = load i32, i32* @S_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %87, %78, %55, %43, %26, %14
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @GetFullPathNameW(i32, i32, %struct.file*, i32*) #1

declare dso_local i32 @heap_free(%struct.file*) #1

declare dso_local i32 @GetFileAttributesW(%struct.file*) #1

declare dso_local i32 @create_error(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @init_classinfo(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
