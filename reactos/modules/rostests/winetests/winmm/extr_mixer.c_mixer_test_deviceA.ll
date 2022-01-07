; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_test_deviceA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winmm/extr_mixer.c_mixer_test_deviceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i32, i64, %struct.TYPE_17__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_15__ = type { i64, i32 }

@MMSYSERR_INVALPARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"mixerGetDevCapsA: MMSYSERR_INVALPARAM expected, got %s\0A\00", align 1
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [53 x i8] c"mixerGetDevCapsA: MMSYSERR_NOERROR expected, got %s\0A\00", align 1
@winetest_interactive = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"  %d: \22%s\22 %d.%d (%d:%d) destinations=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  %d: \22%s\22 %d.%d (%d:%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"mixerOpen: MMSYSERR_NOERROR expected, got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Got wrong device caps\0A\00", align 1
@MIXER_GETLINEINFOF_DESTINATION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [89 x i8] c"mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): MMSYSERR_INVALPARAM expected, got %s\0A\00", align 1
@MIXERR_INVALLINE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [109 x i8] c"mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): MMSYSERR_INVALPARAM or MIXERR_INVALLINE expected, got %s\0A\00", align 1
@MMSYSERR_INVALFLAG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [60 x i8] c"mixerGetLineInfoA(-1): MMSYSERR_INVALFLAG expected, got %s\0A\00", align 1
@MMSYSERR_NODRIVER = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [86 x i8] c"mixerGetLineInfoA(MIXER_GETLINEINFOF_DESTINATION): MMSYSERR_NOERROR expected, got %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"dwUser was not reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"  No Driver\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"    %d: \22%s\22 (%s) Destination=%d Source=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"        LineID=%08x Channels=%d Connections=%d Controls=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"        State=0x%08x(%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"        ComponentType=%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"        Type=%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"        Device=%d (%s) %d.%d (%d:%d)\0A\00", align 1
@MIXER_GETLINEINFOF_SOURCE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [81 x i8] c"mixerGetLineInfoA(MIXER_GETLINEINFOF_SOURCE): MMSYSERR_NOERROR expected, got %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"      %d: \22%s\22 (%s) Destination=%d Source=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"          LineID=%08x Channels=%d Connections=%d Controls=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"          State=0x%08x(%s)\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"          ComponentType=%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"          Type=%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"          Device=%d (%s) %d.%d (%d:%d)\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@MIXER_GETLINECONTROLSF_ALL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [89 x i8] c"mixerGetLineControlsA(MIXER_GETLINECONTROLSF_ALL): MMSYSERR_INVALPARAM expected, got %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [87 x i8] c"mixerGetLineControlsA(-1): MMSYSERR_INVALFLAG or MMSYSERR_INVALPARAM expected, got %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [86 x i8] c"mixerGetLineControlsA(MIXER_GETLINECONTROLSF_ALL): MMSYSERR_NOERROR expected, got %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"        %d: \22%s\22 (%s) ControlID=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"            ControlType=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"            Control=0x%08x(%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [44 x i8] c"            Items=%d Min=%d Max=%d Step=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mixer_test_deviceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_test_deviceA(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_15__, align 8
  %15 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @mixerGetDevCapsA(i32 %16, %struct.TYPE_20__* null, i32 32)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @mmsys_error(i64 %22)
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @mixerGetDevCapsA(i32 %25, %struct.TYPE_20__* %3, i32 4)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @mmsys_error(i64 %31)
  %33 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @mixerGetDevCapsA(i32 %34, %struct.TYPE_20__* %3, i32 32)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @mmsys_error(i64 %40)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i64, i64* @winetest_interactive, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %1
  %46 = load i32, i32* %2, align 4
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 255
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %48, i32 %51, i32 %54, i32 %56, i32 %58, i64 %60)
  br label %77

62:                                               ; preds = %1
  %63 = load i32, i32* %2, align 4
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %65, i32 %68, i32 %71, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %62, %45
  %78 = bitcast i64* %4 to i32*
  %79 = load i32, i32* %2, align 4
  %80 = call i64 @mixerOpen(i32* %78, i32 %79, i32 0, i32 0, i32 0)
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @mmsys_error(i64 %85)
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %546

91:                                               ; preds = %77
  %92 = load i64, i64* %4, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i64 @mixerGetDevCapsA(i32 %93, %struct.TYPE_20__* %10, i32 32)
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @mmsys_error(i64 %99)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @strcmp(i32 %103, i32 %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %111

111:                                              ; preds = %539, %91
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %112, %114
  br i1 %115, label %116, label %542

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i32, i32* @MIXER_GETLINEINFOF_DESTINATION, align 4
  %122 = call i64 @mixerGetLineInfoA(i64 %120, %struct.TYPE_19__* %11, i32 %121)
  store i64 %122, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @mmsys_error(i64 %127)
  %129 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 96, i32* %130, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %132, i64* %133, align 8
  %134 = load i64, i64* %4, align 8
  %135 = load i32, i32* @MIXER_GETLINEINFOF_DESTINATION, align 4
  %136 = call i64 @mixerGetLineInfoA(i64 %134, %struct.TYPE_19__* %11, i32 %135)
  store i64 %136, i64* %5, align 8
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %116
  %141 = load i64, i64* %5, align 8
  %142 = load i64, i64* @MIXERR_INVALLINE, align 8
  %143 = icmp eq i64 %141, %142
  br label %144

144:                                              ; preds = %140, %116
  %145 = phi i1 [ true, %116 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  %147 = load i64, i64* %5, align 8
  %148 = call i32 @mmsys_error(i64 %147)
  %149 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 96, i32* %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* %4, align 8
  %154 = load i32, i32* @MIXER_GETLINEINFOF_DESTINATION, align 4
  %155 = call i64 @mixerGetLineInfoA(i64 %153, %struct.TYPE_19__* null, i32 %154)
  store i64 %155, i64* %5, align 8
  %156 = load i64, i64* %5, align 8
  %157 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %158 = icmp eq i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @mmsys_error(i64 %160)
  %162 = call i32 (i32, i8*, ...) @ok(i32 %159, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 96, i32* %163, align 8
  %164 = load i64, i64* %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %164, i64* %165, align 8
  %166 = load i64, i64* %4, align 8
  %167 = call i64 @mixerGetLineInfoA(i64 %166, %struct.TYPE_19__* %11, i32 -1)
  store i64 %167, i64* %5, align 8
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* @MMSYSERR_INVALFLAG, align 8
  %170 = icmp eq i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = load i64, i64* %5, align 8
  %173 = call i32 @mmsys_error(i64 %172)
  %174 = call i32 (i32, i8*, ...) @ok(i32 %171, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 96, i32* %175, align 8
  %176 = load i64, i64* %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %176, i64* %177, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  store i64 3735928559, i64* %178, align 8
  %179 = load i64, i64* %4, align 8
  %180 = load i32, i32* @MIXER_GETLINEINFOF_DESTINATION, align 4
  %181 = call i64 @mixerGetLineInfoA(i64 %179, %struct.TYPE_19__* %11, i32 %180)
  store i64 %181, i64* %5, align 8
  %182 = load i64, i64* %5, align 8
  %183 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %144
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %185, %144
  %190 = phi i1 [ true, %144 ], [ %188, %185 ]
  %191 = zext i1 %190 to i32
  %192 = load i64, i64* %5, align 8
  %193 = call i32 @mmsys_error(i64 %192)
  %194 = call i32 (i32, i8*, ...) @ok(i32 %191, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  %198 = zext i1 %197 to i32
  %199 = call i32 (i32, i8*, ...) @ok(i32 %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %200 = load i64, i64* %5, align 8
  %201 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %189
  %204 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %538

205:                                              ; preds = %189
  %206 = load i64, i64* %5, align 8
  %207 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %537

209:                                              ; preds = %205
  %210 = load i64, i64* @winetest_interactive, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %268

212:                                              ; preds = %209
  %213 = load i64, i64* %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 12
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 11
  %217 = load i32, i32* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %213, i32 %215, i32 %217, i64 %219, i64 %221)
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 10
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 5
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13, i64 0, i64 0), i64 %224, i32 %226, i64 %228, i32 %230)
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 9
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 9
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @line_flags(i32 %235)
  %237 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %233, i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @component_type(i32 %239)
  %241 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %240)
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @target_type(i32 %244)
  %246 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 %245)
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = ashr i32 %255, 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 255
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i32 %249, i32 %252, i32 %256, i32 %260, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %212, %209
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %271

271:                                              ; preds = %533, %268
  %272 = load i64, i64* %7, align 8
  %273 = load i64, i64* %8, align 8
  %274 = icmp ult i64 %272, %273
  br i1 %274, label %275, label %536

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  store i32 96, i32* %276, align 8
  %277 = load i64, i64* %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  store i64 %277, i64* %278, align 8
  %279 = load i64, i64* %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  store i64 %279, i64* %280, align 8
  %281 = load i64, i64* %4, align 8
  %282 = load i32, i32* @MIXER_GETLINEINFOF_SOURCE, align 4
  %283 = call i64 @mixerGetLineInfoA(i64 %281, %struct.TYPE_19__* %11, i32 %282)
  store i64 %283, i64* %5, align 8
  %284 = load i64, i64* %5, align 8
  %285 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %291, label %287

287:                                              ; preds = %275
  %288 = load i64, i64* %5, align 8
  %289 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %290 = icmp eq i64 %288, %289
  br label %291

291:                                              ; preds = %287, %275
  %292 = phi i1 [ true, %275 ], [ %290, %287 ]
  %293 = zext i1 %292 to i32
  %294 = load i64, i64* %5, align 8
  %295 = call i32 @mmsys_error(i64 %294)
  %296 = call i32 (i32, i8*, ...) @ok(i32 %293, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0), i32 %295)
  %297 = load i64, i64* %5, align 8
  %298 = load i64, i64* @MMSYSERR_NODRIVER, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %302

300:                                              ; preds = %291
  %301 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %532

302:                                              ; preds = %291
  %303 = load i64, i64* %5, align 8
  %304 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %531

306:                                              ; preds = %302
  %307 = load i64, i64* @winetest_interactive, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %365

309:                                              ; preds = %306
  %310 = load i64, i64* %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 12
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 11
  %314 = load i32, i32* %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i64 0, i64 0), i64 %310, i32 %312, i32 %314, i64 %316, i64 %318)
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %321 = load i64, i64* %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 10
  %323 = load i32, i32* %322, align 4
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 5
  %325 = load i64, i64* %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0), i64 %321, i32 %323, i64 %325, i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 9
  %330 = load i32, i32* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 9
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @line_flags(i32 %332)
  %334 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %330, i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 8
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @component_type(i32 %336)
  %338 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %337)
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 5
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @target_type(i32 %341)
  %343 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %342)
  %344 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 4
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = ashr i32 %352, 8
  %354 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %355 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = and i32 %356, 255
  %358 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %362 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %346, i32 %349, i32 %353, i32 %357, i32 %360, i32 %363)
  br label %365

365:                                              ; preds = %309, %306
  %366 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %530

369:                                              ; preds = %365
  %370 = call i32 (...) @GetProcessHeap()
  %371 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %373 = load i32, i32* %372, align 8
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 4
  %376 = trunc i64 %375 to i32
  %377 = call %struct.TYPE_21__* @HeapAlloc(i32 %370, i32 %371, i32 %376)
  store %struct.TYPE_21__* %377, %struct.TYPE_21__** %12, align 8
  %378 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %379 = icmp ne %struct.TYPE_21__* %378, null
  br i1 %379, label %380, label %529

380:                                              ; preds = %369
  %381 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 32)
  %382 = load i64, i64* %4, align 8
  %383 = load i32, i32* @MIXER_GETLINECONTROLSF_ALL, align 4
  %384 = call i64 @mixerGetLineControlsA(i64 %382, %struct.TYPE_18__* null, i32 %383)
  store i64 %384, i64* %5, align 8
  %385 = load i64, i64* %5, align 8
  %386 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %387 = icmp eq i64 %385, %386
  %388 = zext i1 %387 to i32
  %389 = load i64, i64* %5, align 8
  %390 = call i32 @mmsys_error(i64 %389)
  %391 = call i32 (i32, i8*, ...) @ok(i32 %388, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.25, i64 0, i64 0), i32 %390)
  %392 = load i64, i64* %4, align 8
  %393 = call i64 @mixerGetLineControlsA(i64 %392, %struct.TYPE_18__* %13, i32 -1)
  store i64 %393, i64* %5, align 8
  %394 = load i64, i64* %5, align 8
  %395 = load i64, i64* @MMSYSERR_INVALFLAG, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %401, label %397

397:                                              ; preds = %380
  %398 = load i64, i64* %5, align 8
  %399 = load i64, i64* @MMSYSERR_INVALPARAM, align 8
  %400 = icmp eq i64 %398, %399
  br label %401

401:                                              ; preds = %397, %380
  %402 = phi i1 [ true, %380 ], [ %400, %397 ]
  %403 = zext i1 %402 to i32
  %404 = load i64, i64* %5, align 8
  %405 = call i32 @mmsys_error(i64 %404)
  %406 = call i32 (i32, i8*, ...) @ok(i32 %403, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.26, i64 0, i64 0), i32 %405)
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 32, i32* %407, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %409 = load i32, i32* %408, align 8
  %410 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  store i32 %409, i32* %410, align 4
  %411 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 4
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  store i64 %412, i64* %413, align 8
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  store %struct.TYPE_21__* %414, %struct.TYPE_21__** %415, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 3
  store i32 4, i32* %416, align 8
  %417 = load i64, i64* %4, align 8
  %418 = load i32, i32* @MIXER_GETLINECONTROLSF_ALL, align 4
  %419 = call i64 @mixerGetLineControlsA(i64 %417, %struct.TYPE_18__* %13, i32 %418)
  store i64 %419, i64* %5, align 8
  %420 = load i64, i64* %5, align 8
  %421 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %422 = icmp eq i64 %420, %421
  %423 = zext i1 %422 to i32
  %424 = load i64, i64* %5, align 8
  %425 = call i32 @mmsys_error(i64 %424)
  %426 = call i32 (i32, i8*, ...) @ok(i32 %423, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.27, i64 0, i64 0), i32 %425)
  %427 = load i64, i64* %5, align 8
  %428 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %525

430:                                              ; preds = %401
  store i64 0, i64* %9, align 8
  br label %431

431:                                              ; preds = %521, %430
  %432 = load i64, i64* %9, align 8
  %433 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = icmp ult i64 %432, %435
  br i1 %436, label %437, label %524

437:                                              ; preds = %431
  %438 = load i64, i64* @winetest_interactive, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %515

440:                                              ; preds = %437
  %441 = load i64, i64* %9, align 8
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %443 = load i64, i64* %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 7
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %448 = load i64, i64* %9, align 8
  %449 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %453 = load i64, i64* %9, align 8
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %452, i64 %453
  %455 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 8
  %457 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i64 0, i64 0), i64 %441, i32 %446, i64 %451, i32 %456)
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %459 = load i64, i64* %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %460, i32 0, i32 6
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @control_type(i32 %462)
  %464 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0), i32 %463)
  %465 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %466 = load i64, i64* %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %465, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %467, i32 0, i32 5
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %471 = load i64, i64* %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %470, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %472, i32 0, i32 5
  %474 = load i32, i32* %473, align 8
  %475 = call i32 @control_flags(i32 %474)
  %476 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i32 %469, i32 %475)
  %477 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %478 = load i64, i64* %9, align 8
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %477, i64 %478
  %480 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %479, i32 0, i32 2
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %483 = load i64, i64* %9, align 8
  %484 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %482, i64 %483
  %485 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %484, i32 0, i32 4
  %486 = load i32, i32* %485, align 4
  %487 = call { i64, i32 } @S1(i32 %486)
  %488 = bitcast %struct.TYPE_15__* %14 to { i64, i32 }*
  %489 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %488, i32 0, i32 0
  %490 = extractvalue { i64, i32 } %487, 0
  store i64 %490, i64* %489, align 8
  %491 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %488, i32 0, i32 1
  %492 = extractvalue { i64, i32 } %487, 1
  store i32 %492, i32* %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %496 = load i64, i64* %9, align 8
  %497 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %495, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 4
  %500 = call { i64, i32 } @S1(i32 %499)
  %501 = bitcast %struct.TYPE_15__* %15 to { i64, i32 }*
  %502 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %501, i32 0, i32 0
  %503 = extractvalue { i64, i32 } %500, 0
  store i64 %503, i64* %502, align 8
  %504 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %501, i32 0, i32 1
  %505 = extractvalue { i64, i32 } %500, 1
  store i32 %505, i32* %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %509 = load i64, i64* %9, align 8
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %510, i32 0, i32 3
  %512 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i64 0, i64 0), i64 %481, i32 %494, i64 %507, i32 %513)
  br label %515

515:                                              ; preds = %440, %437
  %516 = load i64, i64* %4, align 8
  %517 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %518 = load i64, i64* %9, align 8
  %519 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %517, i64 %518
  %520 = call i32 @mixer_test_controlA(i64 %516, %struct.TYPE_21__* %519)
  br label %521

521:                                              ; preds = %515
  %522 = load i64, i64* %9, align 8
  %523 = add i64 %522, 1
  store i64 %523, i64* %9, align 8
  br label %431

524:                                              ; preds = %431
  br label %525

525:                                              ; preds = %524, %401
  %526 = call i32 (...) @GetProcessHeap()
  %527 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %528 = call i32 @HeapFree(i32 %526, i32 0, %struct.TYPE_21__* %527)
  br label %529

529:                                              ; preds = %525, %369
  br label %530

530:                                              ; preds = %529, %365
  br label %531

531:                                              ; preds = %530, %302
  br label %532

532:                                              ; preds = %531, %300
  br label %533

533:                                              ; preds = %532
  %534 = load i64, i64* %7, align 8
  %535 = add i64 %534, 1
  store i64 %535, i64* %7, align 8
  br label %271

536:                                              ; preds = %271
  br label %537

537:                                              ; preds = %536, %205
  br label %538

538:                                              ; preds = %537, %203
  br label %539

539:                                              ; preds = %538
  %540 = load i64, i64* %6, align 8
  %541 = add i64 %540, 1
  store i64 %541, i64* %6, align 8
  br label %111

542:                                              ; preds = %111
  %543 = load i64, i64* %4, align 8
  %544 = trunc i64 %543 to i32
  %545 = call i32 @test_mixerClose(i32 %544)
  br label %546

546:                                              ; preds = %542, %77
  ret void
}

declare dso_local i64 @mixerGetDevCapsA(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @mmsys_error(i64) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i64 @mixerOpen(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i64 @mixerGetLineInfoA(i64, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @line_flags(i32) #1

declare dso_local i32 @component_type(i32) #1

declare dso_local i32 @target_type(i32) #1

declare dso_local %struct.TYPE_21__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @mixerGetLineControlsA(i64, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @control_type(i32) #1

declare dso_local i32 @control_flags(i32) #1

declare dso_local { i64, i32 } @S1(i32) #1

declare dso_local i32 @mixer_test_controlA(i64, %struct.TYPE_21__*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @test_mixerClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
