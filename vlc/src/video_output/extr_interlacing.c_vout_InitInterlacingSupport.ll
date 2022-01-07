; ModuleID = '/home/carl/AnghaBench/vlc/src/video_output/extr_interlacing.c_vout_InitInterlacingSupport.c'
source_filename = "/home/carl/AnghaBench/vlc/src/video_output/extr_interlacing.c_vout_InitInterlacingSupport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { i8*, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_22__, i32*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_20__ = type { i64*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"Deinterlacing available\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"deinterlace\00", align 1
@VLC_VAR_INTEGER = common dso_local global i32 0, align 4
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@VLC_VAR_SETTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Deinterlace\00", align 1
@VLC_VAR_CLEARCHOICES = common dso_local global i32 0, align 4
@VLC_VAR_ADDCHOICE = common dso_local global i32 0, align 4
@DeinterlaceCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"deinterlace-mode\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Deinterlace mode\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"deinterlace-needed\00", align 1
@VLC_VAR_BOOL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"sout-deinterlace-mode\00", align 1
@VLC_VAR_SETVALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vout_InitInterlacingSupport(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_26__, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_26__, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %14 = call i32 @msg_Dbg(%struct.TYPE_25__* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %21 = load i32, i32* @VLC_VAR_INTEGER, align 4
  %22 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @var_Create(%struct.TYPE_25__* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %26 = call i32 @var_GetInteger(%struct.TYPE_25__* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %28 = load i32, i32* @VLC_VAR_SETTEXT, align 4
  %29 = call { i8*, i32 } @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %30 = bitcast %struct.TYPE_26__* %5 to { i8*, i32 }*
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i8*, i32 } %29, 0
  store i8* %32, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i8*, i32 } %29, 1
  store i32 %34, i32* %33, align 8
  %35 = bitcast %struct.TYPE_26__* %5 to { i8*, i32 }*
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %35, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %37, i32 %39)
  %41 = call %struct.TYPE_27__* @config_FindConfig(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_27__* %41, %struct.TYPE_27__** %6, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %43 = load i32, i32* @VLC_VAR_CLEARCHOICES, align 4
  %44 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %46 = icmp ne %struct.TYPE_27__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %68 = load i32, i32* @VLC_VAR_ADDCHOICE, align 4
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @vlc_gettext(i32 %75)
  %77 = bitcast %struct.TYPE_26__* %3 to { i8*, i32 }*
  %78 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %77, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %79, i32 %81, i32 %76)
  br label %83

83:                                               ; preds = %57
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %51

86:                                               ; preds = %51
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %89 = load i32, i32* @DeinterlaceCallback, align 4
  %90 = call i32 @var_AddCallback(%struct.TYPE_25__* %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32* null)
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %92 = load i32, i32* @VLC_VAR_STRING, align 4
  %93 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @var_Create(%struct.TYPE_25__* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %97 = call i8* @var_GetNonEmptyString(%struct.TYPE_25__* %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* %97, i8** %8, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %99 = load i32, i32* @VLC_VAR_SETTEXT, align 4
  %100 = call { i8*, i32 } @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %101 = bitcast %struct.TYPE_26__* %9 to { i8*, i32 }*
  %102 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 0
  %103 = extractvalue { i8*, i32 } %100, 0
  store i8* %103, i8** %102, align 8
  %104 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %101, i32 0, i32 1
  %105 = extractvalue { i8*, i32 } %100, 1
  store i32 %105, i32* %104, align 8
  %106 = bitcast %struct.TYPE_26__* %9 to { i8*, i32 }*
  %107 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %106, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %99, i8* %108, i32 %110)
  %112 = call %struct.TYPE_27__* @config_FindConfig(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_27__* %112, %struct.TYPE_27__** %10, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %114 = load i32, i32* @VLC_VAR_CLEARCHOICES, align 4
  %115 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %117 = icmp ne %struct.TYPE_27__* %116, null
  %118 = zext i1 %117 to i32
  %119 = call i64 @likely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %87
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %167, %121
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ult i32 %123, %126
  br i1 %127, label %128, label %170

128:                                              ; preds = %122
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @DeinterlaceIsModeValid(i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %128
  br label %167

140:                                              ; preds = %128
  %141 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %152 = load i32, i32* @VLC_VAR_ADDCHOICE, align 4
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %11, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @vlc_gettext(i32 %159)
  %161 = bitcast %struct.TYPE_26__* %3 to { i8*, i32 }*
  %162 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %161, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %152, i8* %163, i32 %165, i32 %160)
  br label %167

167:                                              ; preds = %140, %139
  %168 = load i32, i32* %11, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %122

170:                                              ; preds = %122
  br label %171

171:                                              ; preds = %170, %87
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %173 = load i32, i32* @DeinterlaceCallback, align 4
  %174 = call i32 @var_AddCallback(%struct.TYPE_25__* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %173, i32* null)
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %176 = load i32, i32* @VLC_VAR_BOOL, align 4
  %177 = call i32 @var_Create(%struct.TYPE_25__* %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %176)
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %179 = load i32, i32* @DeinterlaceCallback, align 4
  %180 = call i32 @var_AddCallback(%struct.TYPE_25__* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32* null)
  store i8* null, i8** %12, align 8
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %171
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %190 = call i8* @var_CreateGetNonEmptyString(%struct.TYPE_25__* %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  store i8* %190, i8** %12, align 8
  br label %191

191:                                              ; preds = %188, %171
  %192 = load i8*, i8** %12, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  store i32 1, i32* %4, align 4
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i8*, i8** %12, align 8
  store i8* %197, i8** %8, align 8
  br label %198

198:                                              ; preds = %194, %191
  %199 = load i8*, i8** %8, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i8*, i8** %8, align 8
  br label %208

203:                                              ; preds = %198
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  br label %208

208:                                              ; preds = %203, %201
  %209 = phi i8* [ %202, %201 ], [ %207, %203 ]
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %3, i32 0, i32 0
  store i8* %209, i8** %210, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %212 = load i32, i32* @VLC_VAR_SETVALUE, align 4
  %213 = bitcast %struct.TYPE_26__* %3 to { i8*, i32 }*
  %214 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %213, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (%struct.TYPE_25__*, i8*, i32, ...) @var_Change(%struct.TYPE_25__* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %212, i8* %215, i32 %217)
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %220 = load i32, i32* %4, align 4
  %221 = call i32 @var_SetInteger(%struct.TYPE_25__* %219, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %220)
  %222 = load i8*, i8** %8, align 8
  %223 = call i32 @free(i8* %222)
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 0
  store i32 0, i32* %228, align 4
  ret void
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @var_Create(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @var_GetInteger(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @var_Change(%struct.TYPE_25__*, i8*, i32, ...) #1

declare dso_local { i8*, i32 } @_(i8*) #1

declare dso_local %struct.TYPE_27__* @config_FindConfig(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vlc_gettext(i32) #1

declare dso_local i32 @var_AddCallback(%struct.TYPE_25__*, i8*, i32, i32*) #1

declare dso_local i8* @var_GetNonEmptyString(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @DeinterlaceIsModeValid(i64) #1

declare dso_local i8* @var_CreateGetNonEmptyString(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @var_SetInteger(%struct.TYPE_25__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
