; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_linux_dvb.c_FrontendOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"dvb-adapter\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dvb-device\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dvb-probe\00", align 1
@FRONTEND = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"snprintf() truncated string for FRONTEND\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Opening device %s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"FrontEndOpen: opening device failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"DVB-T\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"DVB-C\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"DVB-S\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ATSC\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"qpsk\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"dvb-s\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"satellite\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"cable\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"dvb-c\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"terrestrial\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"dvb-t\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"usdigital\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"atsc\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"requested type %s not supported by %s tuner\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"using default values for frontend info\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"method of access is %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FrontendOpen(i32* %0, %struct.TYPE_10__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @var_GetInteger(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @var_GetInteger(i32* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @var_GetBool(i32* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %20, i32* %11, align 4
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %22 = load i8*, i8** @FRONTEND, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @snprintf(i8* %21, i32 128, i8* %22, i32 %23, i32 %24)
  %26 = icmp sge i32 %25, 128
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @msg_Err(i32* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 127
  store i8 0, i8* %30, align 1
  br label %31

31:                                               ; preds = %27, %3
  %32 = call %struct.TYPE_9__* @malloc(i32 4)
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %8, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %38, i32* %4, align 4
  br label %227

39:                                               ; preds = %31
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %42 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %41)
  %43 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %44 = load i32, i32* @O_RDWR, align 4
  %45 = load i32, i32* @O_NONBLOCK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @vlc_open(i8* %43, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = icmp slt i32 %47, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %39
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @vlc_strerror_c(i32 %53)
  %55 = call i32 (i32*, i8*, ...) @msg_Err(i32* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = call i32 @free(%struct.TYPE_9__* %56)
  %58 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %58, i32* %4, align 4
  br label %227

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %165

62:                                               ; preds = %59
  store i8* null, i8** %13, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = call i64 @FrontendInfo(i32* %63, %struct.TYPE_10__* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @vlc_close(i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = call i32 @free(%struct.TYPE_9__* %72)
  %74 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %74, i32* %4, align 4
  br label %227

75:                                               ; preds = %62
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %84 [
    i32 130, label %80
    i32 129, label %81
    i32 128, label %82
    i32 131, label %83
  ]

80:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %85

81:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %14, align 8
  br label %85

82:                                               ; preds = %75
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %14, align 8
  br label %85

83:                                               ; preds = %75
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  br label %85

84:                                               ; preds = %75
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  br label %85

85:                                               ; preds = %84, %83, %82, %81, %80
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @strncmp(i8* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 9)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %93, %89, %85
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 128
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %104

104:                                              ; preds = %103, %97, %93
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @strncmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108, %104
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 129
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %119

119:                                              ; preds = %118, %112, %108
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 11)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 @strncmp(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123, %119
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 130
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %134

134:                                              ; preds = %133, %127, %123
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @strncmp(i8* %135, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 9)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @strncmp(i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 131
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %13, align 8
  br label %149

149:                                              ; preds = %148, %142, %138
  %150 = load i8*, i8** %13, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load i32*, i32** %5, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i8*, i8** %14, align 8
  %156 = call i32 (i32*, i8*, ...) @msg_Err(i32* %153, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i8* %154, i8* %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @vlc_close(i32 %159)
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %162 = call i32 @free(%struct.TYPE_9__* %161)
  %163 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %163, i32* %4, align 4
  br label %227

164:                                              ; preds = %149
  br label %225

165:                                              ; preds = %59
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.21, i64 0, i64 0))
  %168 = load i32*, i32** %5, align 8
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* %169)
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32 128, i32* %173, align 4
  %174 = load i8*, i8** %7, align 8
  %175 = call i32 @strncmp(i8* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %165
  %178 = load i8*, i8** %7, align 8
  %179 = call i32 @strncmp(i8* %178, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177, %165
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  store i32 128, i32* %184, align 4
  br label %224

185:                                              ; preds = %177
  %186 = load i8*, i8** %7, align 8
  %187 = call i32 @strncmp(i8* %186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @strncmp(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 5)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189, %185
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store i32 129, i32* %196, align 4
  br label %223

197:                                              ; preds = %189
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 @strncmp(i8* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 11)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @strncmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  store i32 130, i32* %208, align 4
  br label %222

209:                                              ; preds = %201
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @strncmp(i8* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 9)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @strncmp(i8* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32 4)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213, %209
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  store i32 131, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %213
  br label %222

222:                                              ; preds = %221, %205
  br label %223

223:                                              ; preds = %222, %193
  br label %224

224:                                              ; preds = %223, %181
  br label %225

225:                                              ; preds = %224, %164
  %226 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %225, %152, %67, %51, %37
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @var_GetInteger(i32*, i8*) #1

declare dso_local i32 @var_GetBool(i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_9__* @malloc(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i32 @vlc_open(i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i64 @FrontendInfo(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
