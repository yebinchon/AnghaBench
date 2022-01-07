; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_IConnectionPoint.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_ordinal.c_test_IConnectionPoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@contain_vtbl = common dso_local global i32 0, align 4
@disp_vtbl = common dso_local global i32 0, align 4
@IID_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"pConnectToConnectionPoint failed with %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"returned ConnectionPoint is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid cookie returned\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@VT_BSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"SHPackDispParams failed: %08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"leftover IConnectionPointContainer reference %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"leftover IDispatch reference %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IConnectionPoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IConnectionPoint() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 -1, i32* %6, align 4
  %9 = call i32 (...) @GetProcessHeap()
  %10 = call i8* @HeapAlloc(i32 %9, i32 0, i32 32)
  %11 = bitcast i8* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %4, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32* @contain_vtbl, i32** %14, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = call i32 (...) @GetProcessHeap()
  %22 = call i8* @HeapAlloc(i32 %21, i32 0, i32 16)
  %23 = bitcast i8* %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32* @disp_vtbl, i32** %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = bitcast %struct.TYPE_7__* %29 to i32*
  %31 = load i32, i32* @TRUE, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = bitcast %struct.TYPE_8__* %32 to i32*
  %34 = call i64 @pConnectToConnectionPoint(i32* %30, i32* @IID_NULL, i32 %31, i32* %33, i32* %6, i32** %3)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %1, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, -1
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %3, align 8
  %50 = call i64 @pIConnectionPoint_SimpleInvoke(i32* %49, i32 160, i32* null)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = call i32 @memset(i32* %7, i32 192, i32 4)
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %59 = call i32 @memset(i32* %58, i32 192, i32 40)
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 0
  %61 = load i32, i32* @VT_I4, align 4
  %62 = load i32, i32* @VT_BSTR, align 4
  %63 = call i64 @pSHPackDispParams(i32* %7, i32* %60, i32 2, i32 %61, i32 -559038737, i32 %62, i32 -559035650)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %1, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @pIConnectionPoint_SimpleInvoke(i32* %70, i32 161, i32* %7)
  store i64 %71, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = load i64, i64* @S_OK, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i64, i64* %1, align 8
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = bitcast %struct.TYPE_8__* %79 to i32*
  %81 = call i64 @pConnectToConnectionPoint(i32* null, i32* @IID_NULL, i32 %78, i32* %80, i32* %6, i32** null)
  store i64 %81, i64* %1, align 8
  %82 = load i64, i64* %1, align 8
  %83 = load i64, i64* @S_OK, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i64, i64* %1, align 8
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = bitcast %struct.TYPE_8__* %88 to i32*
  %90 = call i64 @IUnknown_Release(i32* %89)
  store i64 %90, i64* %2, align 8
  %91 = load i64, i64* %2, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %2, align 8
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64 %94)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %97 = bitcast %struct.TYPE_7__* %96 to i32*
  %98 = call i64 @IUnknown_Release(i32* %97)
  store i64 %98, i64* %2, align 8
  %99 = load i64, i64* %2, align 8
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = load i64, i64* %2, align 8
  %103 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  ret void
}

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @pConnectToConnectionPoint(i32*, i32*, i32, i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pIConnectionPoint_SimpleInvoke(i32*, i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @pSHPackDispParams(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
