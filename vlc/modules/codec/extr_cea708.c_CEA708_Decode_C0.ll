; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_C0.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cea708.c_CEA708_Decode_C0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@CEA708_STATUS_OK = common dso_local global i32 0, align 4
@CEA708_STATUS_OUTPUT = common dso_local global i32 0, align 4
@CEA708_WA_DIRECTION_RTL = common dso_local global i32 0, align 4
@CEA708_STATUS_STARVING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[P16 %x]\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"[UNK %2.2x]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[C0 %x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @CEA708_Decode_C0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CEA708_Decode_C0(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* @CEA708_STATUS_OK, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %240 [
    i32 129, label %15
    i32 133, label %17
    i32 135, label %30
    i32 131, label %46
    i32 134, label %70
    i32 130, label %105
    i32 132, label %140
    i32 128, label %223
  ]

15:                                               ; preds = %2
  %16 = call i32 (...) @POP_COMMAND()
  br label %245

17:                                               ; preds = %2
  %18 = call i32 (...) @POP_COMMAND()
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* @CEA708_STATUS_OUTPUT, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %23, %17
  br label %245

30:                                               ; preds = %2
  %31 = call i32 (...) @POP_COMMAND()
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %245

39:                                               ; preds = %30
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = call i32 @CEA708_Window_Backward(%struct.TYPE_11__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %245

46:                                               ; preds = %2
  %47 = call i32 (...) @POP_COMMAND()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %245

55:                                               ; preds = %46
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = call i32 @CEA708_Window_ClearText(%struct.TYPE_11__* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  store i32 0, i32* %63, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %245

70:                                               ; preds = %2
  %71 = call i32 (...) @POP_COMMAND()
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  br label %245

79:                                               ; preds = %70
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CEA708_WA_DIRECTION_RTL, align 4
  %87 = icmp sle i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %79
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = call i32 @CEA708_Window_CarriageReturn(%struct.TYPE_11__* %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load i32, i32* @CEA708_STATUS_OUTPUT, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %88
  br label %104

104:                                              ; preds = %103, %79
  br label %245

105:                                              ; preds = %2
  %106 = call i32 (...) @POP_COMMAND()
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %245

114:                                              ; preds = %105
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CEA708_WA_DIRECTION_RTL, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %114
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = call i32 @CEA708_Window_CarriageReturn(%struct.TYPE_11__* %126)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load i32, i32* @CEA708_STATUS_OUTPUT, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %134, %123
  br label %139

139:                                              ; preds = %138, %114
  br label %245

140:                                              ; preds = %2
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @cea708_input_buffer_size(i32* %141)
  %143 = icmp sge i32 %142, 2
  br i1 %143, label %144, label %220

144:                                              ; preds = %140
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @cea708_input_buffer_peek(i32* %145, i32 1)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 32
  br i1 %148, label %149, label %177

149:                                              ; preds = %144
  %150 = load i32, i32* %6, align 4
  %151 = icmp sgt i32 %150, 23
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 3, i32* %7, align 4
  br label %164

153:                                              ; preds = %149
  %154 = load i32, i32* %6, align 4
  %155 = icmp sgt i32 %154, 15
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 2, i32* %7, align 4
  br label %163

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = icmp sgt i32 %158, 7
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 1, i32* %7, align 4
  br label %162

161:                                              ; preds = %157
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %160
  br label %163

163:                                              ; preds = %162, %156
  br label %164

164:                                              ; preds = %163, %152
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @cea708_input_buffer_size(i32* %165)
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 2, %167
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32, i32* @CEA708_STATUS_STARVING, align 4
  store i32 %171, i32* %3, align 4
  br label %250

172:                                              ; preds = %164
  %173 = call i32 (...) @POP_COMMAND()
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 1, %174
  %176 = call i32 @POP_ARGS(i32 %175)
  br label %219

177:                                              ; preds = %144
  %178 = load i32, i32* %6, align 4
  %179 = icmp sgt i32 %178, 127
  br i1 %179, label %180, label %201

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 160
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load i32, i32* %6, align 4
  %185 = icmp sgt i32 %184, 135
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 5, i32* %7, align 4
  br label %188

187:                                              ; preds = %183
  store i32 4, i32* %7, align 4
  br label %188

188:                                              ; preds = %187, %186
  %189 = load i32*, i32** %9, align 8
  %190 = call i32 @cea708_input_buffer_size(i32* %189)
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 2, %191
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @CEA708_STATUS_STARVING, align 4
  store i32 %195, i32* %3, align 4
  br label %250

196:                                              ; preds = %188
  %197 = call i32 (...) @POP_COMMAND()
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 1, %198
  %200 = call i32 @POP_ARGS(i32 %199)
  br label %218

201:                                              ; preds = %180, %177
  %202 = call i32 (...) @POP_COMMAND()
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @cea708_input_buffer_get(i32* %203)
  store i32 %204, i32* %6, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %201
  %212 = load i32, i32* %6, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = call i32 @CEA708_Decode_G2G3(i32 %212, %struct.TYPE_10__* %213)
  %215 = load i32, i32* %10, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %10, align 4
  br label %217

217:                                              ; preds = %211, %201
  br label %218

218:                                              ; preds = %217, %196
  br label %219

219:                                              ; preds = %218, %172
  br label %222

220:                                              ; preds = %140
  %221 = load i32, i32* @CEA708_STATUS_STARVING, align 4
  store i32 %221, i32* %3, align 4
  br label %250

222:                                              ; preds = %219
  br label %245

223:                                              ; preds = %2
  %224 = call i32 @REQUIRE_ARGS_AND_POP_COMMAND(i32 2)
  %225 = load i32*, i32** %9, align 8
  %226 = call i32 @cea708_input_buffer_get(i32* %225)
  %227 = shl i32 %226, 8
  store i32 %227, i32* %8, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = call i32 @cea708_input_buffer_get(i32* %228)
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %234 = call i32 @CEA708_Decode_P16(i32 %232, %struct.TYPE_10__* %233)
  %235 = load i32, i32* %10, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %237)
  %239 = call i32 @Debug(i32 %238)
  br label %245

240:                                              ; preds = %2
  %241 = call i32 (...) @POP_COMMAND()
  %242 = load i32, i32* %4, align 4
  %243 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %242)
  %244 = call i32 @Debug(i32 %243)
  br label %245

245:                                              ; preds = %240, %223, %222, %139, %113, %104, %78, %55, %54, %39, %38, %29, %15
  %246 = load i32, i32* %4, align 4
  %247 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %246)
  %248 = call i32 @Debug(i32 %247)
  %249 = load i32, i32* %10, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %245, %220, %194, %170
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @POP_COMMAND(...) #1

declare dso_local i32 @CEA708_Window_Backward(%struct.TYPE_11__*) #1

declare dso_local i32 @CEA708_Window_ClearText(%struct.TYPE_11__*) #1

declare dso_local i32 @CEA708_Window_CarriageReturn(%struct.TYPE_11__*) #1

declare dso_local i32 @cea708_input_buffer_size(i32*) #1

declare dso_local i32 @cea708_input_buffer_peek(i32*, i32) #1

declare dso_local i32 @POP_ARGS(i32) #1

declare dso_local i32 @cea708_input_buffer_get(i32*) #1

declare dso_local i32 @CEA708_Decode_G2G3(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @REQUIRE_ARGS_AND_POP_COMMAND(i32) #1

declare dso_local i32 @CEA708_Decode_P16(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @Debug(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
