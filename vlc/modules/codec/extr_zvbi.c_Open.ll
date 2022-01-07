; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_zvbi.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_zvbi.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_22__ = type { i8*, i32, i32, i8*, i8*, i8*, i8*, i32, i32*, i32 }

@VLC_CODEC_TELETEXT = common dso_local global i64 0, align 8
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"vbi-page\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid vbi-page requested\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"VBI decoder could not be created.\00", align 1
@ppsz_default_triplet = common dso_local global i32** null, align 8
@pi_default_triplet = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"overwriting default zvbi region: %d\00", align 1
@VBI_EVENT_TTX_PAGE = common dso_local global i32 0, align 4
@VBI_EVENT_NETWORK = common dso_local global i32 0, align 4
@EventHandler = common dso_local global i32 0, align 4
@RequestPage = common dso_local global i32 0, align 4
@VBI_ANY_SUBNO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"vbi-opaque\00", align 1
@Opaque = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"vbi-position\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vbi-text\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"vbi-level\00", align 1
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@Decode = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VBI_EVENT_ASPECT = common dso_local global i32 0, align 4
@VBI_EVENT_CAPTION = common dso_local global i32 0, align 4
@VBI_EVENT_NETWORK_ID = common dso_local global i32 0, align 4
@VBI_EVENT_PROG_INFO = common dso_local global i32 0, align 4
@VBI_EVENT_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VLC_CODEC_TELETEXT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %2, align 4
  br label %206

18:                                               ; preds = %1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = call i8* @var_CreateGetInteger(%struct.TYPE_21__* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = ptrtoint i8* %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 999
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = call i32 @msg_Warn(%struct.TYPE_21__* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = call %struct.TYPE_22__* @calloc(i32 1, i32 72)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %30, align 8
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %5, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = icmp eq %struct.TYPE_22__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %34, i32* %2, align 4
  br label %206

35:                                               ; preds = %27
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 -6, i8* %39, align 1
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 -6, i8* %43, align 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 -6, i8* %47, align 1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 8
  %50 = call i32* (...) @vbi_decoder_new()
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 8
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 9
  %55 = call i32 @vlc_mutex_init(i32* %54)
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %35
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %62 = call i32 @msg_Err(%struct.TYPE_21__* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @Close(i32* %63)
  %65 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %65, i32* %2, align 4
  br label %206

66:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %110, %66
  %68 = load i32**, i32*** @ppsz_default_triplet, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %113

74:                                               ; preds = %67
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i32**, i32*** @ppsz_default_triplet, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @strcasecmp(i64 %84, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %80
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** @pi_default_triplet, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @vbi_teletext_set_default_region(i32* %95, i32 %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = load i32*, i32** @pi_default_triplet, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @msg_Dbg(%struct.TYPE_21__* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %92, %80, %74
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %67

113:                                              ; preds = %67
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* @VBI_EVENT_TTX_PAGE, align 4
  %118 = load i32, i32* @VBI_EVENT_NETWORK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @EventHandler, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = call i32 @vbi_event_handler_register(i32* %116, i32 %119, i32 %120, %struct.TYPE_21__* %121)
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %127 = load i32, i32* @RequestPage, align 4
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = call i32 @var_AddCallback(%struct.TYPE_21__* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %127, %struct.TYPE_22__* %128)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 100
  br i1 %133, label %134, label %165

134:                                              ; preds = %113
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 9
  br i1 %141, label %142, label %165

142:                                              ; preds = %134
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 100, %148
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @vbi_bcd2dec(i32 %155)
  %157 = add nsw i32 %149, %156
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @var_SetInteger(%struct.TYPE_21__* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %142, %134, %113
  %166 = load i32, i32* @VBI_ANY_SUBNO, align 4
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 7
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = call i8* @var_CreateGetBool(%struct.TYPE_21__* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 6
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = load i32, i32* @Opaque, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = call i32 @var_AddCallback(%struct.TYPE_21__* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %174, %struct.TYPE_22__* %175)
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %178 = call i8* @var_CreateGetInteger(%struct.TYPE_21__* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %182 = call i8* @var_CreateGetBool(%struct.TYPE_21__* %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 3
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %186 = call i8* @var_CreateGetInteger(%struct.TYPE_21__* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 3
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %165
  %194 = load i32, i32* @VLC_CODEC_TEXT, align 4
  br label %197

195:                                              ; preds = %165
  %196 = load i32, i32* @VLC_CODEC_RGBA, align 4
  br label %197

197:                                              ; preds = %195, %193
  %198 = phi i32 [ %194, %193 ], [ %196, %195 ]
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  store i32 %198, i32* %201, align 4
  %202 = load i32, i32* @Decode, align 4
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %197, %60, %33, %16
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i8* @var_CreateGetInteger(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_22__* @calloc(i32, i32) #1

declare dso_local i32* @vbi_decoder_new(...) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @Close(i32*) #1

declare dso_local i32 @strcasecmp(i64, i32*) #1

declare dso_local i32 @vbi_teletext_set_default_region(i32*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i32 @vbi_event_handler_register(i32*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_21__*, i8*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @vbi_bcd2dec(i32) #1

declare dso_local i32 @var_SetInteger(%struct.TYPE_21__*, i8*, i32) #1

declare dso_local i8* @var_CreateGetBool(%struct.TYPE_21__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
