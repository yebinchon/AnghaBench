; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_FindRunInRow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_FindRunInRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_16__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, i8*, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@diRunOrStartRow = common dso_local global i64 0, align 8
@diRun = common dso_local global i64 0, align 8
@MERF_ENDPARA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32*)* @ME_FindRunInRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_FindRunInRow(i32* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_18__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %14, align 8
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %28, %5
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = load i64, i64* @diRunOrStartRow, align 8
  %37 = call i8* @ME_FindItemFwd(%struct.TYPE_17__* %35, i64 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %12, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @diRun, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %34
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %113, %51
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %16, align 4
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = call i64 @ME_CharFromPoint(i32* %76, i32 %79, %struct.TYPE_12__* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = call i8* @ME_GetParagraph(%struct.TYPE_17__* %93)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %6, align 4
  br label %149

98:                                               ; preds = %69, %54
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %99, %struct.TYPE_17__** %13, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %101 = load i64, i64* @diRunOrStartRow, align 8
  %102 = call i8* @ME_FindItemFwd(%struct.TYPE_17__* %100, i64 %101)
  %103 = bitcast i8* %102 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %12, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %106 = icmp ne %struct.TYPE_17__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @diRun, align 8
  %112 = icmp eq i64 %110, %111
  br label %113

113:                                              ; preds = %107, %104
  %114 = phi i1 [ false, %104 ], [ %112, %107 ]
  br i1 %114, label %54, label %115

115:                                              ; preds = %113
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MERF_ENDPARA, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %115
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %126 = load i64, i64* @diRun, align 8
  %127 = call i8* @ME_FindItemFwd(%struct.TYPE_17__* %125, i64 %126)
  %128 = bitcast i8* %127 to %struct.TYPE_17__*
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  store %struct.TYPE_17__* %128, %struct.TYPE_17__** %130, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* @TRUE, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %124
  br label %141

137:                                              ; preds = %115
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %140, align 8
  br label %141

141:                                              ; preds = %137, %136
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = call i8* @ME_GetParagraph(%struct.TYPE_17__* %144)
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 1
  store i8* %145, i8** %147, align 8
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %141, %75
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i8* @ME_FindItemFwd(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ME_CharFromPoint(i32*, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @ME_GetParagraph(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
