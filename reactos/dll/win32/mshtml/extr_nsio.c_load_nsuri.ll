; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_load_nsuri.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_nsio.c_load_nsuri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32 }

@IID_nsIWebNavigation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not get nsIWebNavigation interface: %08x\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@IID_nsIDocShell = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not get nsIDocShell: %08x\0A\00", align 1
@NS_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"LoadURI failed: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_nsuri(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = bitcast i32** %13 to i8**
  %22 = call i64 @get_nsinterface(i32* %20, i32* @IID_nsIWebNavigation, i8** %21)
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %16, align 8
  %24 = call i64 @NS_FAILED(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i64, i64* %16, align 8
  %28 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @E_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %5
  %31 = load i32*, i32** %13, align 8
  %32 = bitcast i32** %14 to i8**
  %33 = call i64 @nsIWebNavigation_QueryInterface(i32* %31, i32* @IID_nsIDocShell, i8** %32)
  store i64 %33, i64* %16, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @nsIWebNavigation_Release(i32* %34)
  %36 = load i64, i64* %16, align 8
  %37 = call i64 @NS_FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @E_FAIL, align 4
  store i32 %42, i32* %6, align 4
  br label %117

43:                                               ; preds = %30
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @nsIDocShell_CreateLoadInfo(i32* %47, i32** %12)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = call i64 @NS_FAILED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @nsIDocShell_Release(i32* %53)
  %55 = load i32, i32* @E_FAIL, align 4
  store i32 %55, i32* %6, align 4
  br label %117

56:                                               ; preds = %46
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @nsIDocShellLoadInfo_SetPostDataStream(i32* %57, i32* %58)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @NS_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  br label %65

65:                                               ; preds = %56, %43
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %15, align 8
  %75 = load i32, i32* @TRUE, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @FALSE, align 4
  %84 = call i64 @nsIDocShell_LoadURI(i32* %78, i32* %80, i32* %81, i32 %82, i32 %83)
  store i64 %84, i64* %16, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = icmp eq %struct.TYPE_12__* %85, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %65
  %94 = load i32, i32* @FALSE, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %65
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32* null, i32** %99, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @nsIDocShell_Release(i32* %100)
  %102 = load i32*, i32** %12, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @nsIDocShellLoadInfo_Release(i32* %105)
  br label %107

107:                                              ; preds = %104, %97
  %108 = load i64, i64* %16, align 8
  %109 = call i64 @NS_FAILED(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i64, i64* %16, align 8
  %113 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @E_FAIL, align 4
  store i32 %114, i32* %6, align 4
  br label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @S_OK, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %111, %52, %39, %26
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i64 @get_nsinterface(i32*, i32*, i8**) #1

declare dso_local i64 @NS_FAILED(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @nsIWebNavigation_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @nsIWebNavigation_Release(i32*) #1

declare dso_local i64 @nsIDocShell_CreateLoadInfo(i32*, i32**) #1

declare dso_local i32 @nsIDocShell_Release(i32*) #1

declare dso_local i64 @nsIDocShellLoadInfo_SetPostDataStream(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @nsIDocShell_LoadURI(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nsIDocShellLoadInfo_Release(i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
