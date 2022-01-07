; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciSet.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mciavi32/extr_info.c_MCIAVI_mciSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MCIERR_NULL_PARAMETER_BLOCK = common dso_local global i32 0, align 4
@MCIERR_INVALID_DEVICE_ID = common dso_local global i32 0, align 4
@MCI_TEST = common dso_local global i32 0, align 4
@MCI_SET_TIME_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MCI_FORMAT_MILLISECONDS !\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MCI_FORMAT_FRAMES !\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Bad time format %u!\0A\00", align 1
@MCIERR_BAD_TIME_FORMAT = common dso_local global i32 0, align 4
@MCI_SET_DOOR_OPEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"No support for door open !\0A\00", align 1
@MCIERR_UNSUPPORTED_FUNCTION = common dso_local global i32 0, align 4
@MCI_SET_DOOR_CLOSED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"No support for door close !\0A\00", align 1
@MCI_SET_ON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MCI_SET_VIDEO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" video\00", align 1
@MCI_SET_AUDIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c" audio all\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c" audio left\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c" audio right\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c" audio unknown\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Unknown audio channel %u\0A\00", align 1
@MCI_DGV_SET_SEEK_EXACTLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c" seek_exactly\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"MCI_SET_ON:%s%s%s\0A\00", align 1
@MCI_SET_OFF = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [20 x i8] c"MCI_SET_OFF:%s%s%s\0A\00", align 1
@MCI_DGV_SET_FILEFORMAT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@MCI_DGV_SET_STILL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Setting file format (%s) to 'AVI'\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Setting file format (%s) to 'AVSS'\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Setting file format (%s) to 'DIB'\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"Setting file format (%s) to 'JFIF'\0A\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"Setting file format (%s) to 'JPEG'\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Setting file format (%s) to 'MPEG'\0A\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"Setting file format (%s) to 'RLE DIB'\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Setting file format (%s) to 'RJPEG'\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Setting unknown file format (%s): %d\0A\00", align 1
@MCI_DGV_SET_SPEED = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"Setting speed to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MCIAVI_mciSet(i32 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32 %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @MCIERR_NULL_PARAMETER_BLOCK, align 4
  store i32 %21, i32* %4, align 4
  br label %257

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @MCIERR_INVALID_DEVICE_ID, align 4
  store i32 %26, i32* %4, align 4
  br label %257

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MCI_TEST, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %257

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = call i32 @EnterCriticalSection(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @MCI_SET_TIME_FORMAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %53 [
    i32 131, label %45
    i32 132, label %49
  ]

45:                                               ; preds = %41
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 131, i32* %48, align 4
  br label %62

49:                                               ; preds = %41
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 132, i32* %52, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = call i32 @LeaveCriticalSection(i32* %59)
  %61 = load i32, i32* @MCIERR_BAD_TIME_FORMAT, align 4
  store i32 %61, i32* %4, align 4
  br label %257

62:                                               ; preds = %49, %45
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @MCI_SET_DOOR_OPEN, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = call i32 @LeaveCriticalSection(i32* %71)
  %73 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %73, i32* %4, align 4
  br label %257

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MCI_SET_DOOR_CLOSED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = call i32 @LeaveCriticalSection(i32* %82)
  %84 = load i32, i32* @MCIERR_UNSUPPORTED_FUNCTION, align 4
  store i32 %84, i32* %4, align 4
  br label %257

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MCI_SET_ON, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %85
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MCI_SET_VIDEO, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, 4
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %90
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @MCI_SET_AUDIO, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %124 [
    i32 130, label %109
    i32 129, label %114
    i32 128, label %119
  ]

109:                                              ; preds = %105
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 3
  store i32 %113, i32* %111, align 4
  br label %129

114:                                              ; preds = %105
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %129

119:                                              ; preds = %105
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, 2
  store i32 %123, i32* %121, align 4
  br label %129

124:                                              ; preds = %105
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %119, %114, %109
  br label %130

130:                                              ; preds = %129, %100
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @MCI_DGV_SET_SEEK_EXACTLY, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %136

136:                                              ; preds = %135, %130
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %137, i8* %138, i8* %139)
  br label %141

141:                                              ; preds = %136, %85
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @MCI_SET_OFF, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %197

146:                                              ; preds = %141
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @MCI_SET_VIDEO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, -5
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @MCI_SET_AUDIO, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %156
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %180 [
    i32 130, label %165
    i32 129, label %170
    i32 128, label %175
  ]

165:                                              ; preds = %161
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, -4
  store i32 %169, i32* %167, align 4
  br label %185

170:                                              ; preds = %161
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, -3
  store i32 %174, i32* %172, align 4
  br label %185

175:                                              ; preds = %161
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, -3
  store i32 %179, i32* %177, align 4
  br label %185

180:                                              ; preds = %161
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %13, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %180, %175, %170, %165
  br label %186

186:                                              ; preds = %185, %156
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @MCI_DGV_SET_SEEK_EXACTLY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8** %14, align 8
  br label %192

192:                                              ; preds = %191, %186
  %193 = load i8*, i8** %12, align 8
  %194 = load i8*, i8** %13, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* %193, i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %192, %141
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @MCI_DGV_SET_FILEFORMAT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %243

202:                                              ; preds = %197
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %15, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @MCI_DGV_SET_STILL, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8** %15, align 8
  br label %208

208:                                              ; preds = %207, %202
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  switch i32 %211, label %236 [
    i32 140, label %212
    i32 139, label %215
    i32 138, label %218
    i32 137, label %221
    i32 136, label %224
    i32 135, label %227
    i32 134, label %230
    i32 133, label %233
  ]

212:                                              ; preds = %208
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* %213)
  br label %242

215:                                              ; preds = %208
  %216 = load i8*, i8** %15, align 8
  %217 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0), i8* %216)
  br label %242

218:                                              ; preds = %208
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i64 0, i64 0), i8* %219)
  br label %242

221:                                              ; preds = %208
  %222 = load i8*, i8** %15, align 8
  %223 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %222)
  br label %242

224:                                              ; preds = %208
  %225 = load i8*, i8** %15, align 8
  %226 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0), i8* %225)
  br label %242

227:                                              ; preds = %208
  %228 = load i8*, i8** %15, align 8
  %229 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* %228)
  br label %242

230:                                              ; preds = %208
  %231 = load i8*, i8** %15, align 8
  %232 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* %231)
  br label %242

233:                                              ; preds = %208
  %234 = load i8*, i8** %15, align 8
  %235 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8* %234)
  br label %242

236:                                              ; preds = %208
  %237 = load i8*, i8** %15, align 8
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8* %237, i32 %240)
  br label %242

242:                                              ; preds = %236, %233, %230, %227, %224, %221, %218, %215, %212
  br label %243

243:                                              ; preds = %242, %197
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @MCI_DGV_SET_SPEED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, i8*, ...) @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* %251)
  br label %253

253:                                              ; preds = %248, %243
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 2
  %256 = call i32 @LeaveCriticalSection(i32* %255)
  store i32 0, i32* %4, align 4
  br label %257

257:                                              ; preds = %253, %79, %68, %53, %32, %25, %20
  %258 = load i32, i32* %4, align 4
  ret i32 %258
}

declare dso_local %struct.TYPE_5__* @MCIAVI_mciGetOpenDev(i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @FIXME(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
