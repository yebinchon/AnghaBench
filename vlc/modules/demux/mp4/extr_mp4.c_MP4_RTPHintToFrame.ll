; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_RTPHintToFrame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_RTPHintToFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i32, i32, i8* }

@SAMPLEHEADERSIZE = common dso_local global i32 0, align 4
@RTPPACKETSIZE = common dso_local global i32 0, align 4
@CONSTRUCTORSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Sample not large enough for necessary structs\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Unhandled constructor in RTP Reception Hint Track. Type:%u\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Sample buffer is smaller than sample\00", align 1
@__const.MP4_RTPHintToFrame.synccode = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.TYPE_10__*, i64)* @MP4_RTPHintToFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @MP4_RTPHintToFrame(i32* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @SAMPLEHEADERSIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %8, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  store i64 0, i64* %10, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SAMPLEHEADERSIZE, align 4
  %28 = load i32, i32* @RTPPACKETSIZE, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @CONSTRUCTORSIZE, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @msg_Err(i32* %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = call i32 @block_Release(%struct.TYPE_10__* %36)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %243

38:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %219, %38
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %222

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = ptrtoint i32* %44 to i64
  %49 = ptrtoint i32* %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 4
  %52 = load i32, i32* @RTPPACKETSIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i32, i32* @CONSTRUCTORSIZE, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %54, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ugt i64 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %234

64:                                               ; preds = %43
  %65 = load i32, i32* @RTPPACKETSIZE, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i8* @GetWBE(i32* %78)
  %80 = ptrtoint i8* %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i64 %80, i64* %81, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = call i8* @GetDWBE(i32* %83)
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 6
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = call i8* @GetDWBE(i32* %87)
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i64 %89, i64* %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = call i8* @GetWBE(i32* %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i32 %94, i32* %95, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 14
  %98 = call i8* @GetWBE(i32* %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @CONSTRUCTORSIZE, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32* %104, i32** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 2
  br i1 %107, label %120, label %108

108:                                              ; preds = %64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 1
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %125

120:                                              ; preds = %116, %112, %108, %64
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32*, i8*, ...) @msg_Err(i32* %121, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  br label %234

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %127, %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = icmp sgt i64 %130, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %125
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 (i32*, i8*, ...) @msg_Err(i32* %137, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %234

139:                                              ; preds = %125
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = icmp ne %struct.TYPE_10__* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %139
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %144, %146
  %148 = add i64 %147, 4
  %149 = call %struct.TYPE_10__* @block_Realloc(%struct.TYPE_10__* %143, i32 0, i64 %148)
  br label %157

150:                                              ; preds = %139
  %151 = load i64, i64* %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = add i64 %151, %153
  %155 = add i64 %154, 4
  %156 = call %struct.TYPE_10__* @block_Alloc(i64 %155)
  br label %157

157:                                              ; preds = %150, %142
  %158 = phi %struct.TYPE_10__* [ %149, %142 ], [ %156, %150 ]
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %13, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %160 = icmp ne %struct.TYPE_10__* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  br label %234

162:                                              ; preds = %157
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %9, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %10, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32* %168, i32** %14, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32* %174, i32** %15, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 31
  store i32 %177, i32* %16, align 4
  %178 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %178, i8* align 16 bitcast ([4 x i32]* @__const.MP4_RTPHintToFrame.synccode to i8*), i64 16, i1 false)
  %179 = load i32*, i32** %15, align 8
  %180 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %181 = call i64 @memcmp(i32* %179, i32* %180, i32 4)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %162
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, 7
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %16, align 4
  %188 = icmp eq i32 %187, 8
  br i1 %188, label %189, label %192

189:                                              ; preds = %186, %183
  %190 = load i32*, i32** %14, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %14, align 8
  store i32 0, i32* %190, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %14, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  store i32 0, i32* %194, align 4
  %195 = load i32*, i32** %14, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  store i32 0, i32* %196, align 4
  %197 = load i32*, i32** %14, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 2
  store i32 1, i32* %198, align 4
  %199 = load i32*, i32** %14, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  store i32* %200, i32** %14, align 8
  br label %201

201:                                              ; preds = %192, %162
  %202 = load i32*, i32** %14, align 8
  %203 = load i32*, i32** %15, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = call i32 @memcpy(i32* %202, i32* %203, i64 %205)
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i32*, i32** %14, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 %208
  store i32* %210, i32** %14, align 8
  %211 = load i32*, i32** %14, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = ptrtoint i32* %211 to i64
  %216 = ptrtoint i32* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 4
  store i64 %218, i64* %10, align 8
  br label %219

219:                                              ; preds = %201
  %220 = load i64, i64* %11, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %11, align 8
  br label %39

222:                                              ; preds = %39
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %224 = call i32 @block_Release(%struct.TYPE_10__* %223)
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %226 = icmp ne %struct.TYPE_10__* %225, null
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load i64, i64* %10, align 8
  %229 = trunc i64 %228 to i32
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %233, %struct.TYPE_10__** %4, align 8
  br label %243

234:                                              ; preds = %161, %136, %120, %63
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %236 = call i32 @block_Release(%struct.TYPE_10__* %235)
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %238 = icmp ne %struct.TYPE_10__* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = call i32 @block_Release(%struct.TYPE_10__* %240)
  br label %242

242:                                              ; preds = %239, %234
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %243

243:                                              ; preds = %242, %232, %33
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %244
}

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local i32 @block_Release(%struct.TYPE_10__*) #1

declare dso_local i8* @GetWBE(i32*) #1

declare dso_local i8* @GetDWBE(i32*) #1

declare dso_local %struct.TYPE_10__* @block_Realloc(%struct.TYPE_10__*, i32, i64) #1

declare dso_local %struct.TYPE_10__* @block_Alloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
