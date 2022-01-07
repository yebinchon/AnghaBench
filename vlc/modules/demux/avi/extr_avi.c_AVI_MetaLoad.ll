; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_MetaLoad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_MetaLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@AVIF_HASINDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" HAS_INDEX\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AVIF_MUSTUSEINDEX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" MUST_USE_INDEX\00", align 1
@AVIF_ISINTERLEAVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c" IS_INTERLEAVED\00", align 1
@AVIF_TRUSTCKTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" TRUST_CKTYPE\00", align 1
@AVIFOURCC_INFO = common dso_local global i64 0, align 8
@AVI_MetaLoad.p_dsc = internal constant [12 x %struct.anon] [%struct.anon { i64 179, i32 138 }, %struct.anon { i64 176, i32 135 }, %struct.anon { i64 173, i32 137 }, %struct.anon { i64 163, i32 134 }, %struct.anon { i64 157, i32 131 }, %struct.anon { i64 172, i32 136 }, %struct.anon { i64 160, i32 133 }, %struct.anon { i64 151, i32 132 }, %struct.anon { i64 140, i32 128 }, %struct.anon { i64 152, i32 130 }, %struct.anon { i64 164, i32 129 }, %struct.anon { i64 0, i32 -1 }], align 16
@AVI_MetaLoad.p_extra = internal constant [32 x i64] [i64 180, i64 177, i64 171, i64 170, i64 168, i64 165, i64 162, i64 161, i64 159, i64 155, i64 154, i64 150, i64 149, i64 147, i64 145, i64 144, i64 141, i64 146, i64 169, i64 148, i64 139, i64 153, i64 175, i64 156, i64 166, i64 178, i64 158, i64 143, i64 167, i64 174, i64 142, i64 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, %struct.TYPE_9__*)* @AVI_MetaLoad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_MetaLoad(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [200 x i8], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %7, align 8
  %20 = call i32* (...) @vlc_meta_New()
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  store i32* %20, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %171

26:                                               ; preds = %3
  %27 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AVIF_HASINDEX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AVIF_MUSTUSEINDEX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AVIF_ISINTERLEAVED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @AVIF_TRUSTCKTYPE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @snprintf(i8* %27, i32 200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %43, i8* %51, i8* %59)
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds [200 x i8], [200 x i8]* %9, i64 0, i64 0
  %63 = call i32 @vlc_meta_SetSetting(i32* %61, i8* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* @AVIFOURCC_INFO, align 8
  %66 = call i8* @AVI_ChunkFind(i32* %64, i64 %65, i32 0, i32 1)
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %26
  br label %171

71:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %120, %71
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @AVI_MetaLoad.p_dsc, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 16
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %72
  %80 = load i32*, i32** %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @AVI_MetaLoad.p_dsc, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 16
  %86 = call i8* @AVI_ChunkFind(i32* %80, i64 %85, i32 0, i32 0)
  %87 = bitcast i8* %86 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %87, %struct.TYPE_10__** %12, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %79
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90, %79
  br label %120

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @FromACP(i32 %99)
  store i8* %100, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %120

104:                                              ; preds = %96
  %105 = load i8*, i8** %13, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [12 x %struct.anon], [12 x %struct.anon]* @AVI_MetaLoad.p_dsc, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @vlc_meta_Set(i32* %109, i32 %114, i8* %115)
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @free(i8* %118)
  br label %120

120:                                              ; preds = %117, %103, %95
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %72

123:                                              ; preds = %72
  store i32 0, i32* %14, align 4
  br label %124

124:                                              ; preds = %168, %123
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [32 x i64], [32 x i64]* @AVI_MetaLoad.p_extra, i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %171

130:                                              ; preds = %124
  %131 = load i32*, i32** %10, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [32 x i64], [32 x i64]* @AVI_MetaLoad.p_extra, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @AVI_ChunkFind(i32* %131, i64 %135, i32 0, i32 0)
  %137 = bitcast i8* %136 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %15, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %139 = icmp ne %struct.TYPE_10__* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %140, %130
  br label %168

146:                                              ; preds = %140
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @FromACP(i32 %149)
  store i8* %150, i8** %16, align 8
  %151 = load i8*, i8** %16, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  br label %168

154:                                              ; preds = %146
  %155 = load i8*, i8** %16, align 8
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load i32*, i32** %8, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %16, align 8
  %164 = call i32 @vlc_meta_AddExtra(i32* %159, i32 %162, i8* %163)
  br label %165

165:                                              ; preds = %158, %154
  %166 = load i8*, i8** %16, align 8
  %167 = call i32 @free(i8* %166)
  br label %168

168:                                              ; preds = %165, %153, %145
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %14, align 4
  br label %124

171:                                              ; preds = %25, %70, %124
  ret void
}

declare dso_local i32* @vlc_meta_New(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @vlc_meta_SetSetting(i32*, i8*) #1

declare dso_local i8* @AVI_ChunkFind(i32*, i64, i32, i32) #1

declare dso_local i8* @FromACP(i32) #1

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_meta_AddExtra(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
