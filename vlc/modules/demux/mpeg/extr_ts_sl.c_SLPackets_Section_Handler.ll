; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_sl.c_SLPackets_Section_Handler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_sl.c_SLPackets_Section_Handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, %struct.TYPE_41__** }
%struct.TYPE_41__ = type { %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_34__, i64, i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { i64, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }

@ES_DESCRIPTOR_COUNT = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4
@PROGRAM_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SLPackets_Section_Handler(%struct.TYPE_31__* %0, i32* %1, i64 %2, i32* %3, i64 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  %15 = alloca %struct.TYPE_37__*, align 8
  %16 = alloca %struct.TYPE_42__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca %struct.TYPE_39__, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_41__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_38__*, align 8
  %26 = alloca %struct.TYPE_30__, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 @VLC_UNUSED(i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @VLC_UNUSED(i64 %30)
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  store %struct.TYPE_32__* %34, %struct.TYPE_32__** %13, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %36, %struct.TYPE_36__** %14, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_37__*, %struct.TYPE_37__** %40, align 8
  store %struct.TYPE_37__* %41, %struct.TYPE_37__** %15, align 8
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %43 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.TYPE_42__* @GetMPEG4DescByEsId(%struct.TYPE_37__* %42, i32 %47)
  store %struct.TYPE_42__* %48, %struct.TYPE_42__** %16, align 8
  %49 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %50 = icmp ne %struct.TYPE_42__* %49, null
  br i1 %50, label %51, label %232

51:                                               ; preds = %6
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %232

57:                                               ; preds = %51
  %58 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %232

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  store i32* %64, i32** %17, align 8
  %65 = load i64, i64* %11, align 8
  store i64 %65, i64* %18, align 8
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 0
  store %struct.TYPE_40__* %67, %struct.TYPE_40__** %19, align 8
  %68 = load i64, i64* %18, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %70, i32 0, i32 3
  %72 = call i64 @DecodeSLHeader(i64 %68, i32* %69, i32* %71)
  %73 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %75 = call i32 @VLC_OBJECT(%struct.TYPE_31__* %74)
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %77 = load i64, i64* %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub i64 %77, %79
  %81 = load i32*, i32** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %20, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @DecodeODCommand(i32 %75, %struct.TYPE_40__* %76, i64 %80, i32* %84)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %86

86:                                               ; preds = %216, %63
  %87 = load i32, i32* %22, align 4
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %219

93:                                               ; preds = %86
  %94 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %95 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_41__**, %struct.TYPE_41__*** %96, align 8
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_41__*, %struct.TYPE_41__** %97, i64 %99
  %101 = load %struct.TYPE_41__*, %struct.TYPE_41__** %100, align 8
  store %struct.TYPE_41__* %101, %struct.TYPE_41__** %23, align 8
  store i32 0, i32* %24, align 4
  br label %102

102:                                              ; preds = %212, %93
  %103 = load i32, i32* %24, align 4
  %104 = load i32, i32* @ES_DESCRIPTOR_COUNT, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_42__*, %struct.TYPE_42__** %108, align 8
  %110 = load i32, i32* %24, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %106, %102
  %117 = phi i1 [ false, %102 ], [ %115, %106 ]
  br i1 %117, label %118, label %215

118:                                              ; preds = %116
  %119 = load %struct.TYPE_41__*, %struct.TYPE_41__** %23, align 8
  %120 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %120, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %121, i64 %123
  store %struct.TYPE_42__* %124, %struct.TYPE_42__** %16, align 8
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %15, align 8
  %126 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_38__* @GetPMTESBySLEsId(%struct.TYPE_37__* %125, i32 %128)
  store %struct.TYPE_38__* %129, %struct.TYPE_38__** %25, align 8
  %130 = load i32, i32* @UNKNOWN_ES, align 4
  %131 = call i32 @es_format_Init(%struct.TYPE_30__* %26, i32 %130, i32 0)
  %132 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %133 = icmp ne %struct.TYPE_42__* %132, null
  br i1 %133, label %134, label %209

134:                                              ; preds = %118
  %135 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %209

139:                                              ; preds = %134
  %140 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %141 = icmp ne %struct.TYPE_38__* %140, null
  br i1 %141, label %142, label %209

142:                                              ; preds = %139
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %144 = load %struct.TYPE_42__*, %struct.TYPE_42__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %144, i32 0, i32 0
  %146 = call i64 @SetupISO14496LogicalStream(%struct.TYPE_31__* %143, %struct.TYPE_34__* %145, %struct.TYPE_30__* %26)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %209

148:                                              ; preds = %142
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %150 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %149, i32 0, i32 1
  %151 = call i32 @es_format_IsSimilar(%struct.TYPE_30__* %26, %struct.TYPE_30__* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %209, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %155 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 2
  store i32 %157, i32* %158, align 4
  %159 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 1
  store i32 %162, i32* %163, align 4
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %165 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %164, i32 0, i32 1
  %166 = call i32 @es_format_Clean(%struct.TYPE_30__* %165)
  %167 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 1
  %169 = bitcast %struct.TYPE_30__* %168 to i8*
  %170 = bitcast %struct.TYPE_30__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 4 %170, i64 12, i1 false)
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %153
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @es_out_Del(i32 %178, i64 %181)
  %183 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %175, %153
  %188 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %189 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  store i32 1, i32* %190, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 1
  %196 = call i64 @es_out_Add(i32 %193, %struct.TYPE_30__* %195)
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %198 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %197, i32 0, i32 0
  store i64 %196, i64* %198, align 8
  %199 = load %struct.TYPE_38__*, %struct.TYPE_38__** %25, align 8
  %200 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %187
  %204 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %203, %187
  store i32 1, i32* %21, align 4
  br label %211

209:                                              ; preds = %148, %142, %139, %134, %118
  %210 = call i32 @es_format_Clean(%struct.TYPE_30__* %26)
  br label %211

211:                                              ; preds = %209, %208
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %24, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %24, align 4
  br label %102

215:                                              ; preds = %116
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %22, align 4
  br label %86

219:                                              ; preds = %86
  %220 = load i32, i32* %21, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %219
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %224 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @PROGRAM_ALL, align 8
  %228 = icmp eq i64 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @UpdatePESFilters(%struct.TYPE_31__* %223, i32 %229)
  br label %231

231:                                              ; preds = %222, %219
  br label %232

232:                                              ; preds = %231, %57, %51, %6
  ret void
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local %struct.TYPE_42__* @GetMPEG4DescByEsId(%struct.TYPE_37__*, i32) #1

declare dso_local i64 @DecodeSLHeader(i64, i32*, i32*) #1

declare dso_local i32 @DecodeODCommand(i32, %struct.TYPE_40__*, i64, i32*) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_38__* @GetPMTESBySLEsId(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @SetupISO14496LogicalStream(%struct.TYPE_31__*, %struct.TYPE_34__*, %struct.TYPE_30__*) #1

declare dso_local i32 @es_format_IsSimilar(%struct.TYPE_30__*, %struct.TYPE_30__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_30__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @es_out_Del(i32, i64) #1

declare dso_local i64 @es_out_Add(i32, %struct.TYPE_30__*) #1

declare dso_local i32 @UpdatePESFilters(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
