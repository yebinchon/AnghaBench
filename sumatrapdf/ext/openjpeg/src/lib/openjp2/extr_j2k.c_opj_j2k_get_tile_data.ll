; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_get_tile_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_get_tile_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @opj_j2k_get_tile_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opj_j2k_get_tile_data(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %225, %2
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  br i1 %30, label %31, label %228

31:                                               ; preds = %23
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %10, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %47
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %11, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = call i32 @opj_get_tile_dimensions(%struct.TYPE_12__* %49, i32* %50, %struct.TYPE_13__* %51, i64* %12, i64* %13, i64* %14, i64* %15, i64* %16, i64* %17, i64* %18, i64* %19)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %19, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %9, align 8
  %58 = load i64, i64* %12, align 8
  switch i64 %58, label %224 [
    i64 1, label %59
    i64 2, label %126
    i64 4, label %195
  ]

59:                                               ; preds = %31
  %60 = load i32*, i32** %4, align 8
  store i32* %60, i32** %20, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %90, %65
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %14, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  store i64 0, i64* %7, align 8
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %13, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %20, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %20, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %71

86:                                               ; preds = %71
  %87 = load i64, i64* %18, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %66

93:                                               ; preds = %66
  br label %124

94:                                               ; preds = %59
  store i64 0, i64* %6, align 8
  br label %95

95:                                               ; preds = %120, %94
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp slt i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  store i64 0, i64* %7, align 8
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %20, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %20, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %20, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  br label %113

113:                                              ; preds = %104
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %100

116:                                              ; preds = %100
  %117 = load i64, i64* %18, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 %117
  store i32* %119, i32** %9, align 8
  br label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %6, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %6, align 8
  br label %95

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %93
  %125 = load i32*, i32** %20, align 8
  store i32* %125, i32** %4, align 8
  br label %224

126:                                              ; preds = %31
  %127 = load i32*, i32** %4, align 8
  %128 = bitcast i32* %127 to i8**
  store i8** %128, i8*** %21, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %162

133:                                              ; preds = %126
  store i64 0, i64* %6, align 8
  br label %134

134:                                              ; preds = %158, %133
  %135 = load i64, i64* %6, align 8
  %136 = load i64, i64* %14, align 8
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %134
  store i64 0, i64* %7, align 8
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i64, i64* %7, align 8
  %141 = load i64, i64* %13, align 8
  %142 = icmp slt i64 %140, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %9, align 8
  %146 = load i32, i32* %144, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = load i8**, i8*** %21, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i32 1
  store i8** %150, i8*** %21, align 8
  store i8* %148, i8** %149, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %7, align 8
  br label %139

154:                                              ; preds = %139
  %155 = load i64, i64* %18, align 8
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 %155
  store i32* %157, i32** %9, align 8
  br label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %6, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %6, align 8
  br label %134

161:                                              ; preds = %134
  br label %192

162:                                              ; preds = %126
  store i64 0, i64* %6, align 8
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i64, i64* %6, align 8
  %165 = load i64, i64* %14, align 8
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %167, label %191

167:                                              ; preds = %163
  store i64 0, i64* %7, align 8
  br label %168

168:                                              ; preds = %181, %167
  %169 = load i64, i64* %7, align 8
  %170 = load i64, i64* %13, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %9, align 8
  %175 = load i32, i32* %173, align 4
  %176 = and i32 %175, 65535
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = load i8**, i8*** %21, align 8
  %180 = getelementptr inbounds i8*, i8** %179, i32 1
  store i8** %180, i8*** %21, align 8
  store i8* %178, i8** %179, align 8
  br label %181

181:                                              ; preds = %172
  %182 = load i64, i64* %7, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %7, align 8
  br label %168

184:                                              ; preds = %168
  %185 = load i64, i64* %18, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %9, align 8
  br label %188

188:                                              ; preds = %184
  %189 = load i64, i64* %6, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %6, align 8
  br label %163

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191, %161
  %193 = load i8**, i8*** %21, align 8
  %194 = bitcast i8** %193 to i32*
  store i32* %194, i32** %4, align 8
  br label %224

195:                                              ; preds = %31
  %196 = load i32*, i32** %4, align 8
  store i32* %196, i32** %22, align 8
  store i64 0, i64* %6, align 8
  br label %197

197:                                              ; preds = %219, %195
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %14, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %197
  store i64 0, i64* %7, align 8
  br label %202

202:                                              ; preds = %212, %201
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* %13, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %202
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 1
  store i32* %208, i32** %9, align 8
  %209 = load i32, i32* %207, align 4
  %210 = load i32*, i32** %22, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %22, align 8
  store i32 %209, i32* %210, align 4
  br label %212

212:                                              ; preds = %206
  %213 = load i64, i64* %7, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %7, align 8
  br label %202

215:                                              ; preds = %202
  %216 = load i64, i64* %18, align 8
  %217 = load i32*, i32** %9, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  store i32* %218, i32** %9, align 8
  br label %219

219:                                              ; preds = %215
  %220 = load i64, i64* %6, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %6, align 8
  br label %197

222:                                              ; preds = %197
  %223 = load i32*, i32** %22, align 8
  store i32* %223, i32** %4, align 8
  br label %224

224:                                              ; preds = %31, %222, %192, %124
  br label %225

225:                                              ; preds = %224
  %226 = load i64, i64* %5, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* %5, align 8
  br label %23

228:                                              ; preds = %23
  ret void
}

declare dso_local i32 @opj_get_tile_dimensions(%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, i64*, i64*, i64*, i64*, i64*, i64*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
