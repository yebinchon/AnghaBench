; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_karatsuba_mul.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_mpi.c_mp_karatsuba_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }

@MP_MEM = common dso_local global i32 0, align 4
@MP_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_karatsuba_mul(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_18__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  %21 = load i32, i32* @MP_MEM, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MIN(i32 %24, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @mp_init_size(%struct.TYPE_18__* %7, i32 %31)
  %33 = load i32, i32* @MP_OKAY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %242

36:                                               ; preds = %3
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sub nsw i32 %39, %40
  %42 = call i32 @mp_init_size(%struct.TYPE_18__* %8, i32 %41)
  %43 = load i32, i32* @MP_OKAY, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %240

46:                                               ; preds = %36
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @mp_init_size(%struct.TYPE_18__* %9, i32 %47)
  %49 = load i32, i32* @MP_OKAY, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %238

52:                                               ; preds = %46
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @mp_init_size(%struct.TYPE_18__* %10, i32 %57)
  %59 = load i32, i32* @MP_OKAY, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %236

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = mul nsw i32 %63, 2
  %65 = call i32 @mp_init_size(%struct.TYPE_18__* %11, i32 %64)
  %66 = load i32, i32* @MP_OKAY, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %234

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = mul nsw i32 %70, 2
  %72 = call i32 @mp_init_size(%struct.TYPE_18__* %12, i32 %71)
  %73 = load i32, i32* @MP_OKAY, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %232

76:                                               ; preds = %69
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 %77, 2
  %79 = call i32 @mp_init_size(%struct.TYPE_18__* %13, i32 %78)
  %80 = load i32, i32* @MP_OKAY, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %230

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %84, i32* %85, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sub nsw i32 %89, %90
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sub nsw i32 %95, %96
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %17, align 8
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %19, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %20, align 8
  store i32 0, i32* %16, align 4
  br label %109

109:                                              ; preds = %124, %83
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32*, i32** %17, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %17, align 8
  %116 = load i32, i32* %114, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %19, align 8
  store i32 %116, i32* %117, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %18, align 8
  %121 = load i32, i32* %119, align 4
  %122 = load i32*, i32** %20, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %20, align 8
  store i32 %121, i32* %122, align 4
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %109

127:                                              ; preds = %109
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %19, align 8
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %16, align 4
  br label %131

131:                                              ; preds = %143, %127
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32*, i32** %17, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %17, align 8
  %140 = load i32, i32* %138, align 4
  %141 = load i32*, i32** %19, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %19, align 8
  store i32 %140, i32* %141, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %16, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %131

146:                                              ; preds = %131
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %20, align 8
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %16, align 4
  br label %150

150:                                              ; preds = %162, %146
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %150
  %157 = load i32*, i32** %18, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %18, align 8
  %159 = load i32, i32* %157, align 4
  %160 = load i32*, i32** %20, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %20, align 8
  store i32 %159, i32* %160, align 4
  br label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %16, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %150

165:                                              ; preds = %150
  %166 = call i32 @mp_clamp(%struct.TYPE_18__* %7)
  %167 = call i32 @mp_clamp(%struct.TYPE_18__* %9)
  %168 = call i32 @mp_mul(%struct.TYPE_18__* %7, %struct.TYPE_18__* %9, %struct.TYPE_18__* %12)
  %169 = load i32, i32* @MP_OKAY, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %228

172:                                              ; preds = %165
  %173 = call i32 @mp_mul(%struct.TYPE_18__* %8, %struct.TYPE_18__* %10, %struct.TYPE_18__* %13)
  %174 = load i32, i32* @MP_OKAY, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %228

177:                                              ; preds = %172
  %178 = call i32 @mp_sub(%struct.TYPE_18__* %8, %struct.TYPE_18__* %7, %struct.TYPE_18__* %11)
  %179 = load i32, i32* @MP_OKAY, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %228

182:                                              ; preds = %177
  %183 = call i32 @mp_sub(%struct.TYPE_18__* %10, %struct.TYPE_18__* %9, %struct.TYPE_18__* %7)
  %184 = load i32, i32* @MP_OKAY, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %228

187:                                              ; preds = %182
  %188 = call i32 @mp_mul(%struct.TYPE_18__* %11, %struct.TYPE_18__* %7, %struct.TYPE_18__* %11)
  %189 = load i32, i32* @MP_OKAY, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %228

192:                                              ; preds = %187
  %193 = call i32 @mp_add(%struct.TYPE_18__* %12, %struct.TYPE_18__* %13, %struct.TYPE_18__* %7)
  %194 = load i32, i32* @MP_OKAY, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %228

197:                                              ; preds = %192
  %198 = call i32 @mp_sub(%struct.TYPE_18__* %7, %struct.TYPE_18__* %11, %struct.TYPE_18__* %11)
  %199 = load i32, i32* @MP_OKAY, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  br label %228

202:                                              ; preds = %197
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @mp_lshd(%struct.TYPE_18__* %11, i32 %203)
  %205 = load i32, i32* @MP_OKAY, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %228

208:                                              ; preds = %202
  %209 = load i32, i32* %14, align 4
  %210 = mul nsw i32 %209, 2
  %211 = call i32 @mp_lshd(%struct.TYPE_18__* %13, i32 %210)
  %212 = load i32, i32* @MP_OKAY, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %228

215:                                              ; preds = %208
  %216 = call i32 @mp_add(%struct.TYPE_18__* %12, %struct.TYPE_18__* %11, %struct.TYPE_18__* %11)
  %217 = load i32, i32* @MP_OKAY, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  br label %228

220:                                              ; preds = %215
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = call i32 @mp_add(%struct.TYPE_18__* %11, %struct.TYPE_18__* %13, %struct.TYPE_18__* %221)
  %223 = load i32, i32* @MP_OKAY, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %228

226:                                              ; preds = %220
  %227 = load i32, i32* @MP_OKAY, align 4
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %226, %225, %219, %214, %207, %201, %196, %191, %186, %181, %176, %171
  %229 = call i32 @mp_clear(%struct.TYPE_18__* %13)
  br label %230

230:                                              ; preds = %228, %82
  %231 = call i32 @mp_clear(%struct.TYPE_18__* %12)
  br label %232

232:                                              ; preds = %230, %75
  %233 = call i32 @mp_clear(%struct.TYPE_18__* %11)
  br label %234

234:                                              ; preds = %232, %68
  %235 = call i32 @mp_clear(%struct.TYPE_18__* %10)
  br label %236

236:                                              ; preds = %234, %61
  %237 = call i32 @mp_clear(%struct.TYPE_18__* %9)
  br label %238

238:                                              ; preds = %236, %51
  %239 = call i32 @mp_clear(%struct.TYPE_18__* %8)
  br label %240

240:                                              ; preds = %238, %45
  %241 = call i32 @mp_clear(%struct.TYPE_18__* %7)
  br label %242

242:                                              ; preds = %240, %35
  %243 = load i32, i32* %15, align 4
  ret i32 %243
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @mp_init_size(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mp_clamp(%struct.TYPE_18__*) #1

declare dso_local i32 @mp_mul(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mp_sub(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mp_add(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @mp_lshd(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mp_clear(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
