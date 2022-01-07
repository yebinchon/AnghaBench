; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_break_lines.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-font.c_ui_break_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_break_lines(i8* %0, %struct.line* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  store i8* %0, i8** %6, align 8
  store %struct.line* %1, %struct.line** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i8* null, i8** %12, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %13, align 8
  store i32 0, i32* %15, align 4
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %5
  br label %25

25:                                               ; preds = %177, %24
  %26 = load i8*, i8** %13, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %179

29:                                               ; preds = %25
  %30 = load i8*, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @fz_chartorune(i32* %14, i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 13
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %77

40:                                               ; preds = %37, %29
  %41 = load %struct.line*, %struct.line** %7, align 8
  %42 = icmp ne %struct.line* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.line*, %struct.line** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.line, %struct.line* %49, i64 %51
  %53 = getelementptr inbounds %struct.line, %struct.line* %52, i32 0, i32 0
  store i8* %48, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.line*, %struct.line** %7, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.line, %struct.line* %55, i64 %57
  %59 = getelementptr inbounds %struct.line, %struct.line* %58, i32 0, i32 1
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %47, %43, %40
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to float
  %69 = load float, float* %17, align 4
  %70 = fcmp olt float %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load float, float* %17, align 4
  %73 = fptosi float %72 to i32
  %74 = load i32*, i32** %10, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65, %60
  %76 = load i8*, i8** %11, align 8
  store i8* %76, i8** %6, align 8
  store float 0.000000e+00, float* %17, align 4
  store i8* null, i8** %12, align 8
  br label %177

77:                                               ; preds = %37
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %13, align 8
  store i8* %81, i8** %12, align 8
  %82 = load float, float* %17, align 4
  store float %82, float* %16, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %14, align 4
  %85 = call float @ui_measure_character(i32 %84)
  store float %85, float* %18, align 4
  %86 = load float, float* %17, align 4
  %87 = load float, float* %18, align 4
  %88 = fadd float %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = sitofp i32 %89 to float
  %91 = fcmp ogt float %88, %90
  br i1 %91, label %92, label %172

92:                                               ; preds = %83
  %93 = load i8*, i8** %12, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %133

95:                                               ; preds = %92
  %96 = load %struct.line*, %struct.line** %7, align 8
  %97 = icmp ne %struct.line* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = load %struct.line*, %struct.line** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.line, %struct.line* %104, i64 %106
  %108 = getelementptr inbounds %struct.line, %struct.line* %107, i32 0, i32 0
  store i8* %103, i8** %108, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.line*, %struct.line** %7, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.line, %struct.line* %110, i64 %112
  %114 = getelementptr inbounds %struct.line, %struct.line* %113, i32 0, i32 1
  store i8* %109, i8** %114, align 8
  br label %115

115:                                              ; preds = %102, %98, %95
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sitofp i32 %122 to float
  %124 = load float, float* %16, align 4
  %125 = fcmp olt float %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %120
  %127 = load float, float* %16, align 4
  %128 = fptosi float %127 to i32
  %129 = load i32*, i32** %10, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %120, %115
  %131 = load i8*, i8** %12, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  store i8* %132, i8** %11, align 8
  store i8* %132, i8** %6, align 8
  store float 0.000000e+00, float* %17, align 4
  store i8* null, i8** %12, align 8
  br label %171

133:                                              ; preds = %92
  %134 = load %struct.line*, %struct.line** %7, align 8
  %135 = icmp ne %struct.line* %134, null
  br i1 %135, label %136, label %153

136:                                              ; preds = %133
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load i8*, i8** %6, align 8
  %142 = load %struct.line*, %struct.line** %7, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.line, %struct.line* %142, i64 %144
  %146 = getelementptr inbounds %struct.line, %struct.line* %145, i32 0, i32 0
  store i8* %141, i8** %146, align 8
  %147 = load i8*, i8** %13, align 8
  %148 = load %struct.line*, %struct.line** %7, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.line, %struct.line* %148, i64 %150
  %152 = getelementptr inbounds %struct.line, %struct.line* %151, i32 0, i32 1
  store i8* %147, i8** %152, align 8
  br label %153

153:                                              ; preds = %140, %136, %133
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to float
  %162 = load float, float* %17, align 4
  %163 = fcmp olt float %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load float, float* %17, align 4
  %166 = fptosi float %165 to i32
  %167 = load i32*, i32** %10, align 8
  store i32 %166, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %158, %153
  %169 = load i8*, i8** %13, align 8
  store i8* %169, i8** %6, align 8
  %170 = load float, float* %18, align 4
  store float %170, float* %17, align 4
  store i8* null, i8** %12, align 8
  br label %171

171:                                              ; preds = %168, %130
  br label %176

172:                                              ; preds = %83
  %173 = load float, float* %18, align 4
  %174 = load float, float* %17, align 4
  %175 = fadd float %174, %173
  store float %175, float* %17, align 4
  br label %176

176:                                              ; preds = %172, %171
  br label %177

177:                                              ; preds = %176, %75
  %178 = load i8*, i8** %11, align 8
  store i8* %178, i8** %13, align 8
  br label %25

179:                                              ; preds = %25
  %180 = load %struct.line*, %struct.line** %7, align 8
  %181 = icmp ne %struct.line* %180, null
  br i1 %181, label %182, label %199

182:                                              ; preds = %179
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load i8*, i8** %6, align 8
  %188 = load %struct.line*, %struct.line** %7, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.line, %struct.line* %188, i64 %190
  %192 = getelementptr inbounds %struct.line, %struct.line* %191, i32 0, i32 0
  store i8* %187, i8** %192, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = load %struct.line*, %struct.line** %7, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.line, %struct.line* %194, i64 %196
  %198 = getelementptr inbounds %struct.line, %struct.line* %197, i32 0, i32 1
  store i8* %193, i8** %198, align 8
  br label %199

199:                                              ; preds = %186, %182, %179
  %200 = load i32, i32* %15, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %15, align 4
  %202 = load i32*, i32** %10, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %205, align 4
  %207 = sitofp i32 %206 to float
  %208 = load float, float* %17, align 4
  %209 = fcmp olt float %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load float, float* %17, align 4
  %212 = fptosi float %211 to i32
  %213 = load i32*, i32** %10, align 8
  store i32 %212, i32* %213, align 4
  br label %214

214:                                              ; preds = %210, %204, %199
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = load i32, i32* %15, align 4
  br label %222

220:                                              ; preds = %214
  %221 = load i32, i32* %8, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  ret i32 %223
}

declare dso_local i32 @fz_chartorune(i32*, i8*) #1

declare dso_local float @ui_measure_character(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
