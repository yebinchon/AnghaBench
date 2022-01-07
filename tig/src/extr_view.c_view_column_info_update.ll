; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_column_info_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_column_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32, i32, %struct.view_column*, %struct.TYPE_12__* }
%struct.view_column = type { i32, i32, %struct.TYPE_11__, %struct.view_column* }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.view*, %struct.line*, %struct.view_column_data*)* }
%struct.view_column_data = type { i32*, i32, i32 }
%struct.line = type { i32 }

@opt_id_width = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @view_column_info_update(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca %struct.view_column_data, align 8
  %7 = alloca %struct.view_column*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  %12 = bitcast %struct.view_column_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %13 = load %struct.view*, %struct.view** %4, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32 (%struct.view*, %struct.line*, %struct.view_column_data*)*, i32 (%struct.view*, %struct.line*, %struct.view_column_data*)** %16, align 8
  %18 = load %struct.view*, %struct.view** %4, align 8
  %19 = load %struct.line*, %struct.line** %5, align 8
  %20 = call i32 %17(%struct.view* %18, %struct.line* %19, %struct.view_column_data* %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %200

23:                                               ; preds = %2
  %24 = load %struct.view*, %struct.view** %4, align 8
  %25 = getelementptr inbounds %struct.view, %struct.view* %24, i32 0, i32 2
  %26 = load %struct.view_column*, %struct.view_column** %25, align 8
  store %struct.view_column* %26, %struct.view_column** %7, align 8
  br label %27

27:                                               ; preds = %188, %23
  %28 = load %struct.view_column*, %struct.view_column** %7, align 8
  %29 = icmp ne %struct.view_column* %28, null
  br i1 %29, label %30, label %192

30:                                               ; preds = %27
  %31 = load %struct.view*, %struct.view** %4, align 8
  %32 = load %struct.view_column*, %struct.view_column** %7, align 8
  %33 = call i8* @view_column_text(%struct.view* %31, %struct.view_column_data* %6, %struct.view_column* %32)
  store i8* %33, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %34 = load %struct.view_column*, %struct.view_column** %7, align 8
  %35 = getelementptr inbounds %struct.view_column, %struct.view_column* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %157 [
    i32 139, label %37
    i32 138, label %54
    i32 137, label %55
    i32 136, label %61
    i32 135, label %78
    i32 134, label %84
    i32 133, label %103
    i32 132, label %131
    i32 131, label %137
    i32 130, label %154
    i32 129, label %155
    i32 128, label %156
  ]

37:                                               ; preds = %30
  %38 = load %struct.view_column*, %struct.view_column** %7, align 8
  %39 = getelementptr inbounds %struct.view_column, %struct.view_column* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.view_column*, %struct.view_column** %7, align 8
  %47 = getelementptr inbounds %struct.view_column, %struct.view_column* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  br label %52

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i32 [ %50, %45 ], [ 0, %51 ]
  store i32 %53, i32* %11, align 4
  br label %157

54:                                               ; preds = %30
  br label %157

55:                                               ; preds = %30
  %56 = load %struct.view_column*, %struct.view_column** %7, align 8
  %57 = getelementptr inbounds %struct.view_column, %struct.view_column* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  br label %157

61:                                               ; preds = %30
  %62 = load %struct.view_column*, %struct.view_column** %7, align 8
  %63 = getelementptr inbounds %struct.view_column, %struct.view_column* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.view_column*, %struct.view_column** %7, align 8
  %71 = getelementptr inbounds %struct.view_column, %struct.view_column* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %69
  %77 = phi i32 [ %74, %69 ], [ 0, %75 ]
  store i32 %77, i32* %11, align 4
  br label %157

78:                                               ; preds = %30
  %79 = load %struct.view_column*, %struct.view_column** %7, align 8
  %80 = getelementptr inbounds %struct.view_column, %struct.view_column* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %10, align 4
  br label %157

84:                                               ; preds = %30
  %85 = load %struct.view_column*, %struct.view_column** %7, align 8
  %86 = getelementptr inbounds %struct.view_column, %struct.view_column* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* @opt_id_width, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %84
  %95 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %6, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 7, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %98, %94
  br label %157

103:                                              ; preds = %30
  %104 = load %struct.view_column*, %struct.view_column** %7, align 8
  %105 = getelementptr inbounds %struct.view_column, %struct.view_column* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %6, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.view_column_data, %struct.view_column_data* %6, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @count_digits(i32 %118)
  store i32 %119, i32* %10, align 4
  br label %125

120:                                              ; preds = %111
  %121 = load %struct.view*, %struct.view** %4, align 8
  %122 = getelementptr inbounds %struct.view, %struct.view* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @count_digits(i32 %123)
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %103
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 3, i32* %10, align 4
  br label %130

130:                                              ; preds = %129, %126
  br label %157

131:                                              ; preds = %30
  %132 = load %struct.view_column*, %struct.view_column** %7, align 8
  %133 = getelementptr inbounds %struct.view_column, %struct.view_column* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %10, align 4
  br label %157

137:                                              ; preds = %30
  %138 = load %struct.view_column*, %struct.view_column** %7, align 8
  %139 = getelementptr inbounds %struct.view_column, %struct.view_column* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.view_column*, %struct.view_column** %7, align 8
  %147 = getelementptr inbounds %struct.view_column, %struct.view_column* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  br label %152

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %145
  %153 = phi i32 [ %150, %145 ], [ 0, %151 ]
  store i32 %153, i32* %11, align 4
  br label %157

154:                                              ; preds = %30
  br label %157

155:                                              ; preds = %30
  br label %157

156:                                              ; preds = %30
  br label %157

157:                                              ; preds = %30, %156, %155, %154, %152, %131, %130, %102, %78, %76, %55, %54, %52
  %158 = load i8*, i8** %9, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @utf8_width(i8* %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %165, %162, %157
  %169 = load i32, i32* %11, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %175, %171, %168
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.view_column*, %struct.view_column** %7, align 8
  %180 = getelementptr inbounds %struct.view_column, %struct.view_column* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.view_column*, %struct.view_column** %7, align 8
  %186 = getelementptr inbounds %struct.view_column, %struct.view_column* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  store i32 1, i32* %8, align 4
  br label %187

187:                                              ; preds = %183, %177
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.view_column*, %struct.view_column** %7, align 8
  %190 = getelementptr inbounds %struct.view_column, %struct.view_column* %189, i32 0, i32 3
  %191 = load %struct.view_column*, %struct.view_column** %190, align 8
  store %struct.view_column* %191, %struct.view_column** %7, align 8
  br label %27

192:                                              ; preds = %27
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.view*, %struct.view** %4, align 8
  %197 = getelementptr inbounds %struct.view, %struct.view* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %198, %22
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @view_column_text(%struct.view*, %struct.view_column_data*, %struct.view_column*) #2

declare dso_local i32 @count_digits(i32) #2

declare dso_local i32 @utf8_width(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
