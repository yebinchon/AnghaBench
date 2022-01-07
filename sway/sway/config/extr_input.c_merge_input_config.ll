; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_input_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_input.c_merge_input_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_config = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, i32*, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_2__ = type { i32*, i64 }

@INT_MIN = common dso_local global i64 0, align 8
@FLT_MIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge_input_config(%struct.input_config* %0, %struct.input_config* %1) #0 {
  %3 = alloca %struct.input_config*, align 8
  %4 = alloca %struct.input_config*, align 8
  store %struct.input_config* %0, %struct.input_config** %3, align 8
  store %struct.input_config* %1, %struct.input_config** %4, align 8
  %5 = load %struct.input_config*, %struct.input_config** %4, align 8
  %6 = getelementptr inbounds %struct.input_config, %struct.input_config* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @INT_MIN, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.input_config*, %struct.input_config** %4, align 8
  %12 = getelementptr inbounds %struct.input_config, %struct.input_config* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.input_config*, %struct.input_config** %3, align 8
  %15 = getelementptr inbounds %struct.input_config, %struct.input_config* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.input_config*, %struct.input_config** %4, align 8
  %18 = getelementptr inbounds %struct.input_config, %struct.input_config* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INT_MIN, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.input_config*, %struct.input_config** %4, align 8
  %24 = getelementptr inbounds %struct.input_config, %struct.input_config* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.input_config*, %struct.input_config** %3, align 8
  %27 = getelementptr inbounds %struct.input_config, %struct.input_config* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.input_config*, %struct.input_config** %4, align 8
  %30 = getelementptr inbounds %struct.input_config, %struct.input_config* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INT_MIN, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.input_config*, %struct.input_config** %4, align 8
  %36 = getelementptr inbounds %struct.input_config, %struct.input_config* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.input_config*, %struct.input_config** %3, align 8
  %39 = getelementptr inbounds %struct.input_config, %struct.input_config* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.input_config*, %struct.input_config** %4, align 8
  %42 = getelementptr inbounds %struct.input_config, %struct.input_config* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @INT_MIN, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.input_config*, %struct.input_config** %4, align 8
  %48 = getelementptr inbounds %struct.input_config, %struct.input_config* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.input_config*, %struct.input_config** %3, align 8
  %51 = getelementptr inbounds %struct.input_config, %struct.input_config* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.input_config*, %struct.input_config** %4, align 8
  %54 = getelementptr inbounds %struct.input_config, %struct.input_config* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @INT_MIN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.input_config*, %struct.input_config** %4, align 8
  %60 = getelementptr inbounds %struct.input_config, %struct.input_config* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.input_config*, %struct.input_config** %3, align 8
  %63 = getelementptr inbounds %struct.input_config, %struct.input_config* %62, i32 0, i32 4
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %52
  %65 = load %struct.input_config*, %struct.input_config** %4, align 8
  %66 = getelementptr inbounds %struct.input_config, %struct.input_config* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @INT_MIN, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.input_config*, %struct.input_config** %4, align 8
  %72 = getelementptr inbounds %struct.input_config, %struct.input_config* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.input_config*, %struct.input_config** %3, align 8
  %75 = getelementptr inbounds %struct.input_config, %struct.input_config* %74, i32 0, i32 5
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.input_config*, %struct.input_config** %4, align 8
  %78 = getelementptr inbounds %struct.input_config, %struct.input_config* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @INT_MIN, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.input_config*, %struct.input_config** %4, align 8
  %84 = getelementptr inbounds %struct.input_config, %struct.input_config* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.input_config*, %struct.input_config** %3, align 8
  %87 = getelementptr inbounds %struct.input_config, %struct.input_config* %86, i32 0, i32 6
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.input_config*, %struct.input_config** %4, align 8
  %90 = getelementptr inbounds %struct.input_config, %struct.input_config* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @INT_MIN, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.input_config*, %struct.input_config** %4, align 8
  %96 = getelementptr inbounds %struct.input_config, %struct.input_config* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.input_config*, %struct.input_config** %3, align 8
  %99 = getelementptr inbounds %struct.input_config, %struct.input_config* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.input_config*, %struct.input_config** %4, align 8
  %102 = getelementptr inbounds %struct.input_config, %struct.input_config* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FLT_MIN, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.input_config*, %struct.input_config** %4, align 8
  %108 = getelementptr inbounds %struct.input_config, %struct.input_config* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.input_config*, %struct.input_config** %3, align 8
  %111 = getelementptr inbounds %struct.input_config, %struct.input_config* %110, i32 0, i32 8
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %106, %100
  %113 = load %struct.input_config*, %struct.input_config** %4, align 8
  %114 = getelementptr inbounds %struct.input_config, %struct.input_config* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FLT_MIN, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.input_config*, %struct.input_config** %4, align 8
  %120 = getelementptr inbounds %struct.input_config, %struct.input_config* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.input_config*, %struct.input_config** %3, align 8
  %123 = getelementptr inbounds %struct.input_config, %struct.input_config* %122, i32 0, i32 9
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %118, %112
  %125 = load %struct.input_config*, %struct.input_config** %4, align 8
  %126 = getelementptr inbounds %struct.input_config, %struct.input_config* %125, i32 0, i32 10
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @INT_MIN, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.input_config*, %struct.input_config** %4, align 8
  %132 = getelementptr inbounds %struct.input_config, %struct.input_config* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.input_config*, %struct.input_config** %3, align 8
  %135 = getelementptr inbounds %struct.input_config, %struct.input_config* %134, i32 0, i32 10
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %130, %124
  %137 = load %struct.input_config*, %struct.input_config** %4, align 8
  %138 = getelementptr inbounds %struct.input_config, %struct.input_config* %137, i32 0, i32 11
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @INT_MIN, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.input_config*, %struct.input_config** %4, align 8
  %144 = getelementptr inbounds %struct.input_config, %struct.input_config* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.input_config*, %struct.input_config** %3, align 8
  %147 = getelementptr inbounds %struct.input_config, %struct.input_config* %146, i32 0, i32 11
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %142, %136
  %149 = load %struct.input_config*, %struct.input_config** %4, align 8
  %150 = getelementptr inbounds %struct.input_config, %struct.input_config* %149, i32 0, i32 12
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @INT_MIN, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.input_config*, %struct.input_config** %4, align 8
  %156 = getelementptr inbounds %struct.input_config, %struct.input_config* %155, i32 0, i32 12
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.input_config*, %struct.input_config** %3, align 8
  %159 = getelementptr inbounds %struct.input_config, %struct.input_config* %158, i32 0, i32 12
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.input_config*, %struct.input_config** %4, align 8
  %162 = getelementptr inbounds %struct.input_config, %struct.input_config* %161, i32 0, i32 13
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @INT_MIN, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.input_config*, %struct.input_config** %4, align 8
  %168 = getelementptr inbounds %struct.input_config, %struct.input_config* %167, i32 0, i32 13
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.input_config*, %struct.input_config** %3, align 8
  %171 = getelementptr inbounds %struct.input_config, %struct.input_config* %170, i32 0, i32 13
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.input_config*, %struct.input_config** %4, align 8
  %174 = getelementptr inbounds %struct.input_config, %struct.input_config* %173, i32 0, i32 14
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @INT_MIN, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %172
  %179 = load %struct.input_config*, %struct.input_config** %4, align 8
  %180 = getelementptr inbounds %struct.input_config, %struct.input_config* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.input_config*, %struct.input_config** %3, align 8
  %183 = getelementptr inbounds %struct.input_config, %struct.input_config* %182, i32 0, i32 14
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.input_config*, %struct.input_config** %4, align 8
  %186 = getelementptr inbounds %struct.input_config, %struct.input_config* %185, i32 0, i32 15
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @INT_MIN, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.input_config*, %struct.input_config** %4, align 8
  %192 = getelementptr inbounds %struct.input_config, %struct.input_config* %191, i32 0, i32 15
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.input_config*, %struct.input_config** %3, align 8
  %195 = getelementptr inbounds %struct.input_config, %struct.input_config* %194, i32 0, i32 15
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %190, %184
  %197 = load %struct.input_config*, %struct.input_config** %4, align 8
  %198 = getelementptr inbounds %struct.input_config, %struct.input_config* %197, i32 0, i32 16
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @INT_MIN, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load %struct.input_config*, %struct.input_config** %4, align 8
  %204 = getelementptr inbounds %struct.input_config, %struct.input_config* %203, i32 0, i32 16
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.input_config*, %struct.input_config** %3, align 8
  %207 = getelementptr inbounds %struct.input_config, %struct.input_config* %206, i32 0, i32 16
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %196
  %209 = load %struct.input_config*, %struct.input_config** %4, align 8
  %210 = getelementptr inbounds %struct.input_config, %struct.input_config* %209, i32 0, i32 30
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %240

213:                                              ; preds = %208
  %214 = load %struct.input_config*, %struct.input_config** %3, align 8
  %215 = getelementptr inbounds %struct.input_config, %struct.input_config* %214, i32 0, i32 29
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @free(i32* %216)
  %218 = load %struct.input_config*, %struct.input_config** %4, align 8
  %219 = getelementptr inbounds %struct.input_config, %struct.input_config* %218, i32 0, i32 29
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %213
  %223 = load %struct.input_config*, %struct.input_config** %4, align 8
  %224 = getelementptr inbounds %struct.input_config, %struct.input_config* %223, i32 0, i32 29
  %225 = load i32*, i32** %224, align 8
  %226 = call i32* @strdup(i32* %225)
  br label %228

227:                                              ; preds = %213
  br label %228

228:                                              ; preds = %227, %222
  %229 = phi i32* [ %226, %222 ], [ null, %227 ]
  %230 = load %struct.input_config*, %struct.input_config** %3, align 8
  %231 = getelementptr inbounds %struct.input_config, %struct.input_config* %230, i32 0, i32 29
  store i32* %229, i32** %231, align 8
  %232 = load %struct.input_config*, %struct.input_config** %3, align 8
  %233 = getelementptr inbounds %struct.input_config, %struct.input_config* %232, i32 0, i32 29
  %234 = load i32*, i32** %233, align 8
  %235 = icmp ne i32* %234, null
  %236 = zext i1 %235 to i32
  %237 = sext i32 %236 to i64
  %238 = load %struct.input_config*, %struct.input_config** %3, align 8
  %239 = getelementptr inbounds %struct.input_config, %struct.input_config* %238, i32 0, i32 30
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %228, %208
  %241 = load %struct.input_config*, %struct.input_config** %4, align 8
  %242 = getelementptr inbounds %struct.input_config, %struct.input_config* %241, i32 0, i32 28
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %256

245:                                              ; preds = %240
  %246 = load %struct.input_config*, %struct.input_config** %3, align 8
  %247 = getelementptr inbounds %struct.input_config, %struct.input_config* %246, i32 0, i32 28
  %248 = load i32*, i32** %247, align 8
  %249 = call i32 @free(i32* %248)
  %250 = load %struct.input_config*, %struct.input_config** %4, align 8
  %251 = getelementptr inbounds %struct.input_config, %struct.input_config* %250, i32 0, i32 28
  %252 = load i32*, i32** %251, align 8
  %253 = call i32* @strdup(i32* %252)
  %254 = load %struct.input_config*, %struct.input_config** %3, align 8
  %255 = getelementptr inbounds %struct.input_config, %struct.input_config* %254, i32 0, i32 28
  store i32* %253, i32** %255, align 8
  br label %256

256:                                              ; preds = %245, %240
  %257 = load %struct.input_config*, %struct.input_config** %4, align 8
  %258 = getelementptr inbounds %struct.input_config, %struct.input_config* %257, i32 0, i32 27
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %272

261:                                              ; preds = %256
  %262 = load %struct.input_config*, %struct.input_config** %3, align 8
  %263 = getelementptr inbounds %struct.input_config, %struct.input_config* %262, i32 0, i32 27
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @free(i32* %264)
  %266 = load %struct.input_config*, %struct.input_config** %4, align 8
  %267 = getelementptr inbounds %struct.input_config, %struct.input_config* %266, i32 0, i32 27
  %268 = load i32*, i32** %267, align 8
  %269 = call i32* @strdup(i32* %268)
  %270 = load %struct.input_config*, %struct.input_config** %3, align 8
  %271 = getelementptr inbounds %struct.input_config, %struct.input_config* %270, i32 0, i32 27
  store i32* %269, i32** %271, align 8
  br label %272

272:                                              ; preds = %261, %256
  %273 = load %struct.input_config*, %struct.input_config** %4, align 8
  %274 = getelementptr inbounds %struct.input_config, %struct.input_config* %273, i32 0, i32 26
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load %struct.input_config*, %struct.input_config** %3, align 8
  %279 = getelementptr inbounds %struct.input_config, %struct.input_config* %278, i32 0, i32 26
  %280 = load i32*, i32** %279, align 8
  %281 = call i32 @free(i32* %280)
  %282 = load %struct.input_config*, %struct.input_config** %4, align 8
  %283 = getelementptr inbounds %struct.input_config, %struct.input_config* %282, i32 0, i32 26
  %284 = load i32*, i32** %283, align 8
  %285 = call i32* @strdup(i32* %284)
  %286 = load %struct.input_config*, %struct.input_config** %3, align 8
  %287 = getelementptr inbounds %struct.input_config, %struct.input_config* %286, i32 0, i32 26
  store i32* %285, i32** %287, align 8
  br label %288

288:                                              ; preds = %277, %272
  %289 = load %struct.input_config*, %struct.input_config** %4, align 8
  %290 = getelementptr inbounds %struct.input_config, %struct.input_config* %289, i32 0, i32 25
  %291 = load i32*, i32** %290, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load %struct.input_config*, %struct.input_config** %3, align 8
  %295 = getelementptr inbounds %struct.input_config, %struct.input_config* %294, i32 0, i32 25
  %296 = load i32*, i32** %295, align 8
  %297 = call i32 @free(i32* %296)
  %298 = load %struct.input_config*, %struct.input_config** %4, align 8
  %299 = getelementptr inbounds %struct.input_config, %struct.input_config* %298, i32 0, i32 25
  %300 = load i32*, i32** %299, align 8
  %301 = call i32* @strdup(i32* %300)
  %302 = load %struct.input_config*, %struct.input_config** %3, align 8
  %303 = getelementptr inbounds %struct.input_config, %struct.input_config* %302, i32 0, i32 25
  store i32* %301, i32** %303, align 8
  br label %304

304:                                              ; preds = %293, %288
  %305 = load %struct.input_config*, %struct.input_config** %4, align 8
  %306 = getelementptr inbounds %struct.input_config, %struct.input_config* %305, i32 0, i32 24
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %320

309:                                              ; preds = %304
  %310 = load %struct.input_config*, %struct.input_config** %3, align 8
  %311 = getelementptr inbounds %struct.input_config, %struct.input_config* %310, i32 0, i32 24
  %312 = load i32*, i32** %311, align 8
  %313 = call i32 @free(i32* %312)
  %314 = load %struct.input_config*, %struct.input_config** %4, align 8
  %315 = getelementptr inbounds %struct.input_config, %struct.input_config* %314, i32 0, i32 24
  %316 = load i32*, i32** %315, align 8
  %317 = call i32* @strdup(i32* %316)
  %318 = load %struct.input_config*, %struct.input_config** %3, align 8
  %319 = getelementptr inbounds %struct.input_config, %struct.input_config* %318, i32 0, i32 24
  store i32* %317, i32** %319, align 8
  br label %320

320:                                              ; preds = %309, %304
  %321 = load %struct.input_config*, %struct.input_config** %4, align 8
  %322 = getelementptr inbounds %struct.input_config, %struct.input_config* %321, i32 0, i32 17
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @INT_MIN, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %332

326:                                              ; preds = %320
  %327 = load %struct.input_config*, %struct.input_config** %4, align 8
  %328 = getelementptr inbounds %struct.input_config, %struct.input_config* %327, i32 0, i32 17
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.input_config*, %struct.input_config** %3, align 8
  %331 = getelementptr inbounds %struct.input_config, %struct.input_config* %330, i32 0, i32 17
  store i64 %329, i64* %331, align 8
  br label %332

332:                                              ; preds = %326, %320
  %333 = load %struct.input_config*, %struct.input_config** %4, align 8
  %334 = getelementptr inbounds %struct.input_config, %struct.input_config* %333, i32 0, i32 18
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @INT_MIN, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %332
  %339 = load %struct.input_config*, %struct.input_config** %4, align 8
  %340 = getelementptr inbounds %struct.input_config, %struct.input_config* %339, i32 0, i32 18
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.input_config*, %struct.input_config** %3, align 8
  %343 = getelementptr inbounds %struct.input_config, %struct.input_config* %342, i32 0, i32 18
  store i64 %341, i64* %343, align 8
  br label %344

344:                                              ; preds = %338, %332
  %345 = load %struct.input_config*, %struct.input_config** %4, align 8
  %346 = getelementptr inbounds %struct.input_config, %struct.input_config* %345, i32 0, i32 23
  %347 = load i32*, i32** %346, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %365

349:                                              ; preds = %344
  %350 = load %struct.input_config*, %struct.input_config** %3, align 8
  %351 = getelementptr inbounds %struct.input_config, %struct.input_config* %350, i32 0, i32 23
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @free(i32* %352)
  %354 = call i8* @malloc(i32 4)
  %355 = bitcast i8* %354 to i32*
  %356 = load %struct.input_config*, %struct.input_config** %3, align 8
  %357 = getelementptr inbounds %struct.input_config, %struct.input_config* %356, i32 0, i32 23
  store i32* %355, i32** %357, align 8
  %358 = load %struct.input_config*, %struct.input_config** %3, align 8
  %359 = getelementptr inbounds %struct.input_config, %struct.input_config* %358, i32 0, i32 23
  %360 = load i32*, i32** %359, align 8
  %361 = load %struct.input_config*, %struct.input_config** %4, align 8
  %362 = getelementptr inbounds %struct.input_config, %struct.input_config* %361, i32 0, i32 23
  %363 = load i32*, i32** %362, align 8
  %364 = call i32 @memcpy(i32* %360, i32* %363, i32 4)
  br label %365

365:                                              ; preds = %349, %344
  %366 = load %struct.input_config*, %struct.input_config** %4, align 8
  %367 = getelementptr inbounds %struct.input_config, %struct.input_config* %366, i32 0, i32 22
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %365
  %371 = load %struct.input_config*, %struct.input_config** %4, align 8
  %372 = getelementptr inbounds %struct.input_config, %struct.input_config* %371, i32 0, i32 22
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.input_config*, %struct.input_config** %3, align 8
  %375 = getelementptr inbounds %struct.input_config, %struct.input_config* %374, i32 0, i32 22
  store i64 %373, i64* %375, align 8
  br label %376

376:                                              ; preds = %370, %365
  %377 = load %struct.input_config*, %struct.input_config** %4, align 8
  %378 = getelementptr inbounds %struct.input_config, %struct.input_config* %377, i32 0, i32 21
  %379 = load i32*, i32** %378, align 8
  %380 = icmp ne i32* %379, null
  br i1 %380, label %381, label %392

381:                                              ; preds = %376
  %382 = load %struct.input_config*, %struct.input_config** %3, align 8
  %383 = getelementptr inbounds %struct.input_config, %struct.input_config* %382, i32 0, i32 21
  %384 = load i32*, i32** %383, align 8
  %385 = call i32 @free(i32* %384)
  %386 = load %struct.input_config*, %struct.input_config** %4, align 8
  %387 = getelementptr inbounds %struct.input_config, %struct.input_config* %386, i32 0, i32 21
  %388 = load i32*, i32** %387, align 8
  %389 = call i32* @strdup(i32* %388)
  %390 = load %struct.input_config*, %struct.input_config** %3, align 8
  %391 = getelementptr inbounds %struct.input_config, %struct.input_config* %390, i32 0, i32 21
  store i32* %389, i32** %391, align 8
  br label %392

392:                                              ; preds = %381, %376
  %393 = load %struct.input_config*, %struct.input_config** %4, align 8
  %394 = getelementptr inbounds %struct.input_config, %struct.input_config* %393, i32 0, i32 20
  %395 = load i32*, i32** %394, align 8
  %396 = icmp ne i32* %395, null
  br i1 %396, label %397, label %413

397:                                              ; preds = %392
  %398 = load %struct.input_config*, %struct.input_config** %3, align 8
  %399 = getelementptr inbounds %struct.input_config, %struct.input_config* %398, i32 0, i32 20
  %400 = load i32*, i32** %399, align 8
  %401 = call i32 @free(i32* %400)
  %402 = call i8* @malloc(i32 4)
  %403 = bitcast i8* %402 to i32*
  %404 = load %struct.input_config*, %struct.input_config** %3, align 8
  %405 = getelementptr inbounds %struct.input_config, %struct.input_config* %404, i32 0, i32 20
  store i32* %403, i32** %405, align 8
  %406 = load %struct.input_config*, %struct.input_config** %3, align 8
  %407 = getelementptr inbounds %struct.input_config, %struct.input_config* %406, i32 0, i32 20
  %408 = load i32*, i32** %407, align 8
  %409 = load %struct.input_config*, %struct.input_config** %4, align 8
  %410 = getelementptr inbounds %struct.input_config, %struct.input_config* %409, i32 0, i32 20
  %411 = load i32*, i32** %410, align 8
  %412 = call i32 @memcpy(i32* %408, i32* %411, i32 4)
  br label %413

413:                                              ; preds = %397, %392
  %414 = load %struct.input_config*, %struct.input_config** %4, align 8
  %415 = getelementptr inbounds %struct.input_config, %struct.input_config* %414, i32 0, i32 19
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %436

419:                                              ; preds = %413
  %420 = load %struct.input_config*, %struct.input_config** %4, align 8
  %421 = getelementptr inbounds %struct.input_config, %struct.input_config* %420, i32 0, i32 19
  %422 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i32 0, i32 1
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.input_config*, %struct.input_config** %3, align 8
  %425 = getelementptr inbounds %struct.input_config, %struct.input_config* %424, i32 0, i32 19
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  store i64 %423, i64* %426, align 8
  %427 = load %struct.input_config*, %struct.input_config** %3, align 8
  %428 = getelementptr inbounds %struct.input_config, %struct.input_config* %427, i32 0, i32 19
  %429 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %428, i32 0, i32 0
  %430 = load i32*, i32** %429, align 8
  %431 = load %struct.input_config*, %struct.input_config** %4, align 8
  %432 = getelementptr inbounds %struct.input_config, %struct.input_config* %431, i32 0, i32 19
  %433 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %432, i32 0, i32 0
  %434 = load i32*, i32** %433, align 8
  %435 = call i32 @memcpy(i32* %430, i32* %434, i32 8)
  br label %436

436:                                              ; preds = %419, %413
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
