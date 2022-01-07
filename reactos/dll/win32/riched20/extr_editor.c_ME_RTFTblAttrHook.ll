; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFTblAttrHook.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_RTFTblAttrHook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_12__*, i8*, %struct.TYPE_20__* }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32* }

@RTFBorderRowTop = common dso_local global i8* null, align 8
@MAX_TABLE_CELLS = common dso_local global i32 0, align 4
@MAX_TAB_STOPS = common dso_local global i32 0, align 4
@RTFBorderRowLeft = common dso_local global i8* null, align 8
@RTFBorderRowBottom = common dso_local global i8* null, align 8
@RTFBorderRowRight = common dso_local global i8* null, align 8
@RTFBorderCellTop = common dso_local global i8* null, align 8
@RTFBorderCellLeft = common dso_local global i8* null, align 8
@RTFBorderCellBottom = common dso_local global i8* null, align 8
@RTFBorderCellRight = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_RTFTblAttrHook(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %184 [
    i32 130, label %9
    i32 135, label %45
    i32 131, label %124
    i32 133, label %128
    i32 134, label %132
    i32 132, label %136
    i32 136, label %140
    i32 138, label %144
    i32 139, label %148
    i32 137, label %152
    i32 129, label %156
    i32 128, label %170
  ]

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 3
  store i8* null, i8** %18, align 8
  br label %23

19:                                               ; preds = %9
  %20 = load i8*, i8** @RTFBorderRowTop, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = call i8* @ME_MakeTableDef(%struct.TYPE_20__* %31)
  %33 = bitcast i8* %32 to %struct.TYPE_12__*
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  br label %44

36:                                               ; preds = %23
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 @ME_InitTableDef(%struct.TYPE_20__* %39, %struct.TYPE_12__* %42)
  br label %44

44:                                               ; preds = %36, %28
  br label %184

45:                                               ; preds = %1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = call i8* @ME_MakeTableDef(%struct.TYPE_20__* %53)
  %55 = bitcast i8* %54 to %struct.TYPE_12__*
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %57, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @MAX_TABLE_CELLS, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %184

68:                                               ; preds = %58
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  store i32 %71, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @MAX_TAB_STOPS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %117

84:                                               ; preds = %68
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  store %struct.TYPE_19__* %92, %struct.TYPE_19__** %4, align 8
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %5, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, -16777216
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = and i32 16777215, %107
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %108
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %84, %68
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  br label %184

124:                                              ; preds = %1
  %125 = load i8*, i8** @RTFBorderRowTop, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  br label %184

128:                                              ; preds = %1
  %129 = load i8*, i8** @RTFBorderRowLeft, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %184

132:                                              ; preds = %1
  %133 = load i8*, i8** @RTFBorderRowBottom, align 8
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %184

136:                                              ; preds = %1
  %137 = load i8*, i8** @RTFBorderRowRight, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %184

140:                                              ; preds = %1
  %141 = load i8*, i8** @RTFBorderCellTop, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  store i8* %141, i8** %143, align 8
  br label %184

144:                                              ; preds = %1
  %145 = load i8*, i8** @RTFBorderCellLeft, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  store i8* %145, i8** %147, align 8
  br label %184

148:                                              ; preds = %1
  %149 = load i8*, i8** @RTFBorderCellBottom, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  br label %184

152:                                              ; preds = %1
  %153 = load i8*, i8** @RTFBorderCellRight, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  br label %184

156:                                              ; preds = %1
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = icmp ne %struct.TYPE_12__* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  store i32 %164, i32* %168, align 4
  br label %169

169:                                              ; preds = %161, %156
  br label %184

170:                                              ; preds = %1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = icmp ne %struct.TYPE_12__* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  store i32 %178, i32* %182, align 8
  br label %183

183:                                              ; preds = %175, %170
  br label %184

184:                                              ; preds = %1, %183, %169, %152, %148, %144, %140, %136, %132, %128, %124, %117, %67, %44
  ret void
}

declare dso_local i8* @ME_MakeTableDef(%struct.TYPE_20__*) #1

declare dso_local i32 @ME_InitTableDef(%struct.TYPE_20__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
