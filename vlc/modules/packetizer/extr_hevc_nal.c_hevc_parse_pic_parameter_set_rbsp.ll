; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_pic_parameter_set_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_pic_parameter_set_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@HEVC_PPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_SPS_ID_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @hevc_parse_pic_parameter_set_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_pic_parameter_set_rbsp(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @bs_remain(i32* %8)
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %299

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @bs_read_ue(i32* %13)
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HEVC_PPS_ID_MAX, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @bs_remain(i32* %24)
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %12
  store i32 0, i32* %3, align 4
  br label %299

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @bs_read_ue(i32* %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HEVC_SPS_ID_MAX, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %299

40:                                               ; preds = %28
  %41 = load i32*, i32** %4, align 8
  %42 = call i8* @bs_read1(i32* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 40
  store i8* %42, i8** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i8* @bs_read1(i32* %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 39
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i8* @bs_read(i32* %49, i32 3)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 38
  store i8* %50, i8** %52, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = call i8* @bs_read1(i32* %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 37
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @bs_read1(i32* %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 36
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = call i8* @bs_read_ue(i32* %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 35
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @bs_read_ue(i32* %65)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 34
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @bs_read_se(i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 33
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @bs_read1(i32* %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 32
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i8* @bs_read1(i32* %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 31
  store i8* %78, i8** %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @bs_read1(i32* %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 30
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 30
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %40
  %90 = load i32*, i32** %4, align 8
  %91 = call i8* @bs_read_ue(i32* %90)
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 29
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %40
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @bs_remain(i32* %95)
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %299

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = call i8* @bs_read_se(i32* %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 28
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = call i8* @bs_read_se(i32* %104)
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 27
  store i8* %105, i8** %107, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = call i8* @bs_read1(i32* %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 26
  store i8* %109, i8** %111, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @bs_read1(i32* %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 25
  store i8* %113, i8** %115, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i8* @bs_read1(i32* %116)
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 24
  store i8* %117, i8** %119, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = call i8* @bs_read1(i32* %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 23
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = call i8* @bs_read1(i32* %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 21
  store i8* %125, i8** %127, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i8* @bs_read1(i32* %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 22
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 21
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %200

136:                                              ; preds = %99
  %137 = load i32*, i32** %4, align 8
  %138 = call i8* @bs_read_ue(i32* %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** %4, align 8
  %143 = call i8* @bs_read_ue(i32* %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = call i8* @bs_read1(i32* %147)
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 20
  store i8* %148, i8** %150, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 20
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %195, label %155

155:                                              ; preds = %136
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @bs_remain(i32* %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %160, %163
  %165 = add nsw i32 %164, 1
  %166 = icmp slt i32 %157, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  store i32 0, i32* %3, align 4
  br label %299

168:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %178, %168
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = icmp ult i32 %170, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %169
  %176 = load i32*, i32** %4, align 8
  %177 = call i8* @bs_read_ue(i32* %176)
  br label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %6, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %169

181:                                              ; preds = %169
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %191, %181
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp ult i32 %183, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %182
  %189 = load i32*, i32** %4, align 8
  %190 = call i8* @bs_read_ue(i32* %189)
  br label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %7, align 4
  br label %182

194:                                              ; preds = %182
  br label %195

195:                                              ; preds = %194, %136
  %196 = load i32*, i32** %4, align 8
  %197 = call i8* @bs_read1(i32* %196)
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 19
  store i8* %197, i8** %199, align 8
  br label %200

200:                                              ; preds = %195, %99
  %201 = load i32*, i32** %4, align 8
  %202 = call i8* @bs_read1(i32* %201)
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 18
  store i8* %202, i8** %204, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = call i8* @bs_read1(i32* %205)
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 17
  store i8* %206, i8** %208, align 8
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 17
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %236

213:                                              ; preds = %200
  %214 = load i32*, i32** %4, align 8
  %215 = call i8* @bs_read1(i32* %214)
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 16
  store i8* %215, i8** %217, align 8
  %218 = load i32*, i32** %4, align 8
  %219 = call i8* @bs_read1(i32* %218)
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 15
  store i8* %219, i8** %221, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 15
  %224 = load i8*, i8** %223, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %235, label %226

226:                                              ; preds = %213
  %227 = load i32*, i32** %4, align 8
  %228 = call i8* @bs_read_se(i32* %227)
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 14
  store i8* %228, i8** %230, align 8
  %231 = load i32*, i32** %4, align 8
  %232 = call i8* @bs_read_se(i32* %231)
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 13
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %226, %213
  br label %236

236:                                              ; preds = %235, %200
  %237 = load i32*, i32** %4, align 8
  %238 = call i8* @bs_read1(i32* %237)
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 12
  store i8* %238, i8** %240, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 12
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %250

245:                                              ; preds = %236
  %246 = load i32*, i32** %4, align 8
  %247 = call i32 @hevc_parse_scaling_list_rbsp(i32* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  store i32 0, i32* %3, align 4
  br label %299

250:                                              ; preds = %245, %236
  %251 = load i32*, i32** %4, align 8
  %252 = call i8* @bs_read1(i32* %251)
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 11
  store i8* %252, i8** %254, align 8
  %255 = load i32*, i32** %4, align 8
  %256 = call i8* @bs_read_ue(i32* %255)
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 10
  store i8* %256, i8** %258, align 8
  %259 = load i32*, i32** %4, align 8
  %260 = call i8* @bs_read1(i32* %259)
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 9
  store i8* %260, i8** %262, align 8
  %263 = load i32*, i32** %4, align 8
  %264 = call i32 @bs_remain(i32* %263)
  %265 = icmp slt i32 %264, 1
  br i1 %265, label %266, label %267

266:                                              ; preds = %250
  store i32 0, i32* %3, align 4
  br label %299

267:                                              ; preds = %250
  %268 = load i32*, i32** %4, align 8
  %269 = call i8* @bs_read1(i32* %268)
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 8
  store i8* %269, i8** %271, align 8
  %272 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %272, i32 0, i32 8
  %274 = load i8*, i8** %273, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %298

276:                                              ; preds = %267
  %277 = load i32*, i32** %4, align 8
  %278 = call i8* @bs_read1(i32* %277)
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  %281 = load i32*, i32** %4, align 8
  %282 = call i8* @bs_read1(i32* %281)
  %283 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 6
  store i8* %282, i8** %284, align 8
  %285 = load i32*, i32** %4, align 8
  %286 = call i8* @bs_read1(i32* %285)
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 5
  store i8* %286, i8** %288, align 8
  %289 = load i32*, i32** %4, align 8
  %290 = call i32 @bs_remain(i32* %289)
  %291 = icmp slt i32 %290, 5
  br i1 %291, label %292, label %293

292:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %299

293:                                              ; preds = %276
  %294 = load i32*, i32** %4, align 8
  %295 = call i8* @bs_read(i32* %294, i32 5)
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 4
  store i8* %295, i8** %297, align 8
  br label %298

298:                                              ; preds = %293, %267
  store i32 1, i32* %3, align 4
  br label %299

299:                                              ; preds = %298, %292, %266, %249, %167, %98, %39, %27, %11
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i8* @bs_read_ue(i32*) #1

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i8* @bs_read_se(i32*) #1

declare dso_local i32 @hevc_parse_scaling_list_rbsp(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
