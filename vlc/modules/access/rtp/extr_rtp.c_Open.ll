; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/rtp/extr_rtp.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/rtp/extr_rtp.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32, i32*, i32, i32, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32*, i8*, i8*, i32, i8*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"dccp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rtptcp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rtp\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"udplite\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"rtcp-port\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dccp-service\00", align 1
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"RTPV\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"rtp-max-src\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"rtp-timeout\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"rtp-max-dropout\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"rtp-max-misorder\00", align 1
@Control = common dso_local global i32 0, align 4
@rtp_dgram_thread = common dso_local global i32 0, align 4
@rtp_stream_thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@SOCK_DCCP = common dso_local global i32 0, align 4
@SRTP_AUTH_HMAC_SHA1 = common dso_local global i32 0, align 4
@SRTP_ENCR_AES_CM = common dso_local global i32 0, align 4
@SRTP_PRF_AES_CM = common dso_local global i32 0, align 4
@SRTP_RCC_MODE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %229

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcasecmp(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 131, i32* %5, align 4
  br label %56

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcasecmp(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  store i32 130, i32* %5, align 4
  br label %55

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcasecmp(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i32 129, i32* %5, align 4
  br label %54

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcasecmp(i32 %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 128, i32* %5, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %52, i32* %2, align 4
  br label %229

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %29
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @strdup(i32 %59)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %64, i32* %2, align 4
  br label %229

65:                                               ; preds = %56
  %66 = load i8*, i8** %6, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 64)
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  store i8 0, i8* %71, align 1
  %73 = load i8*, i8** %6, align 8
  store i8* %73, i8** %7, align 8
  br label %76

74:                                               ; preds = %65
  %75 = load i8*, i8** %6, align 8
  store i8* %75, i8** %8, align 8
  store i8* null, i8** %7, align 8
  br label %76

76:                                               ; preds = %74, %70
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @extract_port(i8** %7)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i8*, i8** %8, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 @extract_port(i8** %8)
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 5004, i32* %10, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32*, i32** %3, align 8
  %92 = call i8* @var_CreateGetInteger(i32* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %94 = load i32, i32* %5, align 4
  switch i32 %94, label %135 [
    i32 129, label %95
    i32 128, label %95
    i32 131, label %117
    i32 130, label %128
  ]

95:                                               ; preds = %90, %90
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @net_OpenDgram(i32* %96, i8* %97, i32 %98, i8* %99, i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %135

106:                                              ; preds = %95
  %107 = load i32, i32* %11, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32*, i32** %3, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @net_OpenDgram(i32* %110, i8* %111, i32 %112, i8* %113, i32 0, i32 %114)
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %109, %106
  br label %135

117:                                              ; preds = %90
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* @VLC_VAR_STRING, align 4
  %120 = call i32 @var_Create(i32* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @var_SetString(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %123 = load i32*, i32** %3, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @net_Connect(i32* %123, i8* %124, i32 %125, i32 6, i32 %126)
  store i32 %127, i32* %12, align 4
  br label %135

128:                                              ; preds = %90
  %129 = load i32*, i32** %3, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @SOCK_STREAM, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @net_Connect(i32* %129, i8* %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %90, %128, %117, %116, %105
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i32, i32* %12, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %141, i32* %2, align 4
  br label %229

142:                                              ; preds = %135
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @net_SetCSCov(i32 %143, i32 -1, i32 12)
  %145 = call %struct.TYPE_8__* @malloc(i32 80)
  store %struct.TYPE_8__* %145, %struct.TYPE_8__** %14, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %147 = icmp eq %struct.TYPE_8__* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @net_Close(i32 %149)
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @net_Close(i32 %154)
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %157, i32* %2, align 4
  br label %229

158:                                              ; preds = %142
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 11
  store i32* null, i32** %160, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** %3, align 8
  %168 = call i8* @var_CreateGetInteger(i32* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 10
  store i8* %168, i8** %170, align 8
  %171 = load i32*, i32** %3, align 8
  %172 = call i8* @var_CreateGetInteger(i32* %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %173 = call i32 @vlc_tick_from_sec(i8* %172)
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 9
  store i32 %173, i32* %175, align 8
  %176 = load i32*, i32** %3, align 8
  %177 = call i8* @var_CreateGetInteger(i32* %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 8
  store i8* %177, i8** %179, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = call i8* @var_CreateGetInteger(i32* %180, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 7
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store i32 0, i32* %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  store i32 1, i32* %187, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 2
  store i32* null, i32** %189, align 8
  %190 = load i32, i32* @Control, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  store %struct.TYPE_8__* %193, %struct.TYPE_8__** %195, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %197 = call i32* @rtp_session_create(%struct.TYPE_7__* %196)
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 6
  store i32* %197, i32** %199, align 8
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 6
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %158
  br label %225

205:                                              ; preds = %158
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 130
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @rtp_dgram_thread, align 4
  br label %214

212:                                              ; preds = %205
  %213 = load i32, i32* @rtp_stream_thread, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = phi i32 [ %211, %210 ], [ %213, %212 ]
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %218 = call i64 @vlc_clone(i32* %207, i32 %215, %struct.TYPE_7__* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %225

221:                                              ; preds = %214
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store i32 1, i32* %223, align 8
  %224 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %224, i32* %2, align 4
  br label %229

225:                                              ; preds = %220, %204
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @Close(i32* %226)
  %228 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %228, i32* %2, align 4
  br label %229

229:                                              ; preds = %225, %221, %156, %140, %63, %51, %21
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @extract_port(i8**) #1

declare dso_local i8* @var_CreateGetInteger(i32*, i8*) #1

declare dso_local i32 @net_OpenDgram(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @net_Connect(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @net_SetCSCov(i32, i32, i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @vlc_tick_from_sec(i8*) #1

declare dso_local i32* @rtp_session_create(%struct.TYPE_7__*) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
