; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1.c_PacketizeOBU.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1.c_PacketizeOBU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i64, i8*, i8*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_25__*, %struct.TYPE_25__** }

@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fed with invalid OBU\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid OBU header in sequence, discarding\00", align 1
@VLC_TICK_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (%struct.TYPE_24__*, %struct.TYPE_25__**)* @PacketizeOBU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @PacketizeOBU(%struct.TYPE_24__* %0, %struct.TYPE_25__** %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_25__**, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_25__** %1, %struct.TYPE_25__*** %5, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  store %struct.TYPE_26__* %17, %struct.TYPE_26__** %6, align 8
  %18 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %19 = icmp ne %struct.TYPE_25__** %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi %struct.TYPE_25__* [ %22, %20 ], [ null, %23 ]
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %7, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %27 = icmp ne %struct.TYPE_25__* %26, null
  br i1 %27, label %28, label %78

28:                                               ; preds = %24
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %33 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %28
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %39 = call %struct.TYPE_25__* @PacketizeOBU(%struct.TYPE_24__* %38, %struct.TYPE_25__** null)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %8, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %41 = icmp ne %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %43, %struct.TYPE_25__** %3, align 8
  br label %231

44:                                               ; preds = %37
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %46 = call i32 @PacketizeFlush(%struct.TYPE_24__* %45)
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %55 = call i32 @block_Release(%struct.TYPE_25__* %54)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %231

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @AV1_OBUIsValid(i64 %60, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = call i32 @msg_Warn(%struct.TYPE_24__* %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = call i32 @block_Release(%struct.TYPE_25__* %69)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %3, align 8
  br label %231

71:                                               ; preds = %57
  %72 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %77 = call i32 @block_ChainLastAppend(%struct.TYPE_25__*** %75, %struct.TYPE_25__* %76)
  br label %78

78:                                               ; preds = %71, %24
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %9, align 8
  br label %79

79:                                               ; preds = %205, %122, %78
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = icmp ne %struct.TYPE_25__* %83, null
  br i1 %84, label %85, label %206

85:                                               ; preds = %79
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  store %struct.TYPE_25__* %89, %struct.TYPE_25__** %10, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @AV1_OBU_iterator_init(i32* %11, i64 %92, i64 %95)
  %97 = call i32 @AV1_OBU_iterate_next(i32* %11, i32** %12, i64* %13)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %125, label %99

99:                                               ; preds = %85
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %101 = call i32 @msg_Warn(%struct.TYPE_24__* %100, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 0
  store %struct.TYPE_25__* %104, %struct.TYPE_25__** %107, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %109, align 8
  %111 = icmp eq %struct.TYPE_25__* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  store %struct.TYPE_25__** %115, %struct.TYPE_25__*** %118, align 8
  br label %122

119:                                              ; preds = %99
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 5
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %121, align 8
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %124 = call i32 @block_Release(%struct.TYPE_25__* %123)
  br label %79

125:                                              ; preds = %85
  %126 = load i64, i64* %13, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %125
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %139, align 8
  %141 = icmp eq %struct.TYPE_25__* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %131
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  store %struct.TYPE_25__** %145, %struct.TYPE_25__*** %148, align 8
  br label %152

149:                                              ; preds = %131
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 5
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %151, align 8
  br label %152

152:                                              ; preds = %149, %142
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %14, align 8
  br label %198

154:                                              ; preds = %125
  %155 = load i64, i64* %13, align 8
  %156 = call %struct.TYPE_25__* @block_Alloc(i64 %155)
  store %struct.TYPE_25__* %156, %struct.TYPE_25__** %14, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @memcpy(i64 %159, i64 %162, i64 %163)
  %165 = load i64, i64* %13, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, %165
  store i64 %169, i64* %167, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add i64 %173, %170
  store i64 %174, i64* %172, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 4
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 3
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  %192 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 4
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @VLC_TICK_INVALID, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 3
  store i8* %195, i8** %197, align 8
  br label %198

198:                                              ; preds = %154, %152
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %201 = call %struct.TYPE_25__* @ParseOBUBlock(%struct.TYPE_24__* %199, %struct.TYPE_25__* %200)
  store %struct.TYPE_25__* %201, %struct.TYPE_25__** %9, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %203 = icmp ne %struct.TYPE_25__* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %206

205:                                              ; preds = %198
  br label %79

206:                                              ; preds = %204, %79
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %208 = icmp ne %struct.TYPE_25__* %207, null
  br i1 %208, label %220, label %209

209:                                              ; preds = %206
  %210 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %5, align 8
  %211 = icmp eq %struct.TYPE_25__** %210, null
  br i1 %211, label %212, label %220

212:                                              ; preds = %209
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = call %struct.TYPE_25__* @OutputQueues(%struct.TYPE_24__* %213, i32 %218)
  store %struct.TYPE_25__* %219, %struct.TYPE_25__** %9, align 8
  br label %220

220:                                              ; preds = %212, %209, %206
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %222 = icmp ne %struct.TYPE_25__* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %226 = call %struct.TYPE_25__* @GatherAndValidateChain(%struct.TYPE_24__* %224, %struct.TYPE_25__* %225)
  store %struct.TYPE_25__* %226, %struct.TYPE_25__** %9, align 8
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %228 = call i32 @UpdateDecoderFormat(%struct.TYPE_24__* %227)
  br label %229

229:                                              ; preds = %223, %220
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %230, %struct.TYPE_25__** %3, align 8
  br label %231

231:                                              ; preds = %229, %66, %53, %42
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  ret %struct.TYPE_25__* %232
}

declare dso_local i32 @PacketizeFlush(%struct.TYPE_24__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_25__*) #1

declare dso_local i32 @AV1_OBUIsValid(i64, i64) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @block_ChainLastAppend(%struct.TYPE_25__***, %struct.TYPE_25__*) #1

declare dso_local i32 @AV1_OBU_iterator_init(i32*, i64, i64) #1

declare dso_local i32 @AV1_OBU_iterate_next(i32*, i32**, i64*) #1

declare dso_local %struct.TYPE_25__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local %struct.TYPE_25__* @ParseOBUBlock(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @OutputQueues(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @GatherAndValidateChain(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @UpdateDecoderFormat(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
