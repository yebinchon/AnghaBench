; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_set_op_from_spaces.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_draw-device.c_set_op_from_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*, i32*, i32)* @set_op_from_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_op_from_spaces(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %261

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @fz_colorspace_is_subtractive(i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @fz_colorspace_is_subtractive(i32* %33, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32, %27
  store i32* null, i32** %6, align 8
  br label %261

40:                                               ; preds = %32
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @fz_colorspace_n(i32* %41, i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %51, %54
  store i32 %55, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %56

56:                                               ; preds = %140, %40
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %143

60:                                               ; preds = %56
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i8* @fz_colorspace_colorant(i32* %61, i32* %62, i32 %63)
  store i8* %64, i8** %17, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %143

68:                                               ; preds = %60
  %69 = load i8*, i8** %17, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %17, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72, %68
  br label %140

77:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %99, %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %102

82:                                               ; preds = %78
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i8* @fz_colorspace_colorant(i32* %83, i32* %86, i32 %87)
  store i8* %88, i8** %18, align 8
  %89 = load i8*, i8** %18, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %99

92:                                               ; preds = %82
  %93 = load i8*, i8** %18, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = call i32 @strcmp(i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %102

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %91
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %78

102:                                              ; preds = %97, %78
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  br label %140

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %131, %107
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i8* @fz_separation_name(i32* %113, i32 %116, i32 %119)
  store i8* %120, i8** %19, align 8
  %121 = load i8*, i8** %19, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %112
  br label %131

124:                                              ; preds = %112
  %125 = load i8*, i8** %19, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = call i32 @strcmp(i8* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %124
  br label %134

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %123
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %108

134:                                              ; preds = %129, %108
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %143

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %106, %76
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %56

143:                                              ; preds = %138, %67, %56
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %202

147:                                              ; preds = %143
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %198, %147
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %201

152:                                              ; preds = %148
  %153 = load i32*, i32** %7, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i8* @fz_colorspace_colorant(i32* %153, i32* %156, i32 %157)
  store i8* %158, i8** %20, align 8
  store i32 0, i32* %15, align 4
  br label %159

159:                                              ; preds = %186, %152
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %189

163:                                              ; preds = %159
  %164 = load i32*, i32** %7, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i8* @fz_colorspace_colorant(i32* %164, i32* %165, i32 %166)
  store i8* %167, i8** %21, align 8
  %168 = load i8*, i8** %20, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i8*, i8** %21, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %170, %163
  br label %186

174:                                              ; preds = %170
  %175 = load i8*, i8** %20, align 8
  %176 = load i8*, i8** %21, align 8
  %177 = call i32 @strcmp(i8* %175, i8* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  br label %189

180:                                              ; preds = %174
  %181 = load i8*, i8** %21, align 8
  %182 = call i32 @strcmp(i8* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  br label %189

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* %15, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %159

189:                                              ; preds = %184, %179, %159
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %189
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @fz_set_overprint(i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %189
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %14, align 4
  br label %148

201:                                              ; preds = %148
  br label %202

202:                                              ; preds = %201, %143
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %256, %202
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %259

208:                                              ; preds = %204
  %209 = load i32*, i32** %7, align 8
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i8* @fz_separation_name(i32* %209, i32 %212, i32 %215)
  store i8* %216, i8** %22, align 8
  store i32 0, i32* %15, align 4
  br label %217

217:                                              ; preds = %244, %208
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %247

221:                                              ; preds = %217
  %222 = load i32*, i32** %7, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call i8* @fz_colorspace_colorant(i32* %222, i32* %223, i32 %224)
  store i8* %225, i8** %23, align 8
  %226 = load i8*, i8** %22, align 8
  %227 = icmp ne i8* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load i8*, i8** %23, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %232, label %231

231:                                              ; preds = %228, %221
  br label %244

232:                                              ; preds = %228
  %233 = load i8*, i8** %22, align 8
  %234 = load i8*, i8** %23, align 8
  %235 = call i32 @strcmp(i8* %233, i8* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %232
  br label %247

238:                                              ; preds = %232
  %239 = load i8*, i8** %23, align 8
  %240 = call i32 @strcmp(i8* %239, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  br label %247

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243, %231
  %245 = load i32, i32* %15, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %15, align 4
  br label %217

247:                                              ; preds = %242, %237, %217
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load i32*, i32** %8, align 8
  %253 = load i32, i32* %14, align 4
  %254 = call i32 @fz_set_overprint(i32* %252, i32 %253)
  br label %255

255:                                              ; preds = %251, %247
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %204

259:                                              ; preds = %204
  %260 = load i32*, i32** %8, align 8
  store i32* %260, i32** %6, align 8
  br label %261

261:                                              ; preds = %259, %39, %26
  %262 = load i32*, i32** %6, align 8
  ret i32* %262
}

declare dso_local i32 @fz_colorspace_is_subtractive(i32*, i32*) #1

declare dso_local i32 @fz_colorspace_n(i32*, i32*) #1

declare dso_local i8* @fz_colorspace_colorant(i32*, i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @fz_separation_name(i32*, i32, i32) #1

declare dso_local i32 @fz_set_overprint(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
