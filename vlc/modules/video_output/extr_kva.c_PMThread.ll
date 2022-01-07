; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_kva.c_PMThread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_kva.c_PMThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_init = type { i32*, i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i32, i32, i32, i32, i64, i32, %struct.TYPE_17__*, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i32 }

@WC_VLC_KVA = common dso_local global i32 0, align 4
@WndProc = common dso_local global i32 0, align 4
@CS_SIZEREDRAW = common dso_local global i32 0, align 4
@CS_MOVENOTIFY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"kva-fixt23\00", align 1
@VOUT_WINDOW_TYPE_HWND = common dso_local global i64 0, align 8
@QWL_STYLE = common dso_local global i32 0, align 4
@WS_CLIPCHILDREN = common dso_local global i32 0, align 4
@FCF_TITLEBAR = common dso_local global i32 0, align 4
@HWND_DESKTOP = common dso_local global i64 0, align 8
@FCF_SYSMENU = common dso_local global i32 0, align 4
@FCF_MINMAX = common dso_local global i32 0, align 4
@FCF_SIZEBORDER = common dso_local global i32 0, align 4
@FCF_TASKLIST = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NULLHANDLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot create a frame window\00", align 1
@MyFrameWndProc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"kva-video-mode\00", align 1
@KVAM_AUTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"snap\00", align 1
@KVAM_SNAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wo\00", align 1
@KVAM_WO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"vman\00", align 1
@KVAM_VMAN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"dive\00", align 1
@KVAM_DIVE = common dso_local global i32 0, align 4
@COLOR_KEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"cannot initialize KVA\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"selected video mode = %s\00", align 1
@psz_video_mode = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot open display\00", align 1
@Prepare = common dso_local global i32 0, align 4
@Display = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@Close = common dso_local global i32 0, align 4
@MCW_EM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @PMThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PMThread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.open_init*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.open_init*
  store %struct.open_init* %15, %struct.open_init** %3, align 8
  %16 = load %struct.open_init*, %struct.open_init** %3, align 8
  %17 = getelementptr inbounds %struct.open_init, %struct.open_init* %16, i32 0, i32 2
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %4, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %5, align 8
  %22 = load %struct.open_init*, %struct.open_init** %3, align 8
  %23 = getelementptr inbounds %struct.open_init, %struct.open_init* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = load %struct.open_init*, %struct.open_init** %3, align 8
  %26 = getelementptr inbounds %struct.open_init, %struct.open_init* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @video_format_ApplyRotation(i32* %12, i32* %28)
  %30 = call i32 (...) @MorphToPM()
  %31 = call i32 @WinInitialize(i32 0)
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WinCreateMsgQueue(i32 %36, i32 0)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WC_VLC_KVA, align 4
  %44 = load i32, i32* @WndProc, align 4
  %45 = load i32, i32* @CS_SIZEREDRAW, align 4
  %46 = load i32, i32* @CS_MOVENOTIFY, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @WinRegisterClass(i32 %42, i32 %43, i32 %44, i32 %47, i32 4)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = call i32 @var_CreateGetBool(%struct.TYPE_18__* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %1
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VOUT_WINDOW_TYPE_HWND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 8
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  br label %75

75:                                               ; preds = %67, %57, %1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  %79 = icmp ne %struct.TYPE_17__* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 10
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 10
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @QWL_STYLE, align 4
  %93 = call i32 @WinQueryWindowULong(i64 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 10
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @QWL_STYLE, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @WS_CLIPCHILDREN, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @WinSetWindowULong(i64 %96, i32 %97, i32 %100)
  %102 = load i32, i32* @FCF_TITLEBAR, align 4
  store i32 %102, i32* %8, align 4
  br label %116

103:                                              ; preds = %75
  %104 = load i64, i64* @HWND_DESKTOP, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 10
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @FCF_SYSMENU, align 4
  %108 = load i32, i32* @FCF_TITLEBAR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @FCF_MINMAX, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @FCF_SIZEBORDER, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @FCF_TASKLIST, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %103, %80
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 10
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @WS_VISIBLE, align 4
  %121 = load i32, i32* @WC_VLC_KVA, align 4
  %122 = load i64, i64* @NULLHANDLE, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = call i64 @WinCreateStdWindow(i64 %119, i32 %120, i32* %8, i32 %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i64 0, i64 %122, i32 1, i64* %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NULLHANDLE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %116
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = call i32 @msg_Err(%struct.TYPE_18__* %134, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %307

136:                                              ; preds = %116
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %141 = call i32 @WinSetWindowPtr(i64 %139, i32 0, %struct.TYPE_18__* %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 8
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %143, align 8
  %145 = icmp ne %struct.TYPE_17__* %144, null
  br i1 %145, label %159, label %146

146:                                              ; preds = %136
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %151 = call i32 @WinSetWindowPtr(i64 %149, i32 0, %struct.TYPE_18__* %150)
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* @MyFrameWndProc, align 4
  %156 = call i32 @WinSubclassWindow(i64 %154, i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %146, %136
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %161 = call i8* @var_CreateGetString(%struct.TYPE_18__* %160, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i8* %161, i8** %10, align 8
  %162 = load i32, i32* @KVAM_AUTO, align 4
  store i32 %162, i32* %11, align 4
  %163 = load i8*, i8** %10, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @KVAM_SNAP, align 4
  store i32 %167, i32* %11, align 4
  br label %189

168:                                              ; preds = %159
  %169 = load i8*, i8** %10, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %168
  %173 = load i32, i32* @KVAM_WO, align 4
  store i32 %173, i32* %11, align 4
  br label %188

174:                                              ; preds = %168
  %175 = load i8*, i8** %10, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @KVAM_VMAN, align 4
  store i32 %179, i32* %11, align 4
  br label %187

180:                                              ; preds = %174
  %181 = load i8*, i8** %10, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @KVAM_DIVE, align 4
  store i32 %185, i32* %11, align 4
  br label %186

186:                                              ; preds = %184, %180
  br label %187

187:                                              ; preds = %186, %178
  br label %188

188:                                              ; preds = %187, %172
  br label %189

189:                                              ; preds = %188, %166
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @free(i8* %190)
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i32, i32* @COLOR_KEY, align 4
  %197 = call i64 @kvaInit(i32 %192, i64 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %201 = call i32 @msg_Err(%struct.TYPE_18__* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %289

202:                                              ; preds = %189
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 9
  %205 = call i32 @kvaCaps(%struct.TYPE_14__* %204)
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = load i32*, i32** @psz_video_mode, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %207, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @msg_Dbg(%struct.TYPE_18__* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %218 = call i64 @OpenDisplay(%struct.TYPE_18__* %217, i32* %12)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %202
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %222 = call i32 @msg_Err(%struct.TYPE_18__* %221, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %287

223:                                              ; preds = %202
  %224 = call i32 (...) @kvaDisableScreenSaver()
  %225 = load i32, i32* %12, align 4
  %226 = load i32*, i32** %7, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* @Prepare, align 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* @Display, align 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* @Control, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* @Close, align 4
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* @MCW_EM, align 4
  %240 = load i32, i32* @MCW_EM, align 4
  %241 = call i32 @_control87(i32 %239, i32 %240)
  %242 = load i32, i32* @VLC_SUCCESS, align 4
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 3
  store i32 %242, i32* %244, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @DosPostEventSem(i32 %247)
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %250, align 8
  %252 = icmp ne %struct.TYPE_17__* %251, null
  br i1 %252, label %259, label %253

253:                                              ; preds = %223
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i32, i32* @TRUE, align 4
  %258 = call i32 @WinSetVisibleRegionNotify(i64 %256, i32 %257)
  br label %259

259:                                              ; preds = %253, %223
  br label %260

260:                                              ; preds = %267, %259
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* @NULLHANDLE, align 8
  %265 = call i64 @WinGetMsg(i32 %263, i32* %9, i64 %264, i32 0, i32 0)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %260
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @WinDispatchMsg(i32 %270, i32* %9)
  br label %260

272:                                              ; preds = %260
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %273, i32 0, i32 8
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %274, align 8
  %276 = icmp ne %struct.TYPE_17__* %275, null
  br i1 %276, label %283, label %277

277:                                              ; preds = %272
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i32, i32* @FALSE, align 4
  %282 = call i32 @WinSetVisibleRegionNotify(i64 %280, i32 %281)
  br label %283

283:                                              ; preds = %277, %272
  %284 = call i32 (...) @kvaEnableScreenSaver()
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %286 = call i32 @CloseDisplay(%struct.TYPE_18__* %285)
  br label %287

287:                                              ; preds = %283, %220
  %288 = call i32 (...) @kvaDone()
  br label %289

289:                                              ; preds = %287, %199
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 8
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %291, align 8
  %293 = icmp ne %struct.TYPE_17__* %292, null
  br i1 %293, label %302, label %294

294:                                              ; preds = %289
  %295 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @WinSubclassWindow(i64 %297, i32 %300)
  br label %302

302:                                              ; preds = %294, %289
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = call i32 @WinDestroyWindow(i64 %305)
  br label %307

307:                                              ; preds = %302, %133
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = load i64, i64* @HWND_DESKTOP, align 8
  %314 = load i32, i32* @TRUE, align 4
  %315 = call i32 @WinShowPointer(i64 %313, i32 %314)
  br label %316

316:                                              ; preds = %312, %307
  %317 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @WinDestroyMsgQueue(i32 %319)
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 4
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @WinTerminate(i32 %323)
  %325 = load i32, i32* @VLC_EGENERIC, align 4
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @DosPostEventSem(i32 %330)
  ret void
}

declare dso_local i32 @video_format_ApplyRotation(i32*, i32*) #1

declare dso_local i32 @MorphToPM(...) #1

declare dso_local i32 @WinInitialize(i32) #1

declare dso_local i32 @WinCreateMsgQueue(i32, i32) #1

declare dso_local i32 @WinRegisterClass(i32, i32, i32, i32, i32) #1

declare dso_local i32 @var_CreateGetBool(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @WinQueryWindowULong(i64, i32) #1

declare dso_local i32 @WinSetWindowULong(i64, i32, i32) #1

declare dso_local i64 @WinCreateStdWindow(i64, i32, i32*, i32, i8*, i64, i64, i32, i64*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @WinSetWindowPtr(i64, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @WinSubclassWindow(i64, i32) #1

declare dso_local i8* @var_CreateGetString(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @kvaInit(i32, i64, i32) #1

declare dso_local i32 @kvaCaps(%struct.TYPE_14__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i64 @OpenDisplay(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @kvaDisableScreenSaver(...) #1

declare dso_local i32 @_control87(i32, i32) #1

declare dso_local i32 @DosPostEventSem(i32) #1

declare dso_local i32 @WinSetVisibleRegionNotify(i64, i32) #1

declare dso_local i64 @WinGetMsg(i32, i32*, i64, i32, i32) #1

declare dso_local i32 @WinDispatchMsg(i32, i32*) #1

declare dso_local i32 @kvaEnableScreenSaver(...) #1

declare dso_local i32 @CloseDisplay(%struct.TYPE_18__*) #1

declare dso_local i32 @kvaDone(...) #1

declare dso_local i32 @WinDestroyWindow(i64) #1

declare dso_local i32 @WinShowPointer(i64, i32) #1

declare dso_local i32 @WinDestroyMsgQueue(i32) #1

declare dso_local i32 @WinTerminate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
