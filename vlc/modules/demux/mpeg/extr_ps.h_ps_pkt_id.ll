; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.h_ps_pkt_id.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ps.h_ps_pkt_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ps_pkt_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_pkt_id(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ult i64 %13, 4
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %253

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 189
  br i1 %23, label %24, label %78

24:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %25 = load i64, i64* %5, align 8
  %26 = icmp uge i64 %25, 9
  br i1 %26, label %27, label %75

27:                                               ; preds = %24
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 9, %32
  %34 = icmp ugt i64 %28, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %27
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 9, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 254
  %47 = icmp eq i32 %46, 160
  br i1 %47, label %48, label %74

48:                                               ; preds = %35
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, 7
  %52 = zext i32 %51 to i64
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 5
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 192
  br i1 %61, label %70, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 6
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 128
  br i1 %69, label %70, label %74

70:                                               ; preds = %62, %54
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 1
  %73 = or i32 40960, %72
  store i32 %73, i32* %3, align 4
  br label %253

74:                                               ; preds = %62, %48, %35
  br label %75

75:                                               ; preds = %74, %27, %24
  %76 = load i32, i32* %6, align 4
  %77 = or i32 48384, %76
  store i32 %77, i32* %3, align 4
  br label %253

78:                                               ; preds = %19
  %79 = load i64, i64* %5, align 8
  %80 = icmp uge i64 %79, 9
  br i1 %80, label %81, label %248

81:                                               ; preds = %78
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 253
  br i1 %85, label %86, label %248

86:                                               ; preds = %81
  %87 = load i32*, i32** %4, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 6
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 192
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %248

92:                                               ; preds = %86
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %248

98:                                               ; preds = %92
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 7
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %8, align 4
  store i32 9, i32* %9, align 4
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 128
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %98
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 5
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, 64
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 5
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %111, %105
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, 32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 6
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %8, align 4
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load i32, i32* %9, align 4
  %128 = add i32 %127, 3
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %8, align 4
  %131 = and i32 %130, 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %9, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 2
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 2
  store i32 %149, i32* %9, align 4
  br label %150

150:                                              ; preds = %147, %143
  %151 = load i32, i32* %9, align 4
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %5, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %247

155:                                              ; preds = %150
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 1
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %247

163:                                              ; preds = %155
  %164 = load i32*, i32** %4, align 8
  %165 = load i32, i32* %9, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %9, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = and i32 %171, 128
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 16
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %174, %163
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 64
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load i32, i32* %9, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %5, align 8
  %185 = icmp ult i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %9, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 1, %191
  %193 = load i32, i32* %9, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %186, %181, %177
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, 32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = add i32 %200, 2
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %199, %195
  %203 = load i32, i32* %10, align 4
  %204 = and i32 %203, 16
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load i32, i32* %9, align 4
  %208 = add i32 %207, 2
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %206, %202
  %210 = load i32, i32* %9, align 4
  %211 = add i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* %5, align 8
  %214 = icmp ult i64 %212, %213
  br i1 %214, label %215, label %246

215:                                              ; preds = %209
  %216 = load i32*, i32** %4, align 8
  %217 = load i32, i32* %9, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 127
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp sge i32 %222, 1
  br i1 %223, label %224, label %245

224:                                              ; preds = %215
  %225 = load i32*, i32** %4, align 8
  %226 = load i32, i32* %9, align 4
  %227 = add i32 %226, 1
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %225, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = ashr i32 %230, 7
  %232 = and i32 %231, 1
  store i32 %232, i32* %12, align 4
  %233 = load i32, i32* %12, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %224
  %236 = load i32*, i32** %4, align 8
  %237 = load i32, i32* %9, align 4
  %238 = add i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 127
  %243 = or i32 64768, %242
  store i32 %243, i32* %3, align 4
  br label %253

244:                                              ; preds = %224
  br label %245

245:                                              ; preds = %244, %215
  br label %246

246:                                              ; preds = %245, %209
  br label %247

247:                                              ; preds = %246, %155, %150
  br label %248

248:                                              ; preds = %247, %92, %86, %81, %78
  br label %249

249:                                              ; preds = %248
  %250 = load i32*, i32** %4, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %3, align 4
  br label %253

253:                                              ; preds = %249, %235, %75, %70, %18
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
