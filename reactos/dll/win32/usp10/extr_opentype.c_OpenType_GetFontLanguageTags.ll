; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontLanguageTags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontLanguageTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i64* }
%struct.TYPE_6__ = type { i64 }

@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@USP10_LANGUAGE_TABLE_GSUB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenType_GetFontLanguageTags(i32* %0, i64 %1, i64 %2, i32 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %15, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @_initialize_script_cache(i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.TYPE_8__* @usp10_script_cache_get_script(i32* %20, i64 %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %16, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %25, i32* %7, align 4
  br label %150

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %28 = call i32 @_initialize_language_cache(%struct.TYPE_8__* %27)
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %38, i32* %15, align 4
  br label %45

39:                                               ; preds = %31, %26
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %42, %39
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %102, %45
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %105

56:                                               ; preds = %50
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  br label %73

73:                                               ; preds = %60, %56
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %77, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %76
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %12, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  %98 = load i32*, i32** %13, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @S_OK, align 4
  store i32 %99, i32* %15, align 4
  br label %105

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %73
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %50

105:                                              ; preds = %87, %50
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @USP10_LANGUAGE_TABLE_GSUB, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %105
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %122, i64* %126, align 8
  br label %127

127:                                              ; preds = %118, %114
  %128 = load i64, i64* %10, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* %15, align 4
  %132 = call i64 @FAILED(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %12, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %130, %127
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32*, i32** %13, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %141, %105
  %149 = load i32, i32* %15, align 4
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %148, %24
  %151 = load i32, i32* %7, align 4
  ret i32 %151
}

declare dso_local i32 @_initialize_script_cache(i32*) #1

declare dso_local %struct.TYPE_8__* @usp10_script_cache_get_script(i32*, i64) #1

declare dso_local i32 @_initialize_language_cache(%struct.TYPE_8__*) #1

declare dso_local i64 @FAILED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
