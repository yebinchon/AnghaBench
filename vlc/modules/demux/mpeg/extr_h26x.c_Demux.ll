; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_Demux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_h26x.c_Demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { double, i32, i32, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_14__, %struct.TYPE_18__* (%struct.TYPE_19__*, %struct.TYPE_18__**)* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { double, i32 }
%struct.TYPE_18__ = type { i64, i32, i64, i32, %struct.TYPE_18__* }

@H26X_PACKET_SIZE = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@VLC_DEMUXER_EOF = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"using %.2f fps\00", align 1
@CLOCK_FREQ = common dso_local global double 0.000000e+00, align 8
@VLC_DEMUXER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @Demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Demux(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @H26X_PACKET_SIZE, align 4
  %20 = call %struct.TYPE_18__* @vlc_stream_Block(i32 %18, i32 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %5, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = icmp eq %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 2
  %27 = call i8* @date_Get(i32* %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %24, %23
  br label %32

32:                                               ; preds = %248, %31
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__* (%struct.TYPE_19__*, %struct.TYPE_18__**)*, %struct.TYPE_18__* (%struct.TYPE_19__*, %struct.TYPE_18__**)** %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = icmp ne %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi %struct.TYPE_18__** [ %5, %43 ], [ null, %44 ]
  %47 = call %struct.TYPE_18__* %37(%struct.TYPE_19__* %40, %struct.TYPE_18__** %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %6, align 8
  %48 = icmp ne %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %249

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %246, %49
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %52 = icmp ne %struct.TYPE_18__* %51, null
  br i1 %52, label %53, label %248

53:                                               ; preds = %50
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %8, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %58, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = icmp ne %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = call i8* @date_Get(i32* %63)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @VLC_TICK_INVALID, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %61, %53
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = call i32* @es_out_Add(i32 %84, %struct.TYPE_14__* %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 4
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %76
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %98 = call i32 @block_ChainRelease(%struct.TYPE_18__* %97)
  %99 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  store i32 %99, i32* %2, align 4
  br label %258

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %100, %71
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BLOCK_FLAG_TYPE_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %9, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %10, align 8
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %11, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 4
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %120 = call i32 @es_out_Send(i32 %115, i32* %118, %struct.TYPE_18__* %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %246

123:                                              ; preds = %101
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load double, double* %129, align 8
  %131 = fcmp une double %130, 0.000000e+00
  br i1 %131, label %132, label %205

132:                                              ; preds = %123
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load double, double* %138, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = fcmp une double %139, %142
  br i1 %143, label %144, label %205

144:                                              ; preds = %132
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %205

153:                                              ; preds = %144
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sitofp i32 %163 to double
  %165 = fcmp une double %160, %164
  br i1 %165, label %166, label %205

166:                                              ; preds = %153
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 0
  store double %182, double* %184, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 2, %189
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load double, double* %192, align 8
  %194 = call i32 @date_Change(i32* %186, i32 %190, double %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = sitofp i32 %198 to double
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = fdiv double %199, %202
  %204 = call i32 @msg_Dbg(%struct.TYPE_16__* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), double %203)
  br label %205

205:                                              ; preds = %166, %153, %144, %132, %123
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  %211 = call i8* @date_Get(i32* %210)
  %212 = call i32 @es_out_SetPCR(i32 %208, i8* %211)
  %213 = load i64, i64* %11, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %231

215:                                              ; preds = %205
  %216 = load i64, i64* %11, align 8
  %217 = sitofp i64 %216 to double
  %218 = fmul double %217, 2.000000e+00
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sitofp i32 %221 to double
  %223 = fmul double %218, %222
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 0
  %226 = load double, double* %225, align 8
  %227 = load double, double* @CLOCK_FREQ, align 8
  %228 = fmul double %226, %227
  %229 = fdiv double %223, %228
  %230 = call i32 @round(double %229)
  store i32 %230, i32* %12, align 4
  br label %232

231:                                              ; preds = %205
  store i32 2, i32* %12, align 4
  br label %232

232:                                              ; preds = %231, %215
  %233 = load i32, i32* %12, align 4
  %234 = icmp ule i32 %233, 6
  br i1 %234, label %235, label %240

235:                                              ; preds = %232
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 2
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @date_Increment(i32* %237, i32 %238)
  br label %245

240:                                              ; preds = %232
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 2
  %243 = load i64, i64* %10, align 8
  %244 = call i32 @date_Set(i32* %242, i64 %243)
  br label %245

245:                                              ; preds = %240, %235
  br label %246

246:                                              ; preds = %245, %101
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_18__* %247, %struct.TYPE_18__** %6, align 8
  br label %50

248:                                              ; preds = %50
  br label %32

249:                                              ; preds = %45
  %250 = load i32, i32* %7, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %249
  %253 = load i32, i32* @VLC_DEMUXER_EOF, align 4
  br label %256

254:                                              ; preds = %249
  %255 = load i32, i32* @VLC_DEMUXER_SUCCESS, align 4
  br label %256

256:                                              ; preds = %254, %252
  %257 = phi i32 [ %253, %252 ], [ %255, %254 ]
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %256, %96
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.TYPE_18__* @vlc_stream_Block(i32, i32) #1

declare dso_local i8* @date_Get(i32*) #1

declare dso_local i32* @es_out_Add(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_18__*) #1

declare dso_local i32 @es_out_Send(i32, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @date_Change(i32*, i32, double) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, double) #1

declare dso_local i32 @es_out_SetPCR(i32, i8*) #1

declare dso_local i32 @round(double) #1

declare dso_local i32 @date_Increment(i32*, i32) #1

declare dso_local i32 @date_Set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
