; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_NEFile_Open.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_NEFile_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, i32* }

@TYPE_E_CANTLOADLIBRARY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@TLB_NEFile_Vtable = common dso_local global i32 0, align 4
@OF_READ = common dso_local global i32 0, align 4
@IMAGE_OS2_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"TYPELIB\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32**, i32*, %struct.TYPE_6__**)* @TLB_NEFile_Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLB_NEFile_Open(i64 %0, i32 %1, i32** %2, i32* %3, %struct.TYPE_6__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  store i64 -1, i64* %12, align 8
  %18 = load i32, i32* @TYPE_E_CANTLOADLIBRARY, align 4
  store i32 %18, i32* %14, align 4
  %19 = call i8* @heap_alloc(i32 24)
  %20 = bitcast i8* %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %15, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %24, i32* %6, align 4
  br label %98

25:                                               ; preds = %5
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* @TLB_NEFile_Vtable, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @OF_READ, align 4
  %36 = call i64 @LZOpenFileW(i32 %34, i32* %13, i32 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp sge i64 %37, 0
  br i1 %38, label %39, label %87

39:                                               ; preds = %25
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @read_xx_header(i64 %40)
  %42 = load i64, i64* @IMAGE_OS2_SIGNATURE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @MAKEINTRESOURCEA(i32 %46)
  %48 = call i64 @find_ne_resource(i64 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %16, i32* %17)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %44
  %51 = load i32, i32* %16, align 4
  %52 = call i8* @heap_alloc(i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %61, i32* %14, align 4
  br label %85

62:                                               ; preds = %50
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @SEEK_SET, align 4
  %66 = call i32 @LZSeek(i64 %63, i32 %64, i32 %65)
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %16, align 4
  %72 = call i32 @LZRead(i64 %67, i32* %70, i32 %71)
  store i32 %72, i32* %16, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @LZClose(i64 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32**, i32*** %9, align 8
  store i32* %77, i32** %78, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %83, align 8
  %84 = load i32, i32* @S_OK, align 4
  store i32 %84, i32* %6, align 4
  br label %98

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85, %44
  br label %87

87:                                               ; preds = %86, %39, %25
  %88 = load i64, i64* %12, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @LZClose(i64 %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @TLB_NEFile_Release(%struct.TYPE_6__* %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %62, %23
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i64 @LZOpenFileW(i32, i32*, i32) #1

declare dso_local i64 @read_xx_header(i64) #1

declare dso_local i64 @find_ne_resource(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @MAKEINTRESOURCEA(i32) #1

declare dso_local i32 @LZSeek(i64, i32, i32) #1

declare dso_local i32 @LZRead(i64, i32*, i32) #1

declare dso_local i32 @LZClose(i64) #1

declare dso_local i32 @TLB_NEFile_Release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
