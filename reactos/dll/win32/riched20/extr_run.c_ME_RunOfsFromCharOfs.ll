; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_RunOfsFromCharOfs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_RunOfsFromCharOfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_24__* }

@diParagraph = common dso_local global i64 0, align 8
@diRun = common dso_local global i64 0, align 8
@diRunOrParagraphOrEnd = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_RunOfsFromCharOfs(%struct.TYPE_23__* %0, i32 %1, %struct.TYPE_24__** %2, %struct.TYPE_24__** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__** %3, %struct.TYPE_24__*** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %17 = call i32 @ME_GetTextLength(%struct.TYPE_23__* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @max(i32 %18, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @min(i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %30, align 8
  store %struct.TYPE_24__* %31, %struct.TYPE_24__** %12, align 8
  br label %32

32:                                               ; preds = %39, %5
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %11, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %12, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %32, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @diParagraph, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %63 = icmp ne %struct.TYPE_24__** %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %47
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %66 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  store %struct.TYPE_24__* %65, %struct.TYPE_24__** %66, align 8
  br label %67

67:                                               ; preds = %64, %47
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %69 = load i64, i64* @diRun, align 8
  %70 = call %struct.TYPE_24__* @ME_FindItemFwd(%struct.TYPE_24__* %68, i64 %69)
  store %struct.TYPE_24__* %70, %struct.TYPE_24__** %12, align 8
  br label %71

71:                                               ; preds = %90, %67
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %72, %struct.TYPE_24__** %11, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %74 = load i64, i64* @diRunOrParagraphOrEnd, align 8
  %75 = call %struct.TYPE_24__* @ME_FindItemFwd(%struct.TYPE_24__* %73, i64 %74)
  store %struct.TYPE_24__* %75, %struct.TYPE_24__** %12, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @diRun, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = icmp sle i32 %87, %88
  br label %90

90:                                               ; preds = %82, %76
  %91 = phi i1 [ false, %76 ], [ %89, %82 ]
  br i1 %91, label %71, label %92

92:                                               ; preds = %90
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @diRun, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %108 = icmp ne %struct.TYPE_24__** %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %92
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %111 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %111, align 8
  br label %112

112:                                              ; preds = %109, %92
  %113 = load i32*, i32** %10, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %141

115:                                              ; preds = %112
  %116 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MERF_ENDPARA, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %115
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125
  %130 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** %10, align 8
  store i32 %135, i32* %136, align 4
  br label %140

137:                                              ; preds = %125, %115
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %129
  br label %141

141:                                              ; preds = %140, %112
  ret void
}

declare dso_local i32 @ME_GetTextLength(%struct.TYPE_23__*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_24__* @ME_FindItemFwd(%struct.TYPE_24__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
