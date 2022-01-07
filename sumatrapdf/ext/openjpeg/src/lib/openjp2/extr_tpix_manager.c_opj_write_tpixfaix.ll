; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_opj_write_tpixfaix.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_tpix_manager.c_opj_write_tpixfaix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@JPIP_FAIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @opj_write_tpixfaix(i32 %0, i32 %1, %struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 4
  %20 = alloca [8 x i32], align 16
  %21 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* %5, i32** %11, align 8
  %22 = call i64 @get_num_max_tile_parts(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %2)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pow(i32 2, i32 32)
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  store i32 8, i32* %18, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 3
  store i32 %31, i32* %21, align 4
  br label %37

32:                                               ; preds = %6
  store i32 4, i32* %18, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 2
  store i32 %36, i32* %21, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32*, i32** %10, align 8
  %39 = call i64 @opj_stream_tell(i32* %38)
  store i64 %39, i64* %13, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @opj_stream_skip(i32* %40, i32 4, i32* %41)
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %44 = load i32, i32* @JPIP_FAIX, align 4
  %45 = call i32 @opj_write_bytes(i32* %43, i32 %44, i32 4)
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @opj_stream_write_data(i32* %46, i32* %47, i32 4, i32* %48)
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %51 = load i32, i32* %21, align 4
  %52 = call i32 @opj_write_bytes(i32* %50, i32 %51, i32 1)
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @opj_stream_write_data(i32* %53, i32* %54, i32 1, i32* %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @opj_write_bytes(i32* %57, i32 %58, i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %63 = load i32, i32* %18, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @opj_stream_write_data(i32* %61, i32* %62, i32 %63, i32* %64)
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %68, %70
  %72 = load i32, i32* %18, align 4
  %73 = call i32 @opj_write_bytes(i32* %66, i32 %71, i32 %72)
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %76 = load i32, i32* %18, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @opj_stream_write_data(i32* %74, i32* %75, i32 %76, i32* %77)
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %216, %37
  %80 = load i32, i32* %14, align 4
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %219

87:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %177, %87
  %89 = load i32, i32* %15, align 4
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %89, %96
  br i1 %97, label %98, label %180

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = bitcast %struct.TYPE_7__* %19 to i8*
  %110 = bitcast %struct.TYPE_7__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 %110, i64 8, i1 false)
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @opj_write_bytes(i32* %111, i32 %115, i32 %116)
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %120 = load i32, i32* %18, align 4
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @opj_stream_write_data(i32* %118, i32* %119, i32 %120, i32* %121)
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %125, %127
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %18, align 4
  %131 = call i32 @opj_write_bytes(i32* %123, i32 %129, i32 %130)
  %132 = load i32*, i32** %10, align 8
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %134 = load i32, i32* %18, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @opj_stream_write_data(i32* %132, i32* %133, i32 %134, i32* %135)
  %137 = load i32, i32* %21, align 4
  %138 = and i32 %137, 2
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %98
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %165

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %165

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %16, align 4
  br label %168

165:                                              ; preds = %149, %140
  %166 = load i32, i32* %15, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %168

168:                                              ; preds = %165, %157
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @opj_write_bytes(i32* %169, i32 %170, i32 4)
  %172 = load i32*, i32** %10, align 8
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %174 = load i32*, i32** %11, align 8
  %175 = call i32 @opj_stream_write_data(i32* %172, i32* %173, i32 4, i32* %174)
  br label %176

176:                                              ; preds = %168, %98
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %88

180:                                              ; preds = %88
  br label %181

181:                                              ; preds = %208, %180
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %215

185:                                              ; preds = %181
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @opj_write_bytes(i32* %186, i32 0, i32 %187)
  %189 = load i32*, i32** %10, align 8
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %191 = load i32, i32* %18, align 4
  %192 = load i32*, i32** %11, align 8
  %193 = call i32 @opj_stream_write_data(i32* %189, i32* %190, i32 %191, i32* %192)
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %195 = load i32, i32* %18, align 4
  %196 = call i32 @opj_write_bytes(i32* %194, i32 0, i32 %195)
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %199 = load i32, i32* %18, align 4
  %200 = load i32*, i32** %11, align 8
  %201 = call i32 @opj_stream_write_data(i32* %197, i32* %198, i32 %199, i32* %200)
  %202 = load i32, i32* %21, align 4
  %203 = and i32 %202, 2
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %185
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %207 = call i32 @opj_write_bytes(i32* %206, i32 0, i32 4)
  br label %208

208:                                              ; preds = %205, %185
  %209 = load i32*, i32** %10, align 8
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @opj_stream_write_data(i32* %209, i32* %210, i32 4, i32* %211)
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %181

215:                                              ; preds = %181
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %79

219:                                              ; preds = %79
  %220 = load i32*, i32** %10, align 8
  %221 = call i64 @opj_stream_tell(i32* %220)
  %222 = load i64, i64* %13, align 8
  %223 = sub nsw i64 %221, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %12, align 4
  %225 = load i32*, i32** %10, align 8
  %226 = load i64, i64* %13, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = call i32 @opj_stream_seek(i32* %225, i64 %226, i32* %227)
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @opj_write_bytes(i32* %229, i32 %230, i32 4)
  %232 = load i32*, i32** %10, align 8
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @opj_stream_write_data(i32* %232, i32* %233, i32 4, i32* %234)
  %236 = load i32*, i32** %10, align 8
  %237 = load i64, i64* %13, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @opj_stream_seek(i32* %236, i64 %240, i32* %241)
  %243 = load i32, i32* %12, align 4
  ret i32 %243
}

declare dso_local i64 @get_num_max_tile_parts(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i64 @opj_stream_tell(i32*) #1

declare dso_local i32 @opj_stream_skip(i32*, i32, i32*) #1

declare dso_local i32 @opj_write_bytes(i32*, i32, i32) #1

declare dso_local i32 @opj_stream_write_data(i32*, i32*, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @opj_stream_seek(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
