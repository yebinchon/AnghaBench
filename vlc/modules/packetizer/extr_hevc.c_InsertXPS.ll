; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_InsertXPS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_InsertXPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.hevc_tuple_s*, i32, %struct.hevc_tuple_s*, i32, %struct.hevc_tuple_s* }
%struct.hevc_tuple_s = type { i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32*, i64 }

@HEVC_VPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_SPS_ID_MAX = common dso_local global i32 0, align 4
@HEVC_PPS_ID_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed decoding SPS id %d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed decoding PPS id %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed decoding VPS id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, %struct.TYPE_12__*)* @InsertXPS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InsertXPS(%struct.TYPE_10__* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.hevc_tuple_s*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %68 [
    i32 128, label %23
    i32 129, label %38
    i32 130, label %53
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HEVC_VPS_ID_MAX, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %227

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %31, i64 %33
  store %struct.hevc_tuple_s* %34, %struct.hevc_tuple_s** %11, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = bitcast i32* %36 to i8**
  store i8** %37, i8*** %12, align 8
  br label %69

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @HEVC_SPS_ID_MAX, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %227

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %46, i64 %48
  store %struct.hevc_tuple_s* %49, %struct.hevc_tuple_s** %11, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = bitcast i32* %51 to i8**
  store i8** %52, i8*** %12, align 8
  br label %69

53:                                               ; preds = %4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @HEVC_PPS_ID_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %227

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %61, i64 %63
  store %struct.hevc_tuple_s* %64, %struct.hevc_tuple_s** %11, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = bitcast i32* %66 to i8**
  store i8** %67, i8*** %12, align 8
  br label %69

68:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %227

69:                                               ; preds = %58, %43, %28
  %70 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %71 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %70, i32 0, i32 1
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = icmp ne %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %104

74:                                               ; preds = %69
  %75 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %76 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %13, align 8
  %80 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %81 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %14, align 8
  %85 = call i64 @hxxx_strip_AnnexB_startcode(i32** %13, i64* %14)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %15, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = call i64 @hxxx_strip_AnnexB_startcode(i32** %15, i64* %16)
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %16, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %74
  %97 = load i32*, i32** %13, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @memcmp(i32* %97, i32* %98, i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  br label %227

103:                                              ; preds = %96, %74
  br label %104

104:                                              ; preds = %103, %69
  %105 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %106 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %139

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  switch i32 %110, label %126 [
    i32 128, label %111
    i32 129, label %116
    i32 130, label %121
  ]

111:                                              ; preds = %109
  %112 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %113 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @hevc_rbsp_release_vps(i8* %114)
  br label %126

116:                                              ; preds = %109
  %117 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %118 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @hevc_rbsp_release_sps(i8* %119)
  br label %126

121:                                              ; preds = %109
  %122 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %123 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @hevc_rbsp_release_pps(i8* %124)
  br label %126

126:                                              ; preds = %109, %121, %116, %111
  %127 = load i8**, i8*** %12, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %130 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = icmp eq i8* %128, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i8**, i8*** %12, align 8
  store i8* null, i8** %134, align 8
  br label %136

135:                                              ; preds = %126
  store i8** null, i8*** %12, align 8
  br label %136

136:                                              ; preds = %135, %133
  %137 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %138 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %137, i32 0, i32 0
  store i8* null, i8** %138, align 8
  br label %140

139:                                              ; preds = %104
  store i8** null, i8*** %12, align 8
  br label %140

140:                                              ; preds = %139, %136
  %141 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %142 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %141, i32 0, i32 1
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = icmp ne %struct.TYPE_13__* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %140
  %146 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %147 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %146, i32 0, i32 1
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = call i32 @block_Release(%struct.TYPE_13__* %148)
  %150 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %151 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %150, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %151, align 8
  br label %152

152:                                              ; preds = %145, %140
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  store i32* %155, i32** %17, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %18, align 8
  %159 = call i64 @hxxx_strip_AnnexB_startcode(i32** %17, i64* %18)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %226

161:                                              ; preds = %152
  %162 = load i32, i32* %7, align 4
  switch i32 %162, label %208 [
    i32 129, label %163
    i32 130, label %178
    i32 128, label %193
  ]

163:                                              ; preds = %161
  %164 = load i32*, i32** %17, align 8
  %165 = load i64, i64* %18, align 8
  %166 = call i8* @hevc_decode_sps(i32* %164, i64 %165, i32 1)
  %167 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %168 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %167, i32 0, i32 0
  store i8* %166, i8** %168, align 8
  %169 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %170 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @msg_Err(%struct.TYPE_10__* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %175)
  store i32 0, i32* %5, align 4
  br label %227

177:                                              ; preds = %163
  br label %208

178:                                              ; preds = %161
  %179 = load i32*, i32** %17, align 8
  %180 = load i64, i64* %18, align 8
  %181 = call i8* @hevc_decode_pps(i32* %179, i64 %180, i32 1)
  %182 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %183 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %185 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %178
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @msg_Err(%struct.TYPE_10__* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %190)
  store i32 0, i32* %5, align 4
  br label %227

192:                                              ; preds = %178
  br label %208

193:                                              ; preds = %161
  %194 = load i32*, i32** %17, align 8
  %195 = load i64, i64* %18, align 8
  %196 = call i8* @hevc_decode_vps(i32* %194, i64 %195, i32 1)
  %197 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %198 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %197, i32 0, i32 0
  store i8* %196, i8** %198, align 8
  %199 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %200 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %193
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @msg_Err(%struct.TYPE_10__* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %205)
  store i32 0, i32* %5, align 4
  br label %227

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %161, %207, %192, %177
  %209 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %210 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %221

213:                                              ; preds = %208
  %214 = load i8**, i8*** %12, align 8
  %215 = icmp ne i8** %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %218 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i8**, i8*** %12, align 8
  store i8* %219, i8** %220, align 8
  br label %221

221:                                              ; preds = %216, %213, %208
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %223 = call %struct.TYPE_13__* @block_Duplicate(%struct.TYPE_12__* %222)
  %224 = load %struct.hevc_tuple_s*, %struct.hevc_tuple_s** %11, align 8
  %225 = getelementptr inbounds %struct.hevc_tuple_s, %struct.hevc_tuple_s* %224, i32 0, i32 1
  store %struct.TYPE_13__* %223, %struct.TYPE_13__** %225, align 8
  store i32 1, i32* %5, align 4
  br label %227

226:                                              ; preds = %152
  store i32 0, i32* %5, align 4
  br label %227

227:                                              ; preds = %226, %221, %203, %188, %173, %102, %68, %57, %42, %27
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

declare dso_local i64 @hxxx_strip_AnnexB_startcode(i32**, i64*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @hevc_rbsp_release_vps(i8*) #1

declare dso_local i32 @hevc_rbsp_release_sps(i8*) #1

declare dso_local i32 @hevc_rbsp_release_pps(i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_13__*) #1

declare dso_local i8* @hevc_decode_sps(i32*, i64, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i8* @hevc_decode_pps(i32*, i64, i32) #1

declare dso_local i8* @hevc_decode_vps(i32*, i64, i32) #1

declare dso_local %struct.TYPE_13__* @block_Duplicate(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
