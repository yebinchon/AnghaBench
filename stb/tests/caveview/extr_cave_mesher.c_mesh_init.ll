; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_mesh_init.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_mesh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunk_cache_mutex = common dso_local global i8* null, align 8
@chunk_get_mutex = common dso_local global i8* null, align 8
@minecraft_tex1_for_blocktype = common dso_local global i32** null, align 8
@minecraft_info = common dso_local global i64** null, align 8
@C_empty = common dso_local global i64 0, align 8
@effective_blocktype = common dso_local global i32* null, align 8
@geom_map = common dso_local global i32* null, align 8
@minecraft_geom_for_blocktype = common dso_local global i32* null, align 8
@minecraft_color_for_blocktype = common dso_local global i32** null, align 8
@remap = common dso_local global i32* null, align 8
@remap_data = common dso_local global i32* null, align 8
@STBVOX_GEOM_ceil_vheight_03 = common dso_local global i32 0, align 4
@STBVOX_GEOM_floor_vheight_12 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i8* (...) @SDL_CreateMutex()
  store i8* %2, i8** @chunk_cache_mutex, align 8
  %3 = call i8* (...) @SDL_CreateMutex()
  store i8* %3, i8** @chunk_get_mutex, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %52, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %55

7:                                                ; preds = %4
  %8 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = load i64**, i64*** @minecraft_info, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64*, i64** %13, i64 %15
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 1
  %19 = call i32 @memcpy(i32* %12, i64* %18, i32 6)
  %20 = load i64**, i64*** @minecraft_info, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @C_empty, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  br label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ 0, %29 ], [ %31, %30 ]
  %34 = load i32*, i32** @effective_blocktype, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32*, i32** @geom_map, align 8
  %39 = load i64**, i64*** @minecraft_info, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64*, i64** %39, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %38, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @minecraft_geom_for_blocktype, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %32
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %4

55:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %56

56:                                               ; preds = %140, %55
  %57 = load i32, i32* %1, align 4
  %58 = icmp slt i32 %57, 1536
  br i1 %58, label %59, label %143

59:                                               ; preds = %56
  %60 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 40
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i64 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 102, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %59
  %76 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 39
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 103, i32* %90, align 4
  br label %91

91:                                               ; preds = %84, %75
  %92 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %93 = getelementptr inbounds i32*, i32** %92, i64 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 105
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 63, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %91
  %108 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 212
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %118 = getelementptr inbounds i32*, i32** %117, i64 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %1, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 63, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %107
  %124 = load i32**, i32*** @minecraft_tex1_for_blocktype, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %1, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 80
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 63, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %123
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %1, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %1, align 4
  br label %56

143:                                              ; preds = %56
  store i32 0, i32* %1, align 4
  br label %144

144:                                              ; preds = %190, %143
  %145 = load i32, i32* %1, align 4
  %146 = icmp slt i32 %145, 6
  br i1 %146, label %147, label %193

147:                                              ; preds = %144
  %148 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 172
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 111, i32* %153, align 4
  %154 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %155 = getelementptr inbounds i32*, i32** %154, i64 178
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 111, i32* %159, align 4
  %160 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %161 = getelementptr inbounds i32*, i32** %160, i64 18
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %1, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 103, i32* %165, align 4
  %166 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %167 = getelementptr inbounds i32*, i32** %166, i64 161
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %1, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  store i32 101, i32* %171, align 4
  %172 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 10
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 63, i32* %177, align 4
  %178 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %179 = getelementptr inbounds i32*, i32** %178, i64 11
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 63, i32* %183, align 4
  %184 = load i32**, i32*** @minecraft_color_for_blocktype, align 8
  %185 = getelementptr inbounds i32*, i32** %184, i64 48
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %1, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 63, i32* %189, align 4
  br label %190

190:                                              ; preds = %147
  %191 = load i32, i32* %1, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %1, align 4
  br label %144

193:                                              ; preds = %144
  %194 = load i32*, i32** @remap, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 53
  store i32 1, i32* %195, align 4
  %196 = load i32*, i32** @remap, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 67
  store i32 2, i32* %197, align 4
  %198 = load i32*, i32** @remap, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 108
  store i32 3, i32* %199, align 4
  %200 = load i32*, i32** @remap, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 109
  store i32 4, i32* %201, align 4
  %202 = load i32*, i32** @remap, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 114
  store i32 5, i32* %203, align 4
  %204 = load i32*, i32** @remap, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 136
  store i32 6, i32* %205, align 4
  %206 = load i32*, i32** @remap, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 156
  store i32 7, i32* %207, align 4
  store i32 0, i32* %1, align 4
  br label %208

208:                                              ; preds = %231, %193
  %209 = load i32, i32* %1, align 4
  %210 = icmp slt i32 %209, 256
  br i1 %210, label %211, label %234

211:                                              ; preds = %208
  %212 = load i32*, i32** @remap, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %230

218:                                              ; preds = %211
  %219 = load i32, i32* %1, align 4
  %220 = load i32*, i32** @remap_data, align 8
  %221 = load i32*, i32** @remap, align 8
  %222 = load i32, i32* %1, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @build_stair_rotations(i32 %219, i32 %228)
  br label %230

230:                                              ; preds = %218, %211
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %1, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %1, align 4
  br label %208

234:                                              ; preds = %208
  %235 = load i32*, i32** @remap, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 35
  store i32 8, i32* %236, align 4
  %237 = load i32*, i32** @remap_data, align 8
  %238 = load i32*, i32** @remap, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 35
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @build_wool_variations(i32 35, i32 %243)
  %245 = load i32*, i32** @remap, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 5
  store i32 11, i32* %246, align 4
  %247 = load i32*, i32** @remap_data, align 8
  %248 = load i32*, i32** @remap, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 5
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @build_wood_variations(i32 5, i32 %253)
  %255 = call i32 @remap_in_place(i32 54, i32 9)
  %256 = call i32 @remap_in_place(i32 146, i32 10)
  ret void
}

declare dso_local i8* @SDL_CreateMutex(...) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @build_stair_rotations(i32, i32) #1

declare dso_local i32 @build_wool_variations(i32, i32) #1

declare dso_local i32 @build_wood_variations(i32, i32) #1

declare dso_local i32 @remap_in_place(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
