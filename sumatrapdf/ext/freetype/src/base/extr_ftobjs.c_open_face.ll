; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftobjs.c_open_face.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/base/extr_ftobjs.c_open_face.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)*, i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_20__*, i32*, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i64, i64 }

@FT_FACE_FLAG_EXTERNAL_STREAM = common dso_local global i32 0, align 4
@Invalid_CharMap_Handle = common dso_local global i32 0, align 4
@FT_PARAM_TAG_INCREMENTAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i32*, i64, i64, i32, %struct.TYPE_19__*, %struct.TYPE_20__**)* @open_face to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_face(%struct.TYPE_22__* %0, i32* %1, i64 %2, i64 %3, i32 %4, %struct.TYPE_19__* %5, %struct.TYPE_20__** %6) #0 {
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_20__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_20__** %6, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %18, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  store %struct.TYPE_21__* %23, %struct.TYPE_21__** %16, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @FT_ALLOC(%struct.TYPE_20__* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  br label %106

35:                                               ; preds = %7
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load i32, i32* @FT_FACE_FLAG_EXTERNAL_STREAM, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %35
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %56 = call i64 @FT_NEW(%struct.TYPE_20__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %106

59:                                               ; preds = %54
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %62, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)** %68, align 8
  %70 = icmp ne i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)* %69, null
  br i1 %70, label %71, label %83

71:                                               ; preds = %59
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  %74 = load i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)*, i64 (i32, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__*)** %73, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %78 = load i64, i64* %11, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %82 = call i64 %74(i32 %76, %struct.TYPE_20__* %77, i32 %79, i32 %80, %struct.TYPE_19__* %81)
  store i64 %82, i64* %19, align 8
  br label %83

83:                                               ; preds = %71, %59
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i64, i64* %19, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %106

91:                                               ; preds = %83
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %93 = call i64 @find_unicode_charmap(%struct.TYPE_20__* %92)
  store i64 %93, i64* %20, align 8
  %94 = load i64, i64* %20, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64, i64* %20, align 8
  %98 = load i32, i32* @Invalid_CharMap_Handle, align 4
  %99 = call i64 @FT_ERR_NEQ(i64 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i64, i64* %20, align 8
  store i64 %102, i64* %19, align 8
  br label %106

103:                                              ; preds = %96, %91
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %105 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* %104, %struct.TYPE_20__** %105, align 8
  br label %106

106:                                              ; preds = %103, %101, %90, %58, %34
  %107 = load i64, i64* %19, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %106
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %111 = load i32, i32* %15, align 4
  %112 = call i32 @destroy_charmaps(%struct.TYPE_20__* %110, i32 %111)
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %114, align 8
  %116 = icmp ne i32 (%struct.TYPE_20__*)* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %109
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %119, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %122 = call i32 %120(%struct.TYPE_20__* %121)
  br label %123

123:                                              ; preds = %117, %109
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %125 = call i32 @FT_FREE(%struct.TYPE_20__* %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %127 = call i32 @FT_FREE(%struct.TYPE_20__* %126)
  %128 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %14, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %128, align 8
  br label %129

129:                                              ; preds = %123, %106
  %130 = load i64, i64* %19, align 8
  ret i64 %130
}

declare dso_local i64 @FT_ALLOC(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @FT_NEW(%struct.TYPE_20__*) #1

declare dso_local i64 @find_unicode_charmap(%struct.TYPE_20__*) #1

declare dso_local i64 @FT_ERR_NEQ(i64, i32) #1

declare dso_local i32 @destroy_charmaps(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @FT_FREE(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
