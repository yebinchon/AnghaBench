; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_copy_tile_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tcd.c_opj_tcd_copy_tile_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8**, i64, i64, i64, i64 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_tcd_copy_tile_data(%struct.TYPE_13__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call i64 @opj_tcd_get_encoded_tile_size(%struct.TYPE_13__* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %28, i32* %4, align 4
  br label %211

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %12, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %206, %29
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %43, %48
  br i1 %49, label %50, label %209

50:                                               ; preds = %42
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 3
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %13, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 7
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %14, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = mul nsw i64 %67, %74
  store i64 %75, i64* %15, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %50
  %79 = load i64, i64* %13, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %78, %50
  %82 = load i64, i64* %13, align 8
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i64 4, i64* %13, align 8
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i64, i64* %13, align 8
  switch i64 %86, label %201 [
    i64 1, label %87
    i64 2, label %133
    i64 4, label %179
  ]

87:                                               ; preds = %85
  %88 = load i32*, i32** %6, align 8
  store i32* %88, i32** %16, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  store i8** %91, i8*** %17, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %87
  store i64 0, i64* %9, align 8
  br label %97

97:                                               ; preds = %109, %96
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %15, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32*, i32** %16, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %16, align 8
  %104 = load i32, i32* %102, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8**, i8*** %17, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i32 1
  store i8** %108, i8*** %17, align 8
  store i8* %106, i8** %107, align 8
  br label %109

109:                                              ; preds = %101
  %110 = load i64, i64* %9, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %97

112:                                              ; preds = %97
  br label %131

113:                                              ; preds = %87
  store i64 0, i64* %9, align 8
  br label %114

114:                                              ; preds = %127, %113
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = icmp slt i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i32*, i32** %16, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %16, align 8
  %121 = load i32, i32* %119, align 4
  %122 = and i32 %121, 255
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8**, i8*** %17, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %17, align 8
  store i8* %124, i8** %125, align 8
  br label %127

127:                                              ; preds = %118
  %128 = load i64, i64* %9, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %9, align 8
  br label %114

130:                                              ; preds = %114
  br label %131

131:                                              ; preds = %130, %112
  %132 = load i32*, i32** %16, align 8
  store i32* %132, i32** %6, align 8
  br label %201

133:                                              ; preds = %85
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  store i8** %136, i8*** %18, align 8
  %137 = load i32*, i32** %6, align 8
  store i32* %137, i32** %19, align 8
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %159

142:                                              ; preds = %133
  store i64 0, i64* %9, align 8
  br label %143

143:                                              ; preds = %155, %142
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %15, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load i32*, i32** %19, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %19, align 8
  %150 = load i32, i32* %148, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = load i8**, i8*** %18, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i32 1
  store i8** %154, i8*** %18, align 8
  store i8* %152, i8** %153, align 8
  br label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %9, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %9, align 8
  br label %143

158:                                              ; preds = %143
  br label %177

159:                                              ; preds = %133
  store i64 0, i64* %9, align 8
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* %15, align 8
  %163 = icmp slt i64 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i32*, i32** %19, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %19, align 8
  %167 = load i32, i32* %165, align 4
  %168 = and i32 %167, 65535
  %169 = sext i32 %168 to i64
  %170 = inttoptr i64 %169 to i8*
  %171 = load i8**, i8*** %18, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %18, align 8
  store i8* %170, i8** %171, align 8
  br label %173

173:                                              ; preds = %164
  %174 = load i64, i64* %9, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %9, align 8
  br label %160

176:                                              ; preds = %160
  br label %177

177:                                              ; preds = %176, %158
  %178 = load i32*, i32** %19, align 8
  store i32* %178, i32** %6, align 8
  br label %201

179:                                              ; preds = %85
  %180 = load i32*, i32** %6, align 8
  %181 = bitcast i32* %180 to i8**
  store i8** %181, i8*** %20, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i8**, i8*** %183, align 8
  store i8** %184, i8*** %21, align 8
  store i64 0, i64* %9, align 8
  br label %185

185:                                              ; preds = %195, %179
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %15, align 8
  %188 = icmp slt i64 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i8**, i8*** %20, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i32 1
  store i8** %191, i8*** %20, align 8
  %192 = load i8*, i8** %190, align 8
  %193 = load i8**, i8*** %21, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %21, align 8
  store i8* %192, i8** %193, align 8
  br label %195

195:                                              ; preds = %189
  %196 = load i64, i64* %9, align 8
  %197 = add nsw i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %185

198:                                              ; preds = %185
  %199 = load i8**, i8*** %20, align 8
  %200 = bitcast i8** %199 to i32*
  store i32* %200, i32** %6, align 8
  br label %201

201:                                              ; preds = %85, %198, %177, %131
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 1
  store %struct.TYPE_14__* %203, %struct.TYPE_14__** %11, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 1
  store %struct.TYPE_12__* %205, %struct.TYPE_12__** %12, align 8
  br label %206

206:                                              ; preds = %201
  %207 = load i64, i64* %8, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %8, align 8
  br label %42

209:                                              ; preds = %42
  %210 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %27
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i64 @opj_tcd_get_encoded_tile_size(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
