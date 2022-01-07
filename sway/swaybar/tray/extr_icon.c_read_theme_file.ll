; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_read_theme_file.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_read_theme_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icon_theme = type { i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s/%s/index.theme\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.icon_theme* (i8*, i8*)* @read_theme_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.icon_theme* @read_theme_file(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.icon_theme*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.icon_theme*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @snprintf(i8* null, i64 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i8* @malloc(i64 %26)
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store %struct.icon_theme* null, %struct.icon_theme** %3, align 8
  br label %284

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %38, i32** %8, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  store %struct.icon_theme* null, %struct.icon_theme** %3, align 8
  br label %284

44:                                               ; preds = %31
  %45 = call %struct.icon_theme* @calloc(i32 1, i32 16)
  store %struct.icon_theme* %45, %struct.icon_theme** %9, align 8
  %46 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %47 = icmp ne %struct.icon_theme* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @fclose(i32* %49)
  store %struct.icon_theme* null, %struct.icon_theme** %3, align 8
  br label %284

51:                                               ; preds = %44
  %52 = call i32 (...) @create_list()
  %53 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %54 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  br label %55

55:                                               ; preds = %251, %79, %51
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @getline(i8** %12, i64* %13, i32* %56)
  store i32 %57, i32* %14, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %252

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  store i8* %61, i8** %15, align 8
  br label %62

62:                                               ; preds = %68, %59
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %15, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %62

69:                                               ; preds = %62
  %70 = load i8*, i8** %15, align 8
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %15, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 35
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %69
  br label %55

80:                                               ; preds = %73
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sub nsw i64 %82, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %99, %80
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isspace(i8 signext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %90

100:                                              ; preds = %90
  %101 = load i8*, i8** %15, align 8
  %102 = load i32, i32* %16, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %15, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 91
  br i1 %110, label %111, label %176

111:                                              ; preds = %100
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 93
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 1, i32* %10, align 4
  br label %252

121:                                              ; preds = %111
  store i32 1, i32* %17, align 4
  br label %122

122:                                              ; preds = %149, %121
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @iscntrl(i8 signext %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %122
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 91
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load i8*, i8** %15, align 8
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 93
  br label %146

146:                                              ; preds = %138, %130, %122
  %147 = phi i1 [ false, %130 ], [ false, %122 ], [ %145, %138 ]
  br i1 %147, label %148, label %152

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %17, align 4
  br label %122

152:                                              ; preds = %146
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 1, i32* %10, align 4
  br label %252

157:                                              ; preds = %152
  %158 = load i8*, i8** %15, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %11, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %166 = call i32 @group_handler(i8* %162, i8* %164, %struct.icon_theme* %165)
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %252

170:                                              ; preds = %157
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load i8*, i8** %15, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = call i8* @strdup(i8* %174)
  store i8* %175, i8** %11, align 8
  br label %251

176:                                              ; preds = %100
  %177 = load i8*, i8** %11, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  store i32 1, i32* %10, align 4
  br label %252

180:                                              ; preds = %176
  store i32 0, i32* %18, align 4
  br label %181

181:                                              ; preds = %200, %180
  %182 = load i8*, i8** %15, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = call i64 @isalnum(i8 signext %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load i8*, i8** %15, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 45
  br label %197

197:                                              ; preds = %189, %181
  %198 = phi i1 [ true, %181 ], [ %196, %189 ]
  br i1 %198, label %199, label %203

199:                                              ; preds = %197
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %18, align 4
  br label %181

203:                                              ; preds = %197
  %204 = load i32, i32* %18, align 4
  %205 = sub nsw i32 %204, 1
  store i32 %205, i32* %19, align 4
  br label %206

206:                                              ; preds = %215, %203
  %207 = load i8*, i8** %15, align 8
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = call i64 @isspace(i8 signext %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %206
  br label %206

216:                                              ; preds = %206
  %217 = load i8*, i8** %15, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 61
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  store i32 1, i32* %10, align 4
  br label %252

225:                                              ; preds = %216
  %226 = load i8*, i8** %15, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  store i8 0, i8* %229, align 1
  %230 = load i8*, i8** %15, align 8
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  store i8* %233, i8** %20, align 8
  br label %234

234:                                              ; preds = %240, %225
  %235 = load i8*, i8** %20, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %20, align 8
  %237 = load i8, i8* %236, align 1
  %238 = call i64 @isspace(i8 signext %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %234
  br label %234

241:                                              ; preds = %234
  %242 = load i8*, i8** %11, align 8
  %243 = load i8*, i8** %15, align 8
  %244 = load i8*, i8** %20, align 8
  %245 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %246 = call i32 @entry_handler(i8* %242, i8* %243, i8* %244, %struct.icon_theme* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %252

250:                                              ; preds = %241
  br label %251

251:                                              ; preds = %250, %170
  br label %55

252:                                              ; preds = %249, %224, %179, %169, %156, %120, %55
  %253 = load i32, i32* %10, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %252
  %256 = load i8*, i8** %11, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i8*, i8** %11, align 8
  %260 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %261 = call i32 @group_handler(i8* %259, i8* null, %struct.icon_theme* %260)
  store i32 %261, i32* %10, align 4
  br label %262

262:                                              ; preds = %258, %255, %252
  %263 = load i8*, i8** %11, align 8
  %264 = call i32 @free(i8* %263)
  %265 = load i8*, i8** %12, align 8
  %266 = call i32 @free(i8* %265)
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 @fclose(i32* %267)
  %269 = load i32, i32* %10, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %281, label %271

271:                                              ; preds = %262
  %272 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %273 = call i64 @validate_icon_theme(%struct.icon_theme* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load i8*, i8** %5, align 8
  %277 = call i8* @strdup(i8* %276)
  %278 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %279 = getelementptr inbounds %struct.icon_theme, %struct.icon_theme* %278, i32 0, i32 0
  store i8* %277, i8** %279, align 8
  %280 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  store %struct.icon_theme* %280, %struct.icon_theme** %3, align 8
  br label %284

281:                                              ; preds = %271, %262
  %282 = load %struct.icon_theme*, %struct.icon_theme** %9, align 8
  %283 = call i32 @destroy_theme(%struct.icon_theme* %282)
  store %struct.icon_theme* null, %struct.icon_theme** %3, align 8
  br label %284

284:                                              ; preds = %281, %275, %48, %43, %30
  %285 = load %struct.icon_theme*, %struct.icon_theme** %3, align 8
  ret %struct.icon_theme* %285
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.icon_theme* @calloc(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @create_list(...) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @iscntrl(i8 signext) #1

declare dso_local i32 @group_handler(i8*, i8*, %struct.icon_theme*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @entry_handler(i8*, i8*, i8*, %struct.icon_theme*) #1

declare dso_local i64 @validate_icon_theme(%struct.icon_theme*) #1

declare dso_local i32 @destroy_theme(%struct.icon_theme*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
