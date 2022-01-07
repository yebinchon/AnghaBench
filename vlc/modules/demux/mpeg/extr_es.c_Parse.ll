; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32, i32, %struct.TYPE_28__*, %struct.TYPE_24__, i64, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_21__, %struct.TYPE_27__* (%struct.TYPE_28__*, %struct.TYPE_27__**)* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_27__*, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }

@VLC_TICK_0 = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"did not sync on first block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_27__**)* @Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Parse(%struct.TYPE_25__* %0, %struct.TYPE_27__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__**, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_27__** %1, %struct.TYPE_27__*** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %6, align 8
  %16 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %16, align 8
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @vlc_stream_Tell(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @vlc_stream_Read(i32 %33, i32* null, i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %255

37:                                               ; preds = %30, %22
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_27__* @vlc_stream_Block(i32 %41, i32 %44)
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %7, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %47 = icmp eq %struct.TYPE_27__* %46, null
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %50 = icmp ne %struct.TYPE_27__* %49, null
  br i1 %50, label %51, label %116

51:                                               ; preds = %38
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %92

57:                                               ; preds = %51
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %62
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  store %struct.TYPE_27__* %68, %struct.TYPE_27__** %11, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call %struct.TYPE_27__* @block_Alloc(i64 %71)
  store %struct.TYPE_27__* %72, %struct.TYPE_27__** %7, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %74 = icmp ne %struct.TYPE_27__* %73, null
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %78 = call i32 @block_CopyProperties(%struct.TYPE_27__* %76, %struct.TYPE_27__* %77)
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @swab(i32 %81, i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %75, %67
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %91 = call i32 @block_Release(%struct.TYPE_27__* %90)
  br label %92

92:                                               ; preds = %89, %62, %57, %51
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %94 = icmp ne %struct.TYPE_27__* %93, null
  br i1 %94, label %95, label %115

95:                                               ; preds = %92
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @VLC_TICK_0, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @VLC_TICK_INVALID, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 3
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %92
  br label %116

116:                                              ; preds = %115, %38
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %242, %116
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_27__* (%struct.TYPE_28__*, %struct.TYPE_27__**)*, %struct.TYPE_27__* (%struct.TYPE_28__*, %struct.TYPE_27__**)** %126, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %129, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %132 = icmp ne %struct.TYPE_27__* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  br label %135

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %133
  %136 = phi %struct.TYPE_27__** [ %7, %133 ], [ null, %134 ]
  %137 = call %struct.TYPE_27__* %127(%struct.TYPE_28__* %130, %struct.TYPE_27__** %136)
  store %struct.TYPE_27__* %137, %struct.TYPE_27__** %8, align 8
  %138 = icmp ne %struct.TYPE_27__* %137, null
  br i1 %138, label %139, label %243

139:                                              ; preds = %135
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %233, %139
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %144 = icmp ne %struct.TYPE_27__* %143, null
  br i1 %144, label %145, label %242

145:                                              ; preds = %142
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 6
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %233, label %150

150:                                              ; preds = %145
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = call i64 @es_out_Add(i32 %158, %struct.TYPE_21__* %162)
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 6
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %218

171:                                              ; preds = %150
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %218

177:                                              ; preds = %171
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 5
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %218

183:                                              ; preds = %177
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @INT64_C(i32 8)
  %189 = mul nsw i32 %187, %188
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = mul nsw i32 %189, %196
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sdiv i32 %197, %201
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sdiv i32 %202, %206
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %183
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 3
  store i32 0, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %183
  br label %218

218:                                              ; preds = %217, %177, %171, %150
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %218
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 4
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %223, %218
  br label %233

233:                                              ; preds = %232, %145
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %235, align 8
  store %struct.TYPE_27__* %236, %struct.TYPE_27__** %12, align 8
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %237, i32 0, i32 1
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %238, align 8
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %240 = call i32 @block_ChainLastAppend(%struct.TYPE_27__*** %5, %struct.TYPE_27__* %239)
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %241, %struct.TYPE_27__** %8, align 8
  br label %142

242:                                              ; preds = %142
  br label %122

243:                                              ; preds = %135
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %250 = call i32 @msg_Dbg(%struct.TYPE_25__* %249, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %243
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 0
  store i32 0, i32* %253, align 8
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %251, %36
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @vlc_stream_Tell(i32) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local %struct.TYPE_27__* @vlc_stream_Block(i32, i32) #1

declare dso_local %struct.TYPE_27__* @block_Alloc(i64) #1

declare dso_local i32 @block_CopyProperties(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @swab(i32, i32, i64) #1

declare dso_local i32 @block_Release(%struct.TYPE_27__*) #1

declare dso_local i64 @es_out_Add(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @INT64_C(i32) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_27__***, %struct.TYPE_27__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_25__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
