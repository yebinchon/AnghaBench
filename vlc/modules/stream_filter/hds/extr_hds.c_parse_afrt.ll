; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_parse_afrt.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_parse_afrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__*, i32, i8* }
%struct.TYPE_4__ = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [29 x i8] c"Not enough afrt data %u, %td\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"afrt\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cant find afrt in bootstrap\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"afrt is too short\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Couldn't find quality entry string in afrt\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"No more space in afrt after quality entries\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Not enough data in afrt\00", align 1
@MAX_HDS_FRAGMENT_RUNS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"Too many fragment runs, exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_5__*, i32*, i32*)* @parse_afrt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_afrt(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %8, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i8* @U32_AT(i32* %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = icmp sgt i64 %21, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = ptrtoint i32* %30 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = icmp slt i64 %35, 9
  br i1 %36, label %37, label %47

37:                                               ; preds = %29, %4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = call i32 (i32*, i8*, ...) @msg_Err(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %45)
  store i32* null, i32** %5, align 8
  br label %296

47:                                               ; preds = %29
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 4
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i64 @memcmp(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 (i32*, i8*, ...) @msg_Err(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

56:                                               ; preds = %47
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = ptrtoint i32* %61 to i64
  %64 = ptrtoint i32* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 4
  %67 = icmp slt i64 %66, 9
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 (i32*, i8*, ...) @msg_Err(i32* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

71:                                               ; preds = %56
  %72 = load i32*, i32** %10, align 8
  %73 = call i8* @U32_AT(i32* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  store i32* %77, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %13, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %10, align 8
  br label %88

88:                                               ; preds = %127, %83
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %13, align 4
  %91 = icmp sgt i32 %89, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %88
  %93 = load i32*, i32** %10, align 8
  %94 = bitcast i32* %93 to i8*
  store i8* %94, i8** %14, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = ptrtoint i32* %96 to i64
  %99 = ptrtoint i32* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sdiv exact i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32* @memchr(i32* %95, i8 signext 0, i32 %102)
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %92
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 (i32*, i8*, ...) @msg_Err(i32* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

109:                                              ; preds = %92
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %14, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @strlen(i32 %121)
  %123 = call i32 @strncmp(i8* %115, i32 %118, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  store i32 1, i32* %12, align 4
  br label %126

126:                                              ; preds = %125, %114
  br label %127

127:                                              ; preds = %126, %109
  br label %88

128:                                              ; preds = %88
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = ptrtoint i32* %129 to i64
  %132 = ptrtoint i32* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 4
  %135 = icmp slt i64 %134, 5
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 (i32*, i8*, ...) @msg_Err(i32* %137, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

139:                                              ; preds = %128
  %140 = load i32*, i32** %10, align 8
  %141 = call i8* @U32_AT(i32* %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %15, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  store i32* %144, i32** %10, align 8
  br label %145

145:                                              ; preds = %236, %139
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %15, align 4
  %148 = icmp sgt i32 %146, 0
  br i1 %148, label %149, label %241

149:                                              ; preds = %145
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = ptrtoint i32* %150 to i64
  %153 = ptrtoint i32* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 4
  %156 = icmp slt i64 %155, 16
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i32*, i32** %6, align 8
  %159 = call i32 (i32*, i8*, ...) @msg_Err(i32* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

160:                                              ; preds = %149
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MAX_HDS_FRAGMENT_RUNS, align 8
  %165 = icmp uge i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32*, i32** %6, align 8
  %168 = call i32 (i32*, i8*, ...) @msg_Err(i32* %167, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  store i32* null, i32** %5, align 8
  br label %296

169:                                              ; preds = %160
  %170 = load i32*, i32** %10, align 8
  %171 = call i8* @U32_AT(i32* %170)
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 3
  store i8* %171, i8** %179, align 8
  %180 = load i32*, i32** %10, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 4
  store i32* %181, i32** %10, align 8
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @U64_AT(i32* %182)
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  store i32 %183, i32* %191, align 8
  %192 = load i32*, i32** %10, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  store i32* %193, i32** %10, align 8
  %194 = load i32*, i32** %10, align 8
  %195 = call i8* @U32_AT(i32* %194)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  store i8* %195, i8** %203, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  store i32* %205, i32** %10, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i8*, i8** %221, align 8
  %223 = icmp eq i8* %222, null
  br i1 %223, label %224, label %236

224:                                              ; preds = %169
  %225 = load i32*, i32** %10, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %10, align 8
  %227 = load i32, i32* %225, align 4
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i32 %227, i32* %235, align 8
  br label %236

236:                                              ; preds = %224, %169
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %238, align 8
  br label %145

241:                                              ; preds = %145
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %243, align 8
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = sub i64 %247, 1
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %294

253:                                              ; preds = %241
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = sub i64 %259, 1
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %294

265:                                              ; preds = %253
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = sub i64 %271, 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %294

277:                                              ; preds = %265
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %279, align 8
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = sub i64 %283, 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %277
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %292, -1
  store i64 %293, i64* %291, align 8
  br label %294

294:                                              ; preds = %289, %277, %265, %253, %241
  %295 = load i32*, i32** %10, align 8
  store i32* %295, i32** %5, align 8
  br label %296

296:                                              ; preds = %294, %166, %157, %136, %106, %68, %53, %37
  %297 = load i32*, i32** %5, align 8
  ret i32* %297
}

declare dso_local i8* @U32_AT(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @U64_AT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
