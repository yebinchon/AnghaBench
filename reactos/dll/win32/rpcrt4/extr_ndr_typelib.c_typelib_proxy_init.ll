; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_typelib_proxy_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_typelib_proxy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typelib_proxy = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_9__, i32, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@typelib_proxy_vtbl = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typelib_proxy*, i32*, i32, i32*, %struct.TYPE_9__**, i8**)* @typelib_proxy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typelib_proxy_init(%struct.typelib_proxy* %0, i32* %1, i32 %2, i32* %3, %struct.TYPE_9__** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.typelib_proxy*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store %struct.typelib_proxy* %0, %struct.typelib_proxy** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %16 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @fill_stubless_table(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %25, i32* %7, align 4
  br label %96

26:                                               ; preds = %6
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %31 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %30, i32 0, i32 0
  %32 = bitcast %struct.TYPE_8__* %31 to i32*
  store i32* %32, i32** %9, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %35 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  store i32* @typelib_proxy_vtbl, i32** %37, align 8
  %38 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %39 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %44 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %47 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %50 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %56 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 6
  store i32 %54, i32* %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %60 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  store i32* %58, i32** %61, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @IsEqualGUID(i32* %62, i32* @IID_IUnknown)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %33
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %68 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 4
  %70 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %71 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = bitcast i32* %72 to i8**
  %74 = call i32 @create_proxy(i32* %66, i32* null, i32* %69, i8** %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i64 @FAILED(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %96

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80, %33
  %82 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %83 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.typelib_proxy*, %struct.typelib_proxy** %8, align 8
  %87 = getelementptr inbounds %struct.typelib_proxy, %struct.typelib_proxy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = bitcast i64* %88 to i8*
  %90 = load i8**, i8*** %13, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i8**, i8*** %13, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32 @IUnknown_AddRef(i32* %93)
  %95 = load i32, i32* @S_OK, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %81, %78, %24
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @fill_stubless_table(i32*, i32) #1

declare dso_local i32 @IsEqualGUID(i32*, i32*) #1

declare dso_local i32 @create_proxy(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
