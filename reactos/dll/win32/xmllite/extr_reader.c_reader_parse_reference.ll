; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_reference.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8*, i32 }

@WC_E_SEMICOLON = common dso_local global i32 0, align 4
@WC_E_HEXDIGIT = common dso_local global i32 0, align 4
@WC_E_DIGIT = common dso_local global i32 0, align 4
@WC_E_XMLCHARACTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"undeclared entity %s\0A\00", align 1
@WC_E_UNDECLAREDENTITY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @reader_parse_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_reference(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = call i8* @reader_get_ptr(%struct.TYPE_15__* %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = call i32 @reader_get_cur(%struct.TYPE_15__* %20)
  store i32 %21, i32* %7, align 4
  store i8 0, i8* %8, align 1
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = call i32 @reader_skipn(%struct.TYPE_15__* %22, i32 1)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = call i8* @reader_get_ptr(%struct.TYPE_15__* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %225

30:                                               ; preds = %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = call i32 @reader_skipn(%struct.TYPE_15__* %31, i32 1)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i8* @reader_get_ptr(%struct.TYPE_15__* %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 120
  br i1 %38, label %39, label %129

39:                                               ; preds = %30
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %41 = call i32 @reader_skipn(%struct.TYPE_15__* %40, i32 1)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i8* @reader_get_ptr(%struct.TYPE_15__* %42)
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %123, %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 59
  br i1 %48, label %49, label %128

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp sge i32 %52, 48
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sle i32 %57, 57
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  %62 = mul nsw i32 %61, 16
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = add nsw i32 %62, %65
  %67 = sub nsw i32 %66, 48
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %8, align 1
  br label %123

69:                                               ; preds = %54, %49
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sge i32 %72, 97
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %77, 102
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = mul nsw i32 %81, 16
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = add nsw i32 %82, %85
  %87 = sub nsw i32 %86, 97
  %88 = add nsw i32 %87, 10
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %8, align 1
  br label %122

90:                                               ; preds = %74, %69
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sge i32 %93, 65
  br i1 %94, label %95, label %111

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sle i32 %98, 70
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load i8, i8* %8, align 1
  %102 = sext i8 %101 to i32
  %103 = mul nsw i32 %102, 16
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = add nsw i32 %103, %106
  %108 = sub nsw i32 %107, 65
  %109 = add nsw i32 %108, 10
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %8, align 1
  br label %121

111:                                              ; preds = %95, %90
  %112 = load i8, i8* %8, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @WC_E_SEMICOLON, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* @WC_E_HEXDIGIT, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %2, align 4
  br label %294

121:                                              ; preds = %100
  br label %122

122:                                              ; preds = %121, %79
  br label %123

123:                                              ; preds = %122, %59
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = call i32 @reader_skipn(%struct.TYPE_15__* %124, i32 1)
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %127 = call i8* @reader_get_ptr(%struct.TYPE_15__* %126)
  store i8* %127, i8** %6, align 8
  br label %44

128:                                              ; preds = %44
  br label %171

129:                                              ; preds = %30
  br label %130

130:                                              ; preds = %169, %129
  %131 = load i8*, i8** %6, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 59
  br i1 %134, label %135, label %170

135:                                              ; preds = %130
  %136 = load i8*, i8** %6, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 48
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sle i32 %143, 57
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load i8, i8* %8, align 1
  %147 = sext i8 %146 to i32
  %148 = mul nsw i32 %147, 10
  %149 = load i8*, i8** %6, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 %148, %151
  %153 = sub nsw i32 %152, 48
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %8, align 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = call i32 @reader_skipn(%struct.TYPE_15__* %155, i32 1)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i8* @reader_get_ptr(%struct.TYPE_15__* %157)
  store i8* %158, i8** %6, align 8
  br label %169

159:                                              ; preds = %140, %135
  %160 = load i8, i8* %8, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = load i32, i32* @WC_E_SEMICOLON, align 4
  br label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @WC_E_DIGIT, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %2, align 4
  br label %294

169:                                              ; preds = %145
  br label %130

170:                                              ; preds = %130
  br label %171

171:                                              ; preds = %170, %128
  %172 = load i8, i8* %8, align 1
  %173 = call i32 @is_char(i8 signext %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @WC_E_XMLCHARACTER, align 4
  store i32 %176, i32* %2, align 4
  br label %294

177:                                              ; preds = %171
  %178 = load i8, i8* %8, align 1
  %179 = call i64 @is_wchar_space(i8 signext %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  store i8 32, i8* %8, align 1
  br label %182

182:                                              ; preds = %181, %177
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %184 = call i8* @reader_get_ptr(%struct.TYPE_15__* %183)
  store i8* %184, i8** %6, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i8* @reader_get_ptr2(%struct.TYPE_15__* %185, i32 %186)
  store i8* %187, i8** %5, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load i8*, i8** %6, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = ptrtoint i8* %192 to i64
  %197 = ptrtoint i8* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sub nsw i64 %191, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %9, align 4
  %201 = load i8*, i8** %5, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @memmove(i8* %202, i8* %204, i32 %205)
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %208 = call i32 @reader_get_cur(%struct.TYPE_15__* %207)
  %209 = load i32, i32* %7, align 4
  %210 = sub nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 1
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = sub i64 %216, %212
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 8
  %219 = load i32, i32* %7, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load i8, i8* %8, align 1
  %224 = load i8*, i8** %5, align 8
  store i8 %223, i8* %224, align 1
  br label %292

225:                                              ; preds = %1
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %227 = call i32 @reader_parse_name(%struct.TYPE_15__* %226, i32* %10)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i64 @FAILED(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = load i32, i32* %11, align 4
  store i32 %232, i32* %2, align 4
  br label %294

233:                                              ; preds = %225
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %235 = call i8* @reader_get_ptr(%struct.TYPE_15__* %234)
  store i8* %235, i8** %6, align 8
  %236 = load i8*, i8** %6, align 8
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp ne i32 %238, 59
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @WC_E_SEMICOLON, align 4
  store i32 %241, i32* %2, align 4
  br label %294

242:                                              ; preds = %233
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %244 = call signext i8 @get_predefined_entity(%struct.TYPE_15__* %243, i32* %10)
  store i8 %244, i8* %8, align 1
  %245 = load i8, i8* %8, align 1
  %246 = icmp ne i8 %245, 0
  br i1 %246, label %247, label %286

247:                                              ; preds = %242
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = load i8*, i8** %6, align 8
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = ptrtoint i8* %252 to i64
  %257 = ptrtoint i8* %255 to i64
  %258 = sub i64 %256, %257
  %259 = sub nsw i64 %251, %258
  %260 = sub i64 %259, 1
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %9, align 4
  %262 = load i8*, i8** %5, align 8
  %263 = getelementptr inbounds i8, i8* %262, i64 1
  %264 = load i8*, i8** %6, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 1
  %266 = load i32, i32* %9, align 4
  %267 = call i32 @memmove(i8* %263, i8* %265, i32 %266)
  %268 = load i32, i32* %7, align 4
  %269 = add nsw i32 %268, 1
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** %6, align 8
  %273 = load i8*, i8** %5, align 8
  %274 = ptrtoint i8* %272 to i64
  %275 = ptrtoint i8* %273 to i64
  %276 = sub i64 %274, %275
  %277 = mul i64 %276, 1
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = sub i64 %281, %277
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %279, align 8
  %284 = load i8, i8* %8, align 1
  %285 = load i8*, i8** %5, align 8
  store i8 %284, i8* %285, align 1
  br label %291

286:                                              ; preds = %242
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %288 = call i32 @debug_strval(%struct.TYPE_15__* %287, i32* %10)
  %289 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %288)
  %290 = load i32, i32* @WC_E_UNDECLAREDENTITY, align 4
  store i32 %290, i32* %2, align 4
  br label %294

291:                                              ; preds = %247
  br label %292

292:                                              ; preds = %291, %182
  %293 = load i32, i32* @S_OK, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %292, %286, %240, %231, %175, %167, %119
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i8* @reader_get_ptr(%struct.TYPE_15__*) #1

declare dso_local i32 @reader_get_cur(%struct.TYPE_15__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @is_char(i8 signext) #1

declare dso_local i64 @is_wchar_space(i8 signext) #1

declare dso_local i8* @reader_get_ptr2(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @reader_parse_name(%struct.TYPE_15__*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local signext i8 @get_predefined_entity(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_strval(%struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
