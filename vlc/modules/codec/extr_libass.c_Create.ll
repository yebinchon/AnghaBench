; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_Create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_20__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i8*, i32, i32 }

@VLC_CODEC_SSA = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@DecodeBlock = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Libass library creation failed\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"application/x-truetype-font\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".ttf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".otf\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".ttc\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"adding embedded font %s\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Libass renderer creation failed\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Arial\00", align 1
@ASS_FONTPROVIDER_AUTODETECT = common dso_local global i32 0, align 4
@ASS_HINTING_NONE = common dso_local global i32 0, align 4
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Create(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %4, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VLC_CODEC_SSA, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %2, align 4
  br label %216

27:                                               ; preds = %1
  %28 = load i32, i32* @DecodeBlock, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @Flush, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = call %struct.TYPE_20__* @malloc(i32 48)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %5, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 2
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = icmp ne %struct.TYPE_20__* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %216

41:                                               ; preds = %27
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 6
  %44 = call i32 @vlc_mutex_init(i32* %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 5
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  %50 = load i32, i32* @VLC_TICK_INVALID, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = call i32* (...) @ass_library_init()
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  store i32* %59, i32** %6, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %41
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %66 = call i32 @msg_Warn(%struct.TYPE_19__* %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = call i32 @DecSysRelease(%struct.TYPE_20__* %67)
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %2, align 4
  br label %216

70:                                               ; preds = %41
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = call i64 @decoder_GetInputAttachments(%struct.TYPE_19__* %71, %struct.TYPE_18__*** %7, i32* %8)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  store %struct.TYPE_18__** null, %struct.TYPE_18__*** %7, align 8
  br label %75

75:                                               ; preds = %74, %70
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %151, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %154

80:                                               ; preds = %76
  %81 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %81, i64 %83
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %10, align 8
  store i32 0, i32* %11, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %80
  store i32 1, i32* %11, align 4
  br label %126

92:                                               ; preds = %80
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = icmp sgt i32 %99, 4
  br i1 %100, label %101, label %125

101:                                              ; preds = %95
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %104, i64 %109
  %111 = getelementptr inbounds i8, i8* %110, i64 -4
  store i8* %111, i8** %12, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @strcasecmp(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %101
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 @strcasecmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @strcasecmp(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119, %115, %101
  store i32 1, i32* %11, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %125

125:                                              ; preds = %124, %95, %92
  br label %126

126:                                              ; preds = %125, %91
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %148

129:                                              ; preds = %126
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @msg_Dbg(%struct.TYPE_19__* %130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %133)
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ass_add_font(i32* %137, i8* %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %129, %126
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %150 = call i32 @vlc_input_attachment_Delete(%struct.TYPE_18__* %149)
  br label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %76

154:                                              ; preds = %76
  %155 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  %156 = call i32 @free(%struct.TYPE_18__** %155)
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @ass_set_extract_fonts(i32* %157, i32 1)
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @ass_set_style_overrides(i32* %159, i32* null)
  %161 = load i32*, i32** %6, align 8
  %162 = call i32* @ass_renderer_init(i32* %161)
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 3
  store i32* %162, i32** %164, align 8
  store i32* %162, i32** %13, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %154
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %169 = call i32 @msg_Warn(%struct.TYPE_19__* %168, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %171 = call i32 @DecSysRelease(%struct.TYPE_20__* %170)
  %172 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %172, i32* %2, align 4
  br label %216

173:                                              ; preds = %154
  %174 = load i32*, i32** %13, align 8
  %175 = call i32 @ass_set_use_margins(i32* %174, i32 0)
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @ass_set_font_scale(i32* %176, double 1.000000e+00)
  %178 = load i32*, i32** %13, align 8
  %179 = call i32 @ass_set_line_spacing(i32* %178, double 0.000000e+00)
  store i8* null, i8** %14, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %15, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i8*, i8** %14, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = load i32, i32* @ASS_FONTPROVIDER_AUTODETECT, align 4
  %184 = call i32 @ass_set_fonts(i32* %180, i8* %181, i8* %182, i32 %183, i32* null, i32 0)
  %185 = load i32*, i32** %13, align 8
  %186 = load i32, i32* @ASS_HINTING_NONE, align 4
  %187 = call i32 @ass_set_hinting(i32* %185, i32 %186)
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32* @ass_new_track(i32* %190)
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  store i32* %191, i32** %193, align 8
  store i32* %191, i32** %16, align 8
  %194 = load i32*, i32** %16, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %200, label %196

196:                                              ; preds = %173
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %198 = call i32 @DecSysRelease(%struct.TYPE_20__* %197)
  %199 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %199, i32* %2, align 4
  br label %216

200:                                              ; preds = %173
  %201 = load i32*, i32** %16, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ass_process_codec_private(i32* %201, i32 %205, i32 %209)
  %211 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  %215 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %200, %196, %167, %64, %39, %25
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_20__* @malloc(i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @ass_library_init(...) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @DecSysRelease(%struct.TYPE_20__*) #1

declare dso_local i64 @decoder_GetInputAttachments(%struct.TYPE_19__*, %struct.TYPE_18__***, i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i32 @ass_add_font(i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_input_attachment_Delete(%struct.TYPE_18__*) #1

declare dso_local i32 @free(%struct.TYPE_18__**) #1

declare dso_local i32 @ass_set_extract_fonts(i32*, i32) #1

declare dso_local i32 @ass_set_style_overrides(i32*, i32*) #1

declare dso_local i32* @ass_renderer_init(i32*) #1

declare dso_local i32 @ass_set_use_margins(i32*, i32) #1

declare dso_local i32 @ass_set_font_scale(i32*, double) #1

declare dso_local i32 @ass_set_line_spacing(i32*, double) #1

declare dso_local i32 @ass_set_fonts(i32*, i8*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ass_set_hinting(i32*, i32) #1

declare dso_local i32* @ass_new_track(i32*) #1

declare dso_local i32 @ass_process_codec_private(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
