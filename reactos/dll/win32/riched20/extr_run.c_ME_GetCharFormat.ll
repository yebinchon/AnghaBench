; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_GetCharFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_run.c_ME_GetCharFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i64, i32, i64, i32 }

@diRunOrParagraph = common dso_local global i64 0, align 8
@diRun = common dso_local global i64 0, align 8
@CFM_SIZE = common dso_local global i32 0, align 4
@CFM_FACE = common dso_local global i32 0, align 4
@CFM_COLOR = common dso_local global i32 0, align 4
@CFM_UNDERLINETYPE = common dso_local global i32 0, align 4
@CFM_BOLD = common dso_local global i32 0, align 4
@CFM_ITALIC = common dso_local global i32 0, align 4
@CFM_UNDERLINE = common dso_local global i32 0, align 4
@CFM_STRIKEOUT = common dso_local global i32 0, align 4
@CFM_PROTECTED = common dso_local global i32 0, align 4
@CFM_LINK = common dso_local global i32 0, align 4
@CFM_SUPERSCRIPT = common dso_local global i32 0, align 4
@CFE_AUTOCOLOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ME_GetCharFormat(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_15__* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = icmp eq %struct.TYPE_14__* %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %40 = load i64, i64* @diRunOrParagraph, align 8
  %41 = call %struct.TYPE_14__* @ME_FindItemBack(%struct.TYPE_14__* %39, i64 %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %12, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @diRun, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = call i32 @ME_GetRunCharFormat(i32* %48, %struct.TYPE_14__* %49, %struct.TYPE_16__* %50)
  br label %259

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32*, i32** %5, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = call i32 @ME_GetRunCharFormat(i32* %54, %struct.TYPE_14__* %55, %struct.TYPE_16__* %56)
  br label %259

58:                                               ; preds = %25, %4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %10, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = load i64, i64* @diRun, align 8
  %69 = call %struct.TYPE_14__* @ME_FindItemBack(%struct.TYPE_14__* %67, i64 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %10, align 8
  br label %70

70:                                               ; preds = %66, %58
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %74 = call i32 @ME_GetRunCharFormat(i32* %71, %struct.TYPE_14__* %72, %struct.TYPE_16__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = icmp eq %struct.TYPE_14__* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %259

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %255, %79
  %81 = load i32, i32* @CFM_SIZE, align 4
  %82 = load i32, i32* @CFM_FACE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @CFM_COLOR, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @CFM_UNDERLINETYPE, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* @CFM_BOLD, align 4
  %89 = load i32, i32* @CFM_ITALIC, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @CFM_UNDERLINE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @CFM_STRIKEOUT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @CFM_PROTECTED, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @CFM_LINK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CFM_SUPERSCRIPT, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %14, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = load i64, i64* @diRun, align 8
  %103 = call %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__* %101, i64 %102)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %9, align 8
  %104 = call i32 @ZeroMemory(%struct.TYPE_16__* %11, i32 56)
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 56, i32* %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %108 = call i32 @ME_GetRunCharFormat(i32* %106, %struct.TYPE_14__* %107, %struct.TYPE_16__* %11)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert(i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %80
  %124 = load i32, i32* @CFM_SIZE, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %123, %80
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CFM_FACE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CFM_FACE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %150, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @CFM_FACE, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %173

150:                                              ; preds = %137
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @lstrcmpW(i32 %153, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %161, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %158, %150
  %166 = load i32, i32* @CFM_FACE, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %165, %158
  br label %173

173:                                              ; preds = %172, %143
  br label %174

174:                                              ; preds = %173, %130
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %177, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load i32, i32* @CFM_SIZE, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %181, %174
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %191, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load i32, i32* @CFM_UNDERLINETYPE, align 4
  %197 = xor i32 %196, -1
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, %197
  store i32 %201, i32* %199, align 4
  br label %202

202:                                              ; preds = %195, %188
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @CFM_COLOR, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %237

209:                                              ; preds = %202
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %214 = and i32 %212, %213
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %218 = and i32 %216, %217
  %219 = and i32 %214, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %236, label %221

221:                                              ; preds = %209
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 6
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %224, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %221
  %229 = load i32, i32* @CFM_COLOR, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %228, %221
  br label %236

236:                                              ; preds = %235, %209
  br label %237

237:                                              ; preds = %236, %202
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  %242 = load i32, i32* %241, align 8
  %243 = xor i32 %240, %242
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %243, %244
  %246 = xor i32 %245, -1
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 5
  store i32 %252, i32* %254, align 8
  br label %255

255:                                              ; preds = %237
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %258 = icmp ne %struct.TYPE_14__* %256, %257
  br i1 %258, label %80, label %259

259:                                              ; preds = %47, %53, %78, %255
  ret void
}

declare dso_local %struct.TYPE_14__* @ME_FindItemBack(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ME_GetRunCharFormat(i32*, %struct.TYPE_14__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @ME_FindItemFwd(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lstrcmpW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
