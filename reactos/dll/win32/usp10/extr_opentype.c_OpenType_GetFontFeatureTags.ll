; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontFeatureTags.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_OpenType_GetFontFeatureTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8, i64 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }

@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@USP10_LANGUAGE_TABLE_GSUB = common dso_local global i64 0, align 8
@USP10_LANGUAGE_TABLE_GPOS = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OpenType_GetFontFeatureTags(i32* %0, i64 %1, i64 %2, i32 %3, i64 %4, i8 signext %5, i32 %6, i64* %7, i32* %8, %struct.TYPE_12__** %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_12__**, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_11__*, align 8
  %24 = alloca %struct.TYPE_10__*, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i8 %5, i8* %17, align 1
  store i32 %6, i32* %18, align 4
  store i64* %7, i64** %19, align 8
  store i32* %8, i32** %20, align 8
  store %struct.TYPE_12__** %9, %struct.TYPE_12__*** %21, align 8
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %25, align 4
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @_initialize_script_cache(i32* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call %struct.TYPE_10__* @usp10_script_cache_get_script(i32* %29, i64 %30)
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %24, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %10
  %34 = load i32*, i32** %20, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %11, align 4
  br label %237

39:                                               ; preds = %33
  %40 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %40, i32* %11, align 4
  br label %237

41:                                               ; preds = %10
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %43 = call i32 @_initialize_language_cache(%struct.TYPE_10__* %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %23, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @USP10_LANGUAGE_TABLE_GSUB, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @USP10_LANGUAGE_TABLE_GPOS, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %59, %41
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call %struct.TYPE_11__* @usp10_script_get_language(%struct.TYPE_10__* %68, i64 %69)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %23, align 8
  br label %71

71:                                               ; preds = %67, %59, %51
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %73 = icmp ne %struct.TYPE_11__* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %20, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* @S_OK, align 4
  store i32 %76, i32* %11, align 4
  br label %237

77:                                               ; preds = %71
  %78 = load i32*, i32** %12, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %80 = call i32 @_initialize_feature_cache(i32* %78, %struct.TYPE_11__* %79)
  %81 = load i8, i8* %17, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load i32*, i32** %20, align 8
  store i32 0, i32* %84, align 4
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %110, %83
  %86 = load i32, i32* %22, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %22, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 8
  %100 = sext i8 %99 to i32
  %101 = load i8, i8* %17, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %91
  %105 = load i32*, i32** %20, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  %108 = load i32*, i32** %20, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %104, %91
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %85

113:                                              ; preds = %85
  br label %119

114:                                              ; preds = %77
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32*, i32** %20, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %113
  %120 = load i64, i64* %16, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %18, align 4
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %128, i32* %25, align 4
  br label %135

129:                                              ; preds = %122, %119
  %130 = load i64, i64* %16, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %133, i32* %25, align 4
  br label %134

134:                                              ; preds = %132, %129
  br label %135

135:                                              ; preds = %134, %127
  store i32 0, i32* %22, align 4
  br label %136

136:                                              ; preds = %232, %135
  %137 = load i32, i32* %22, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %235

142:                                              ; preds = %136
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %18, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load i8, i8* %17, align 1
  %148 = icmp ne i8 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* %22, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i8, i8* %156, align 8
  %158 = sext i8 %157 to i32
  %159 = load i8, i8* %17, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %149, %146
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64*, i64** %19, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  store i64 %170, i64* %174, align 8
  br label %175

175:                                              ; preds = %162, %149
  br label %176

176:                                              ; preds = %175, %142
  %177 = load i64, i64* %16, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %231

179:                                              ; preds = %176
  %180 = load i64, i64* %16, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %180, %188
  br i1 %189, label %190, label %230

190:                                              ; preds = %179
  %191 = load i8, i8* %17, align 1
  %192 = icmp ne i8 %191, 0
  br i1 %192, label %193, label %206

193:                                              ; preds = %190
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load i32, i32* %22, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i8, i8* %200, align 8
  %202 = sext i8 %201 to i32
  %203 = load i8, i8* %17, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %230

206:                                              ; preds = %193, %190
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64*, i64** %19, align 8
  %216 = getelementptr inbounds i64, i64* %215, i64 0
  store i64 %214, i64* %216, align 8
  %217 = load i32*, i32** %20, align 8
  store i32 1, i32* %217, align 4
  %218 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  %219 = icmp ne %struct.TYPE_12__** %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %206
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %222, align 8
  %224 = load i32, i32* %22, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i64 %225
  %227 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %21, align 8
  store %struct.TYPE_12__* %226, %struct.TYPE_12__** %227, align 8
  br label %228

228:                                              ; preds = %220, %206
  %229 = load i32, i32* @S_OK, align 4
  store i32 %229, i32* %25, align 4
  br label %235

230:                                              ; preds = %193, %179
  br label %231

231:                                              ; preds = %230, %176
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %22, align 4
  br label %136

235:                                              ; preds = %228, %136
  %236 = load i32, i32* %25, align 4
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %235, %74, %39, %37
  %238 = load i32, i32* %11, align 4
  ret i32 %238
}

declare dso_local i32 @_initialize_script_cache(i32*) #1

declare dso_local %struct.TYPE_10__* @usp10_script_cache_get_script(i32*, i64) #1

declare dso_local i32 @_initialize_language_cache(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @usp10_script_get_language(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @_initialize_feature_cache(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
