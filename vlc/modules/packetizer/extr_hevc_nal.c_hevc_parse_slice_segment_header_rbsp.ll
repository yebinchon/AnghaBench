; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_slice_segment_header_rbsp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc_nal.c_hevc_parse_slice_segment_header_rbsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i32, i32, i8*, i8*, i8* }

@HEVC_NAL_BLA_W_LP = common dso_local global i64 0, align 8
@HEVC_NAL_IRAP_VCL23 = common dso_local global i64 0, align 8
@HEVC_PPS_ID_MAX = common dso_local global i64 0, align 8
@HEVC_SLICE_TYPE_I = common dso_local global i64 0, align 8
@HEVC_NAL_IDR_W_RADL = common dso_local global i64 0, align 8
@HEVC_NAL_IDR_N_LP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)*, i8*, %struct.TYPE_12__*)* @hevc_parse_slice_segment_header_rbsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hevc_parse_slice_segment_header_rbsp(i32* %0, i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)* %1, i8* %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)* %1, i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @bs_remain(i32* %16)
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %203

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @bs_read1(i32* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 6
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HEVC_NAL_BLA_W_LP, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HEVC_NAL_IRAP_VCL23, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @bs_read1(i32* %37)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %30, %20
  %42 = load i32*, i32** %6, align 8
  %43 = call i8* @bs_read_ue(i32* %42)
  %44 = ptrtoint i8* %43 to i64
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @HEVC_PPS_ID_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @bs_remain(i32* %53)
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %41
  store i32 0, i32* %5, align 4
  br label %203

57:                                               ; preds = %52
  %58 = load i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)*, i32 (i64, i8*, %struct.TYPE_10__**, %struct.TYPE_11__**, i32**)** %7, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 %58(i64 %61, i8* %62, %struct.TYPE_10__** %11, %struct.TYPE_11__** %10, i32** %12)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = icmp ne %struct.TYPE_10__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66, %57
  store i32 0, i32* %5, align 4
  br label %203

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %97, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %6, align 8
  %82 = call i8* @bs_read1(i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %87 = call i32 @hevc_get_picture_CtbsYsize(%struct.TYPE_11__* %86, i32* %13, i32* %14)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %203

90:                                               ; preds = %85
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = mul i32 %92, %93
  %95 = call i64 @vlc_ceil_log2(i32 %94)
  %96 = call i32 @bs_read(i32* %91, i64 %95)
  br label %97

97:                                               ; preds = %90, %70
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %165, label %102

102:                                              ; preds = %97
  store i32 0, i32* %15, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %15, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @bs_skip(i32* %111, i32 1)
  br label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = icmp ugt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load i32, i32* %15, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %15, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = call i32 @bs_skip(i32* %122, i32 1)
  br label %124

124:                                              ; preds = %119, %113
  %125 = load i32, i32* %15, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sub i32 %134, %135
  %137 = call i32 @bs_skip(i32* %131, i32 %136)
  br label %138

138:                                              ; preds = %130, %124
  %139 = load i32*, i32** %6, align 8
  %140 = call i8* @bs_read_ue(i32* %139)
  %141 = ptrtoint i8* %140 to i64
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HEVC_SLICE_TYPE_I, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  store i32 0, i32* %5, align 4
  br label %203

150:                                              ; preds = %138
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = call i8* @bs_read1(i32* %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  br label %164

161:                                              ; preds = %150
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 3
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %155
  br label %165

165:                                              ; preds = %164, %97
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @bs_skip(i32* %171, i32 2)
  br label %173

173:                                              ; preds = %170, %165
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @HEVC_NAL_IDR_W_RADL, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @HEVC_NAL_IDR_N_LP, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 4
  %191 = call i32 @bs_read(i32* %186, i64 %190)
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 4
  br label %197

194:                                              ; preds = %179, %173
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 4
  store i32 0, i32* %196, align 4
  br label %197

197:                                              ; preds = %194, %185
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 @bs_remain(i32* %198)
  %200 = icmp slt i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 0, i32* %5, align 4
  br label %203

202:                                              ; preds = %197
  store i32 1, i32* %5, align 4
  br label %203

203:                                              ; preds = %202, %201, %149, %89, %69, %56, %19
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i8* @bs_read_ue(i32*) #1

declare dso_local i32 @hevc_get_picture_CtbsYsize(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @bs_read(i32*, i64) #1

declare dso_local i64 @vlc_ceil_log2(i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
