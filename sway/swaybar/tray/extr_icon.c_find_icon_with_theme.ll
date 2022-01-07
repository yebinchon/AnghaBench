; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon_with_theme.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_find_icon_with_theme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.icon_theme** }
%struct.icon_theme = type { i8*, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.icon_theme_subdir** }
%struct.icon_theme_subdir = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_6__*, %struct.TYPE_6__*, i8*, i32, i8*, i32*, i32*)* @find_icon_with_theme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_icon_with_theme(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.icon_theme*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.icon_theme_subdir*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.icon_theme_subdir*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.icon_theme* null, %struct.icon_theme** %16, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %50, %7
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.icon_theme**, %struct.icon_theme*** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %37, i64 %39
  %41 = load %struct.icon_theme*, %struct.icon_theme** %40, align 8
  store %struct.icon_theme* %41, %struct.icon_theme** %16, align 8
  %42 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %43 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @strcmp(i32 %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %53

49:                                               ; preds = %34
  store %struct.icon_theme* null, %struct.icon_theme** %16, align 8
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %17, align 4
  br label %28

53:                                               ; preds = %48, %28
  %54 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %55 = icmp ne %struct.icon_theme* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i8* null, i8** %8, align 8
  br label %277

57:                                               ; preds = %53
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  br label %58

58:                                               ; preds = %142, %57
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %145

64:                                               ; preds = %58
  %65 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %66 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.icon_theme**, %struct.icon_theme*** %69, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %70, i64 %72
  %74 = load %struct.icon_theme*, %struct.icon_theme** %73, align 8
  %75 = call i32 @theme_exists_in_basedir(i32 %67, %struct.icon_theme* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %64
  br label %142

78:                                               ; preds = %64
  %79 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %80 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %138, %78
  %86 = load i32, i32* %20, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %141

88:                                               ; preds = %85
  %89 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %90 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load %struct.icon_theme_subdir**, %struct.icon_theme_subdir*** %92, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %93, i64 %95
  %97 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %96, align 8
  store %struct.icon_theme_subdir* %97, %struct.icon_theme_subdir** %21, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %21, align 8
  %100 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %88
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %21, align 8
  %106 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sle i32 %104, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load i8*, i8** %11, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.icon_theme**, %struct.icon_theme*** %112, align 8
  %114 = load i32, i32* %19, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %113, i64 %115
  %117 = load %struct.icon_theme*, %struct.icon_theme** %116, align 8
  %118 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %119 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %21, align 8
  %122 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @find_icon_in_subdir(i8* %110, %struct.icon_theme* %117, i32 %120, i32 %123)
  store i8* %124, i8** %18, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %136

126:                                              ; preds = %109
  %127 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %21, align 8
  %128 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %21, align 8
  %132 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %15, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** %18, align 8
  store i8* %135, i8** %8, align 8
  br label %277

136:                                              ; preds = %109
  br label %137

137:                                              ; preds = %136, %103, %88
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %20, align 4
  br label %85

141:                                              ; preds = %85
  br label %142

142:                                              ; preds = %141, %77
  %143 = load i32, i32* %19, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %19, align 4
  br label %58

145:                                              ; preds = %58
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %146

146:                                              ; preds = %253, %145
  %147 = load i32, i32* %23, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %256

152:                                              ; preds = %146
  %153 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %154 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load %struct.icon_theme**, %struct.icon_theme*** %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %158, i64 %160
  %162 = load %struct.icon_theme*, %struct.icon_theme** %161, align 8
  %163 = call i32 @theme_exists_in_basedir(i32 %155, %struct.icon_theme* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %152
  br label %253

166:                                              ; preds = %152
  %167 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %168 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %167, i32 0, i32 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sub nsw i32 %171, 1
  store i32 %172, i32* %24, align 4
  br label %173

173:                                              ; preds = %249, %166
  %174 = load i32, i32* %24, align 4
  %175 = icmp sge i32 %174, 0
  br i1 %175, label %176, label %252

176:                                              ; preds = %173
  %177 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %178 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %177, i32 0, i32 2
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load %struct.icon_theme_subdir**, %struct.icon_theme_subdir*** %180, align 8
  %182 = load i32, i32* %24, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %181, i64 %183
  %185 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %184, align 8
  store %struct.icon_theme_subdir* %185, %struct.icon_theme_subdir** %25, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %188 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %186, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %176
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %194 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 %192, %195
  br label %198

197:                                              ; preds = %176
  br label %198

198:                                              ; preds = %197, %191
  %199 = phi i32 [ %196, %191 ], [ 0, %197 ]
  %200 = load i32, i32* %12, align 4
  %201 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %202 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %200, %203
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %207 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %12, align 4
  %210 = sub nsw i32 %208, %209
  br label %212

211:                                              ; preds = %198
  br label %212

212:                                              ; preds = %211, %205
  %213 = phi i32 [ %210, %205 ], [ 0, %211 ]
  %214 = add nsw i32 %199, %213
  store i32 %214, i32* %26, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* %22, align 4
  %217 = icmp ult i32 %215, %216
  br i1 %217, label %218, label %248

218:                                              ; preds = %212
  %219 = load i8*, i8** %11, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 1
  %222 = load %struct.icon_theme**, %struct.icon_theme*** %221, align 8
  %223 = load i32, i32* %23, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.icon_theme*, %struct.icon_theme** %222, i64 %224
  %226 = load %struct.icon_theme*, %struct.icon_theme** %225, align 8
  %227 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %228 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %231 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @find_icon_in_subdir(i8* %219, %struct.icon_theme* %226, i32 %229, i32 %232)
  store i8* %233, i8** %27, align 8
  %234 = load i8*, i8** %27, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %247

236:                                              ; preds = %218
  %237 = load i8*, i8** %27, align 8
  store i8* %237, i8** %18, align 8
  %238 = load i32, i32* %26, align 4
  store i32 %238, i32* %22, align 4
  %239 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %240 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %14, align 8
  store i32 %241, i32* %242, align 4
  %243 = load %struct.icon_theme_subdir*, %struct.icon_theme_subdir** %25, align 8
  %244 = getelementptr inbounds %struct.icon_theme_subdir, %struct.icon_theme_subdir* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %15, align 8
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %236, %218
  br label %248

248:                                              ; preds = %247, %212
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %24, align 4
  %251 = add nsw i32 %250, -1
  store i32 %251, i32* %24, align 4
  br label %173

252:                                              ; preds = %173
  br label %253

253:                                              ; preds = %252, %165
  %254 = load i32, i32* %23, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %23, align 4
  br label %146

256:                                              ; preds = %146
  %257 = load i8*, i8** %18, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %275, label %259

259:                                              ; preds = %256
  %260 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %261 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %275

264:                                              ; preds = %259
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %267 = load i8*, i8** %11, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.icon_theme*, %struct.icon_theme** %16, align 8
  %270 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = load i32*, i32** %14, align 8
  %273 = load i32*, i32** %15, align 8
  %274 = call i8* @find_icon_with_theme(%struct.TYPE_6__* %265, %struct.TYPE_6__* %266, i8* %267, i32 %268, i8* %271, i32* %272, i32* %273)
  store i8* %274, i8** %18, align 8
  br label %275

275:                                              ; preds = %264, %259, %256
  %276 = load i8*, i8** %18, align 8
  store i8* %276, i8** %8, align 8
  br label %277

277:                                              ; preds = %275, %126, %56
  %278 = load i8*, i8** %8, align 8
  ret i8* %278
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @theme_exists_in_basedir(i32, %struct.icon_theme*) #1

declare dso_local i8* @find_icon_in_subdir(i8*, %struct.icon_theme*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
