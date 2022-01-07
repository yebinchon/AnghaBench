; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/bdf/extr_bdflib.c__bdf_list_split.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/bdf/extr_bdflib.c__bdf_list_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i8** }

@FT_Err_Ok = common dso_local global i64 0, align 8
@empty = common dso_local global i64 0, align 8
@Invalid_Argument = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i8*, i8*, i64)* @_bdf_list_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_bdf_list_split(%struct.TYPE_4__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i64, i64* @FT_Err_Ok, align 8
  store i64 %16, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %4
  %24 = load i64, i64* @empty, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  store i8* %25, i8** %29, align 8
  %30 = load i64, i64* @empty, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load i64, i64* @empty, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  store i8* %37, i8** %41, align 8
  %42 = load i64, i64* @empty, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 3
  store i8* %43, i8** %47, align 8
  %48 = load i64, i64* @empty, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 4
  store i8* %49, i8** %53, align 8
  br label %54

54:                                               ; preds = %23, %4
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %54
  br label %274

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67, %64
  %73 = load i32, i32* @Invalid_Argument, align 4
  %74 = call i64 @FT_THROW(i32 %73)
  store i64 %74, i64* %15, align 8
  br label %274

75:                                               ; preds = %67
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %77 = call i32 @FT_MEM_ZERO(i8* %76, i32 32)
  store i32 0, i32* %10, align 4
  %78 = load i8*, i8** %6, align 8
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %107, %75
  %80 = load i8*, i8** %11, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i8*, i8** %11, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi i1 [ false, %79 ], [ %86, %82 ]
  br i1 %88, label %89, label %110

89:                                               ; preds = %87
  %90 = load i8*, i8** %11, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 43
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i8*, i8** %11, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %10, align 4
  br label %106

101:                                              ; preds = %94, %89
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %103 = load i8*, i8** %11, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i32 @setsbit(i8* %102, i8 signext %104)
  br label %106

106:                                              ; preds = %101, %100
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  br label %79

110:                                              ; preds = %87
  store i64 0, i64* %9, align 8
  %111 = load i8*, i8** %7, align 8
  store i8* %111, i8** %12, align 8
  store i8* %111, i8** %11, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %13, align 8
  br label %115

115:                                              ; preds = %224, %110
  %116 = load i8*, i8** %11, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ult i8* %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8*, i8** %11, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %119, %115
  %125 = phi i1 [ false, %115 ], [ %123, %119 ]
  br i1 %125, label %126, label %229

126:                                              ; preds = %124
  br label %127

127:                                              ; preds = %142, %126
  %128 = load i8*, i8** %12, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %134 = load i8*, i8** %12, align 8
  %135 = load i8, i8* %134, align 1
  %136 = call i64 @sbitset(i8* %133, i8 signext %135)
  %137 = icmp ne i64 %136, 0
  %138 = xor i1 %137, true
  br label %139

139:                                              ; preds = %132, %127
  %140 = phi i1 [ false, %127 ], [ %138, %132 ]
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  br label %127

145:                                              ; preds = %139
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %148, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %145
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add i64 %157, 1
  %159 = call i64 @_bdf_list_ensure(%struct.TYPE_4__* %154, i64 %158)
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %153
  br label %274

163:                                              ; preds = %153
  br label %164

164:                                              ; preds = %163, %145
  %165 = load i8*, i8** %12, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = icmp ugt i8* %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = load i8*, i8** %11, align 8
  br label %173

170:                                              ; preds = %164
  %171 = load i64, i64* @empty, align 8
  %172 = inttoptr i64 %171 to i8*
  br label %173

173:                                              ; preds = %170, %168
  %174 = phi i8* [ %169, %168 ], [ %172, %170 ]
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i8**, i8*** %176, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %179, align 8
  %182 = getelementptr inbounds i8*, i8** %177, i64 %180
  store i8* %174, i8** %182, align 8
  %183 = load i8*, i8** %12, align 8
  store i8* %183, i8** %11, align 8
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %173
  br label %187

187:                                              ; preds = %202, %186
  %188 = load i8*, i8** %12, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %194 = load i8*, i8** %12, align 8
  %195 = load i8, i8* %194, align 1
  %196 = call i64 @sbitset(i8* %193, i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %192, %187
  %199 = phi i1 [ false, %187 ], [ %197, %192 ]
  br i1 %199, label %200, label %205

200:                                              ; preds = %198
  %201 = load i8*, i8** %12, align 8
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %200
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %12, align 8
  br label %187

205:                                              ; preds = %198
  br label %215

206:                                              ; preds = %173
  %207 = load i8*, i8** %12, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** %12, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %12, align 8
  store i8 0, i8* %212, align 1
  br label %214

214:                                              ; preds = %211, %206
  br label %215

215:                                              ; preds = %214, %205
  %216 = load i8*, i8** %12, align 8
  %217 = load i8*, i8** %11, align 8
  %218 = icmp ugt i8* %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %215
  %220 = load i8*, i8** %12, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br label %224

224:                                              ; preds = %219, %215
  %225 = phi i1 [ false, %215 ], [ %223, %219 ]
  %226 = zext i1 %225 to i32
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %9, align 8
  %228 = load i8*, i8** %12, align 8
  store i8* %228, i8** %11, align 8
  br label %115

229:                                              ; preds = %124
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* %9, align 8
  %234 = add i64 %232, %233
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp uge i64 %234, %237
  br i1 %238, label %239, label %252

239:                                              ; preds = %229
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %9, align 8
  %245 = add i64 %243, %244
  %246 = add i64 %245, 1
  %247 = call i64 @_bdf_list_ensure(%struct.TYPE_4__* %240, i64 %246)
  store i64 %247, i64* %15, align 8
  %248 = load i64, i64* %15, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %239
  br label %274

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %229
  %253 = load i64, i64* %9, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i64, i64* @empty, align 8
  %257 = inttoptr i64 %256 to i8*
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 2
  %260 = load i8**, i8*** %259, align 8
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = add i64 %263, 1
  store i64 %264, i64* %262, align 8
  %265 = getelementptr inbounds i8*, i8** %260, i64 %263
  store i8* %257, i8** %265, align 8
  br label %266

266:                                              ; preds = %255, %252
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 2
  %269 = load i8**, i8*** %268, align 8
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds i8*, i8** %269, i64 %272
  store i8* null, i8** %273, align 8
  br label %274

274:                                              ; preds = %266, %250, %162, %72, %63
  %275 = load i64, i64* %15, align 8
  ret i64 %275
}

declare dso_local i64 @FT_THROW(i32) #1

declare dso_local i32 @FT_MEM_ZERO(i8*, i32) #1

declare dso_local i32 @setsbit(i8*, i8 signext) #1

declare dso_local i64 @sbitset(i8*, i8 signext) #1

declare dso_local i64 @_bdf_list_ensure(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
