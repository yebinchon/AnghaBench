; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_validate_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_uri.c_validate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32*, i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@Uri_HAS_PATH = common dso_local global i32 0, align 4
@validate_path.nullW = internal constant [1 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"(%p %p %x): Invalid path component %s.\0A\00", align 1
@INET_E_INVALID_URL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"(%p %p %x): Valid path component %s len=%d.\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32)* @validate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_path(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  br label %67

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @Uri_HAS_PATH, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %64, label %34

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  br label %66

64:                                               ; preds = %39, %34, %27
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @validate_path.nullW, i64 0, i64 0), i32** %8, align 8
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %12, align 8
  store i32 -1, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %46
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32*, i32** %8, align 8
  store i32* %68, i32** %9, align 8
  store i32** %8, i32*** %10, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32**, i32*** %10, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @parse_path_opaque(i32** %74, %struct.TYPE_11__* %75, i32 %76)
  br label %83

78:                                               ; preds = %67
  %79 = load i32**, i32*** %10, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @parse_path_hierarchical(i32** %79, %struct.TYPE_11__* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i64 [ %77, %73 ], [ %82, %78 ]
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load i64, i64* %12, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90, %83
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @debugstr_wn(i32* %100, i32 %101)
  %103 = call i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %97, %struct.TYPE_11__* %98, i32 %99, i32 %102)
  %104 = load i32, i32* @INET_E_INVALID_URL, align 4
  store i32 %104, i32* %4, align 4
  br label %121

105:                                              ; preds = %90, %87
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @debugstr_wn(i32* %111, i32 %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %106, %struct.TYPE_11__* %107, i32 %108, i32 %115, i32 %118)
  %120 = load i32, i32* @S_OK, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %105, %96
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @parse_path_opaque(i32**, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @parse_path_hierarchical(i32**, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, ...) #1

declare dso_local i32 @debugstr_wn(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
