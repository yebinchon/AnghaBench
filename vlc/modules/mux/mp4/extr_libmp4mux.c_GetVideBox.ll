; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetVideBox.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/mp4/extr_libmp4mux.c_GetVideBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i8*, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i8* }

@.str = private unnamed_addr constant [5 x i8] c"mp4v\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mjpa\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SVQ1\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SVQ3\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"s263\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"avc1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"vc-1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"hev1\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"yv12\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"yuy2\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"\0AAOM Coding\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"av1C\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dvc1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_11__*, i32)* @GetVideBox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GetVideBox(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @VLC_UNUSED(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @VLC_UNUSED(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %54 [
    i32 134, label %24
    i32 133, label %24
    i32 135, label %27
    i32 132, label %30
    i32 131, label %33
    i32 138, label %36
    i32 137, label %39
    i32 130, label %42
    i32 136, label %45
    i32 128, label %48
    i32 129, label %51
  ]

24:                                               ; preds = %3, %3
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %26 = call i32 @memcpy(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %61

27:                                               ; preds = %3
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %29 = call i32 @memcpy(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %61

30:                                               ; preds = %3
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = call i32 @memcpy(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %61

33:                                               ; preds = %3
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %35 = call i32 @memcpy(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %61

36:                                               ; preds = %3
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %38 = call i32 @memcpy(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %61

39:                                               ; preds = %3
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %41 = call i32 @memcpy(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %61

42:                                               ; preds = %3
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %44 = call i32 @memcpy(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  br label %61

45:                                               ; preds = %3
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %47 = call i32 @memcpy(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  br label %61

48:                                               ; preds = %3
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %50 = call i32 @memcpy(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  br label %61

51:                                               ; preds = %3
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %53 = call i32 @memcpy(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  br label %61

54:                                               ; preds = %3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %60 = call i32 @vlc_fourcc_to_char(i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %63 = call i32* @box_new(i8* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i32* null, i32** %4, align 8
  br label %220

67:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %74, %67
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 6
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @bo_add_8(i32* %72, i32 0)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %68

77:                                               ; preds = %68
  %78 = load i32*, i32** %9, align 8
  %79 = call i32 @bo_add_16be(i32* %78, i32 1)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @bo_add_16be(i32* %80, i32 0)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @bo_add_16be(i32* %82, i32 0)
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %90, %77
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @bo_add_32be(i32* %88, i32 0)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %84

93:                                               ; preds = %84
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @bo_add_16be(i32* %94, i32 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @bo_add_16be(i32* %101, i32 %106)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @bo_add_32be(i32* %108, i32 4718592)
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @bo_add_32be(i32* %110, i32 4718592)
  %112 = load i32*, i32** %9, align 8
  %113 = call i32 @bo_add_32be(i32* %112, i32 0)
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @bo_add_16be(i32* %114, i32 1)
  %116 = bitcast [32 x i8]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %116, i8 0, i64 32, i1 false)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %124 [
    i32 139, label %121
  ]

121:                                              ; preds = %93
  %122 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %123 = call i32 @memcpy(i8* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 11)
  br label %125

124:                                              ; preds = %93
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %128 = call i32 @bo_add_mem(i32* %126, i32 32, i8* %127)
  %129 = load i32*, i32** %9, align 8
  %130 = call i32 @bo_add_16be(i32* %129, i32 24)
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @bo_add_16be(i32* %131, i32 65535)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %13, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %14, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %125
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %13, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %14, align 8
  br label %155

155:                                              ; preds = %146, %125
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  switch i32 %159, label %206 [
    i32 139, label %160
    i32 134, label %173
    i32 133, label %173
    i32 138, label %178
    i32 131, label %182
    i32 137, label %188
    i32 130, label %194
    i32 136, label %200
  ]

160:                                              ; preds = %155
  %161 = load i32*, i32** %9, align 8
  %162 = load i8*, i8** %13, align 8
  %163 = load i64, i64* %14, align 8
  %164 = call i32 @GetxxxxTag(i8* %162, i64 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %165 = call i32 @box_gather(i32* %161, i32 %164)
  %166 = load i32*, i32** %9, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @GetColrBox(%struct.TYPE_12__* %169, i32 %170)
  %172 = call i32 @box_gather(i32* %166, i32 %171)
  br label %206

173:                                              ; preds = %155, %155
  %174 = load i32*, i32** %9, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = call i32 @GetESDS(%struct.TYPE_11__* %175)
  %177 = call i32 @box_gather(i32* %174, i32 %176)
  br label %206

178:                                              ; preds = %155
  %179 = load i32*, i32** %9, align 8
  %180 = call i32 (...) @GetD263Tag()
  %181 = call i32 @box_gather(i32* %179, i32 %180)
  br label %206

182:                                              ; preds = %155
  %183 = load i32*, i32** %9, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = load i64, i64* %14, align 8
  %186 = call i32 @GetSVQ3Tag(i8* %184, i64 %185)
  %187 = call i32 @box_gather(i32* %183, i32 %186)
  br label %206

188:                                              ; preds = %155
  %189 = load i32*, i32** %9, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i32 @GetAvcCTag(i8* %190, i64 %191)
  %193 = call i32 @box_gather(i32* %189, i32 %192)
  br label %206

194:                                              ; preds = %155
  %195 = load i32*, i32** %9, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load i64, i64* %14, align 8
  %198 = call i32 @GetxxxxTag(i8* %196, i64 %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %199 = call i32 @box_gather(i32* %195, i32 %198)
  br label %206

200:                                              ; preds = %155
  %201 = load i32*, i32** %9, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = load i64, i64* %14, align 8
  %204 = call i32 @GetHvcCTag(i8* %202, i64 %203, i32 0)
  %205 = call i32 @box_gather(i32* %201, i32 %204)
  br label %206

206:                                              ; preds = %155, %200, %194, %188, %182, %178, %173, %160
  %207 = load i32*, i32** %9, align 8
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 3
  %211 = call i32 @GetMdcv(%struct.TYPE_12__* %210)
  %212 = call i32 @box_gather(i32* %207, i32 %211)
  %213 = load i32*, i32** %9, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = call i32 @GetClli(%struct.TYPE_12__* %216)
  %218 = call i32 @box_gather(i32* %213, i32 %217)
  %219 = load i32*, i32** %9, align 8
  store i32* %219, i32** %4, align 8
  br label %220

220:                                              ; preds = %206, %66
  %221 = load i32*, i32** %4, align 8
  ret i32* %221
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @vlc_fourcc_to_char(i32, i8*) #1

declare dso_local i32* @box_new(i8*) #1

declare dso_local i32 @bo_add_8(i32*, i32) #1

declare dso_local i32 @bo_add_16be(i32*, i32) #1

declare dso_local i32 @bo_add_32be(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bo_add_mem(i32*, i32, i8*) #1

declare dso_local i32 @box_gather(i32*, i32) #1

declare dso_local i32 @GetxxxxTag(i8*, i64, i8*) #1

declare dso_local i32 @GetColrBox(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @GetESDS(%struct.TYPE_11__*) #1

declare dso_local i32 @GetD263Tag(...) #1

declare dso_local i32 @GetSVQ3Tag(i8*, i64) #1

declare dso_local i32 @GetAvcCTag(i8*, i64) #1

declare dso_local i32 @GetHvcCTag(i8*, i64, i32) #1

declare dso_local i32 @GetMdcv(%struct.TYPE_12__*) #1

declare dso_local i32 @GetClli(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
