; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_numeric_create.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_win32/extr_c_locale_win32.c__Locale_numeric_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i8*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@_STLP_LOC_NO_MEMORY = common dso_local global i32 0, align 4
@_STLP_LOC_UNKNOWN_NAME = common dso_local global i32 0, align 4
@LOCALE_SDECIMAL = common dso_local global i32 0, align 4
@LOCALE_STHOUSAND = common dso_local global i32 0, align 4
@INVARIANT_LCID = common dso_local global i64 0, align 8
@LOCALE_SGROUPING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @_Locale_numeric_create(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = call i64 @malloc(i32 40)
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %11, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %18 = load i32*, i32** %7, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %4, align 8
  br label %123

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %22 = call i32 @memset(%struct.TYPE_7__* %21, i32 0, i32 40)
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @__GetLCIDFromName(i8* %23, i64* %26, i32 %29, i32* %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %20
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %35 = call i32 @free(%struct.TYPE_7__* %34)
  %36 = load i32, i32* @_STLP_LOC_UNKNOWN_NAME, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %123

38:                                               ; preds = %20
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LOCALE_SDECIMAL, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %51 = call i32 @__GetLocaleInfoUsingACP(i64 %42, i32 %45, i32 %46, i8* %49, i32 4, i32* %50, i32 4)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LOCALE_STHOUSAND, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %64 = call i32 @__GetLocaleInfoUsingACP(i64 %55, i32 %58, i32 %59, i8* %62, i32 4, i32* %63, i32 4)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @INVARIANT_LCID, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %38
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @LOCALE_SGROUPING, align 4
  %77 = call i32 @GetLocaleInfoA(i64 %75, i32 %76, i8* null, i32 0)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @malloc(i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %71
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = call i32 @free(%struct.TYPE_7__* %84)
  %86 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 %86, i32* %87, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %123

88:                                               ; preds = %71
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @LOCALE_SGROUPING, align 4
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @GetLocaleInfoA(i64 %92, i32 %93, i8* %94, i32 %95)
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @__FixGrouping(i8* %97)
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  br label %121

102:                                              ; preds = %38
  %103 = call i64 @malloc(i32 1)
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %102
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = call i32 @free(%struct.TYPE_7__* %112)
  %114 = load i32, i32* @_STLP_LOC_NO_MEMORY, align 4
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %123

116:                                              ; preds = %102
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %116, %88
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %122, %struct.TYPE_7__** %4, align 8
  br label %123

123:                                              ; preds = %121, %111, %83, %33, %16
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %124
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @__GetLCIDFromName(i8*, i64*, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @__GetLocaleInfoUsingACP(i64, i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @GetLocaleInfoA(i64, i32, i8*, i32) #1

declare dso_local i32 @__FixGrouping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
