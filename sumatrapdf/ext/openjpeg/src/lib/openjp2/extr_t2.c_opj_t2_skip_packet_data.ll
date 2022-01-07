; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_skip_packet_data.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_skip_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i64 }
%struct.TYPE_20__ = type { i64, i64, i64 }

@EVT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"skip: segment too long (%d) with max (%d) for codeblock %d (p=%d, b=%d, r=%d, c=%d)\0A\00", align 1
@OPJ_FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"p_data_read (%d) newlen (%d) \0A\00", align 1
@OPJ_TRUE = common dso_local global i32 0, align 4
@EVT_WARNING = common dso_local global i32 0, align 4
@JPWL_ASSUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_20__*, i64*, i64, i32*, i32*)* @opj_t2_skip_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_t2_skip_packet_data(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_20__* %2, i64* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %20, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %31, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i64 %35
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %21, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @OPJ_ARG_NOT_USED(i32* %37)
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @OPJ_ARG_NOT_USED(i32* %39)
  %41 = load i64*, i64** %12, align 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %19, align 8
  store i64 0, i64* %16, align 8
  br label %45

45:                                               ; preds = %238, %7
  %46 = load i64, i64* %16, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %241

51:                                               ; preds = %45
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 %57
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %22, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %51
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %67, %51
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 1
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %19, align 8
  br label %238

79:                                               ; preds = %67
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = mul nsw i64 %82, %85
  store i64 %86, i64* %18, align 8
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  store %struct.TYPE_18__* %90, %struct.TYPE_18__** %20, align 8
  store i64 0, i64* %17, align 8
  br label %91

91:                                               ; preds = %232, %79
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %235

95:                                               ; preds = %91
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %23, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 1
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %20, align 8
  br label %232

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %110, align 8
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %23, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %141

116:                                              ; preds = %103
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i64 %124
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %23, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %116
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 1
  store %struct.TYPE_15__* %135, %struct.TYPE_15__** %23, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %133, %116
  br label %141

141:                                              ; preds = %140, %108
  br label %142

142:                                              ; preds = %224, %141
  %143 = load i64*, i64** %12, align 8
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  %150 = load i64*, i64** %12, align 8
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %163, label %153

153:                                              ; preds = %142
  %154 = load i64*, i64** %12, align 8
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = load i64, i64* %13, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %183

163:                                              ; preds = %153, %142
  %164 = load i32*, i32** %15, align 8
  %165 = load i32, i32* @EVT_ERROR, align 4
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %16, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = call i32 (i32*, i32, i8*, ...) @opj_event_msg(i32* %164, i32 %165, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %168, i64 %169, i64 %170, i64 %173, i64 %174, i64 %177, i64 %180)
  %182 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %182, i32* %8, align 4
  br label %243

183:                                              ; preds = %153
  %184 = load i32, i32* @stderr, align 4
  %185 = load i64*, i64** %12, align 8
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @JAS_FPRINTF(i32 %184, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %186, i32 %189)
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load i64*, i64** %12, align 8
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %196, %194
  store i64 %197, i64* %195, align 8
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, %200
  store i64 %204, i64* %202, align 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = sub nsw i64 %210, %207
  store i64 %211, i64* %209, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp sgt i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %183
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 1
  store %struct.TYPE_15__* %218, %struct.TYPE_15__** %23, align 8
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %216, %183
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %142, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 1
  store %struct.TYPE_18__* %231, %struct.TYPE_18__** %20, align 8
  br label %232

232:                                              ; preds = %229, %100
  %233 = load i64, i64* %17, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %17, align 8
  br label %91

235:                                              ; preds = %91
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 1
  store %struct.TYPE_19__* %237, %struct.TYPE_19__** %19, align 8
  br label %238

238:                                              ; preds = %235, %76
  %239 = load i64, i64* %16, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %16, align 8
  br label %45

241:                                              ; preds = %45
  %242 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %242, i32* %8, align 4
  br label %243

243:                                              ; preds = %241, %163
  %244 = load i32, i32* %8, align 4
  ret i32 %244
}

declare dso_local i32 @OPJ_ARG_NOT_USED(i32*) #1

declare dso_local i32 @opj_event_msg(i32*, i32, i8*, ...) #1

declare dso_local i32 @JAS_FPRINTF(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
