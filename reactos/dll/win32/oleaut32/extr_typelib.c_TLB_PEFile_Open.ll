; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_PEFile_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_PEFile_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, i32*, i32*, i32*, i32* }

@TYPE_E_CANTLOADLIBRARY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TLB_PEFile_Vtable = common dso_local global i32 0, align 4
@DONT_RESOLVE_DLL_REFERENCES = common dso_local global i32 0, align 4
@LOAD_LIBRARY_AS_DATAFILE = common dso_local global i32 0, align 4
@LOAD_WITH_ALTERED_SEARCH_PATH = common dso_local global i32 0, align 4
@TLB_PEFile_Open.TYPELIBW = internal constant [8 x i8] c"TYPELIB\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"No TYPELIB resource found\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32**, i32*, %struct.TYPE_7__**)* @TLB_PEFile_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLB_PEFile_Open(i32 %0, i32 %1, i32** %2, i32* %3, %struct.TYPE_7__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_7__** %4, %struct.TYPE_7__*** %11, align 8
  %14 = load i32, i32* @TYPE_E_CANTLOADLIBRARY, align 4
  store i32 %14, i32* %13, align 4
  %15 = call %struct.TYPE_6__* @heap_alloc(i32 48)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %12, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %19, i32* %6, align 4
  br label %112

20:                                               ; preds = %5
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  store i32* @TLB_PEFile_Vtable, i32** %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  store i32* null, i32** %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DONT_RESOLVE_DLL_REFERENCES, align 4
  %36 = load i32, i32* @LOAD_LIBRARY_AS_DATAFILE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @LOAD_WITH_ALTERED_SEARCH_PATH, align 4
  %39 = or i32 %37, %38
  %40 = call i32* @LoadLibraryExW(i32 %34, i32 0, i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %107

47:                                               ; preds = %20
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @MAKEINTRESOURCEW(i32 %51)
  %53 = call i32* @FindResourceW(i32* %50, i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @TLB_PEFile_Open.TYPELIBW, i64 0, i64 0))
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %104

60:                                               ; preds = %47
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i32* @LoadResource(i32* %63, i32* %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 5
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %103

74:                                               ; preds = %60
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = call i32* @LockResource(i32* %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @SizeofResource(i32* %88, i32* %91)
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32**, i32*** %9, align 8
  store i32* %96, i32** %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %99, %struct.TYPE_7__** %100, align 8
  %101 = load i32, i32* @S_OK, align 4
  store i32 %101, i32* %6, align 4
  br label %112

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %103, %47
  %105 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @E_FAIL, align 4
  store i32 %106, i32* %13, align 4
  br label %107

107:                                              ; preds = %104, %20
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = call i32 @TLB_PEFile_Release(%struct.TYPE_7__* %109)
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %85, %18
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_6__* @heap_alloc(i32) #1

declare dso_local i32* @LoadLibraryExW(i32, i32, i32) #1

declare dso_local i32* @FindResourceW(i32*, i32, i8*) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32* @LoadResource(i32*, i32*) #1

declare dso_local i32* @LockResource(i32*) #1

declare dso_local i32 @SizeofResource(i32*, i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @TLB_PEFile_Release(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
