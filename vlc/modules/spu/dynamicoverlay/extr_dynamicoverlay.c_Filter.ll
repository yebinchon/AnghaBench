; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay.c_Filter.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/dynamicoverlay/extr_dynamicoverlay.c_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_34__*, i64, i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_34__*, i32, i32, i32, i32, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i8*, i32, i8*, i64, i32, i32, %struct.TYPE_31__, i32, i32, %struct.TYPE_31__, i32, i64, %struct.TYPE_38__**, i32 }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_38__ = type { i64 (%struct.TYPE_36__*, i32*, i32*)*, i32 (i32*, %struct.TYPE_31__*)*, i64, i32 (i8*, i8*, i32*)*, i32 }
%struct.TYPE_39__ = type { i64, i32, %struct.TYPE_38__*, i32 }
%struct.TYPE_35__ = type { i32, i32, i32, %struct.TYPE_32__, i32, %struct.TYPE_30__ }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_30__ = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to grab input file: %s (%s)\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Grabbed input file: %s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to grab output file: %s (%s)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Grabbed output file: %s\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"Error on input file: %s\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Search command: %s\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Got invalid command: %s\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"FAILURE: %d Invalid Command\0A\00", align 1
@VLC_EGENERIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Got valid command: %s\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c"SUCCESS:\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"FAILURE: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Error on output file: %s\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Displaying overlay: %4.4s, %d, %d, %d\00", align 1
@VLC_CODEC_TEXT = common dso_local global i64 0, align 8
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_33__* (%struct.TYPE_36__*, i32)* @Filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_33__* @Filter(%struct.TYPE_36__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_35__*, align 8
  %21 = alloca %struct.TYPE_34__**, align 8
  %22 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_37__*, %struct.TYPE_37__** %24, align 8
  store %struct.TYPE_37__* %25, %struct.TYPE_37__** %6, align 8
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 14
  %28 = call i32 @vlc_mutex_lock(i32* %27)
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %63

33:                                               ; preds = %2
  %34 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @O_RDONLY, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @vlc_open(i8* %36, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %56

48:                                               ; preds = %33
  %49 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i64, i64* @errno, align 8
  %54 = call i32 @vlc_strerror_c(i64 %53)
  %55 = call i32 (%struct.TYPE_36__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_36__* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %54)
  br label %62

56:                                               ; preds = %33
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @msg_Info(%struct.TYPE_36__* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %103

68:                                               ; preds = %63
  %69 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @O_WRONLY, align 4
  %73 = load i32, i32* @O_NONBLOCK, align 4
  %74 = or i32 %72, %73
  %75 = call i8* @vlc_open(i8* %71, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %96

83:                                               ; preds = %68
  %84 = load i64, i64* @errno, align 8
  %85 = load i64, i64* @ENXIO, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* @errno, align 8
  %93 = call i32 @vlc_strerror_c(i64 %92)
  %94 = call i32 (%struct.TYPE_36__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_36__* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %91, i32 %93)
  br label %95

95:                                               ; preds = %87, %83
  br label %102

96:                                               ; preds = %68
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %98 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @msg_Info(%struct.TYPE_36__* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %96, %95
  br label %103

103:                                              ; preds = %102, %63
  %104 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %104, i32 0, i32 14
  %106 = call i32 @vlc_mutex_unlock(i32* %105)
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %149

111:                                              ; preds = %103
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %116 = call i32 @read(i32 %114, i8* %115, i32 1024)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %137

119:                                              ; preds = %111
  %120 = load i64, i64* @errno, align 8
  %121 = load i64, i64* @EAGAIN, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %119
  %124 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %125 = load i64, i64* @errno, align 8
  %126 = call i32 @vlc_strerror_c(i64 %125)
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (%struct.TYPE_36__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_36__* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @vlc_close(i32 %132)
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 0
  store i32 -1, i32* %135, align 8
  br label %136

136:                                              ; preds = %123, %119
  br label %148

137:                                              ; preds = %111
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %147

141:                                              ; preds = %137
  %142 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %142, i32 0, i32 10
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @BufferAdd(%struct.TYPE_31__* %143, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %140
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %103
  br label %150

150:                                              ; preds = %267, %149
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i8* @memchr(i8* %154, i8 signext 10, i32 %158)
  store i8* %159, i8** %9, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %281

161:                                              ; preds = %150
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %162 = load i8*, i8** %9, align 8
  store i8 0, i8* %162, align 1
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 10
  %165 = call i8* @BufferGetToken(%struct.TYPE_31__* %164)
  store i8* %165, i8** %10, align 8
  %166 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = call i32 @msg_Info(%struct.TYPE_36__* %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %167)
  store i64 0, i64* %13, align 8
  br label %169

169:                                              ; preds = %201, %161
  %170 = load i64, i64* %13, align 8
  %171 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %204

175:                                              ; preds = %169
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 13
  %178 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %177, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %178, i64 %179
  %181 = load %struct.TYPE_38__*, %struct.TYPE_38__** %180, align 8
  store %struct.TYPE_38__* %181, %struct.TYPE_38__** %11, align 8
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @strlen(i32 %188)
  %190 = call i32 @strncmp(i32 %184, i8* %185, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %175
  %193 = load i8*, i8** %10, align 8
  %194 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @strlen(i32 %196)
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %193, i64 %198
  store i8 0, i8* %199, align 1
  store i32 1, i32* %12, align 4
  br label %204

200:                                              ; preds = %175
  br label %201

201:                                              ; preds = %200
  %202 = load i64, i64* %13, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %13, align 8
  br label %169

204:                                              ; preds = %192, %169
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %215, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 @msg_Err(%struct.TYPE_36__* %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %209)
  %211 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %211, i32 0, i32 7
  %213 = load i64, i64* @VLC_EGENERIC, align 8
  %214 = call i32 @BufferPrintf(%struct.TYPE_31__* %212, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %213)
  br label %267

215:                                              ; preds = %204
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = call i32 @msg_Info(%struct.TYPE_36__* %216, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  %219 = call %struct.TYPE_39__* @malloc(i32 32)
  store %struct.TYPE_39__* %219, %struct.TYPE_39__** %14, align 8
  %220 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %221 = icmp ne %struct.TYPE_39__* %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %215
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %3, align 8
  br label %499

223:                                              ; preds = %215
  %224 = load i8*, i8** %10, align 8
  %225 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @strlen(i32 %227)
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %224, i64 %229
  %231 = getelementptr inbounds i8, i8* %230, i64 1
  store i8* %231, i8** %10, align 8
  %232 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %233 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %233, i32 0, i32 2
  store %struct.TYPE_38__* %232, %struct.TYPE_38__** %234, align 8
  %235 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %237, i32 0, i32 3
  %239 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %238, align 8
  %240 = load i8*, i8** %10, align 8
  %241 = load i8*, i8** %9, align 8
  %242 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %242, i32 0, i32 3
  %244 = call i32 %239(i8* %240, i8* %241, i32* %243)
  %245 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %245, i32 0, i32 2
  %247 = load %struct.TYPE_38__*, %struct.TYPE_38__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %223
  %252 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %252, i32 0, i32 12
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 11
  %259 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %260 = call i32 @QueueEnqueue(i32* %258, %struct.TYPE_39__* %259)
  br label %266

261:                                              ; preds = %251, %223
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %262, i32 0, i32 9
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %265 = call i32 @QueueEnqueue(i32* %263, %struct.TYPE_39__* %264)
  br label %266

266:                                              ; preds = %261, %256
  br label %267

267:                                              ; preds = %266, %207
  %268 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %268, i32 0, i32 10
  %270 = load i8*, i8** %9, align 8
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 10
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = ptrtoint i8* %270 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = add nsw i64 %277, 1
  %279 = trunc i64 %278 to i32
  %280 = call i32 @BufferDel(%struct.TYPE_31__* %269, i32 %279)
  br label %150

281:                                              ; preds = %150
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %15, align 8
  br label %282

282:                                              ; preds = %287, %281
  %283 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 9
  %285 = call %struct.TYPE_39__* @QueueDequeue(i32* %284)
  store %struct.TYPE_39__* %285, %struct.TYPE_39__** %15, align 8
  %286 = icmp ne %struct.TYPE_39__* %285, null
  br i1 %286, label %287, label %305

287:                                              ; preds = %282
  %288 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %289 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_38__*, %struct.TYPE_38__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %290, i32 0, i32 0
  %292 = load i64 (%struct.TYPE_36__*, i32*, i32*)*, i64 (%struct.TYPE_36__*, i32*, i32*)** %291, align 8
  %293 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %294 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %295 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %296, i32 0, i32 1
  %298 = call i64 %292(%struct.TYPE_36__* %293, i32* %295, i32* %297)
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %299, i32 0, i32 0
  store i64 %298, i64* %300, align 8
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %301, i32 0, i32 8
  %303 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %304 = call i32 @QueueEnqueue(i32* %302, %struct.TYPE_39__* %303)
  br label %282

305:                                              ; preds = %282
  br label %306

306:                                              ; preds = %343, %305
  %307 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %307, i32 0, i32 8
  %309 = call %struct.TYPE_39__* @QueueDequeue(i32* %308)
  store %struct.TYPE_39__* %309, %struct.TYPE_39__** %15, align 8
  %310 = icmp ne %struct.TYPE_39__* %309, null
  br i1 %310, label %311, label %344

311:                                              ; preds = %306
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %313 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @VLC_SUCCESS, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %336

317:                                              ; preds = %311
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %17, align 8
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 7
  %320 = load i8*, i8** %16, align 8
  %321 = call i32 @BufferAdd(%struct.TYPE_31__* %319, i8* %320, i32 8)
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %323 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_38__*, %struct.TYPE_38__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %324, i32 0, i32 1
  %326 = load i32 (i32*, %struct.TYPE_31__*)*, i32 (i32*, %struct.TYPE_31__*)** %325, align 8
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %329, i32 0, i32 7
  %331 = call i32 %326(i32* %328, %struct.TYPE_31__* %330)
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i32 0, i32 7
  %334 = load i8*, i8** %17, align 8
  %335 = call i32 @BufferAdd(%struct.TYPE_31__* %333, i8* %334, i32 1)
  br label %343

336:                                              ; preds = %311
  %337 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %337, i32 0, i32 7
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %340 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = call i32 @BufferPrintf(%struct.TYPE_31__* %338, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i64 %341)
  br label %343

343:                                              ; preds = %336, %317
  br label %306

344:                                              ; preds = %306
  %345 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = icmp ne i32 %347, -1
  br i1 %348, label %349, label %388

349:                                              ; preds = %344
  %350 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %353, i32 0, i32 7
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @vlc_write(i32 %352, i8* %356, i32 %360)
  store i32 %361, i32* %18, align 4
  %362 = load i32, i32* %18, align 4
  %363 = icmp eq i32 %362, -1
  br i1 %363, label %364, label %382

364:                                              ; preds = %349
  %365 = load i64, i64* @errno, align 8
  %366 = load i64, i64* @EAGAIN, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %381

368:                                              ; preds = %364
  %369 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %370 = load i64, i64* @errno, align 8
  %371 = call i32 @vlc_strerror_c(i64 %370)
  %372 = sext i32 %371 to i64
  %373 = inttoptr i64 %372 to i8*
  %374 = call i32 (%struct.TYPE_36__*, i8*, i8*, ...) @msg_Warn(%struct.TYPE_36__* %369, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %373)
  %375 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = call i32 @vlc_close(i32 %377)
  %379 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %380 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %379, i32 0, i32 2
  store i32 -1, i32* %380, align 8
  br label %381

381:                                              ; preds = %368, %364
  br label %387

382:                                              ; preds = %349
  %383 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %384 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %383, i32 0, i32 7
  %385 = load i32, i32* %18, align 4
  %386 = call i32 @BufferDel(%struct.TYPE_31__* %384, i32 %385)
  br label %387

387:                                              ; preds = %382, %381
  br label %388

388:                                              ; preds = %387, %344
  %389 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 8
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %388
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %3, align 8
  br label %499

394:                                              ; preds = %388
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %20, align 8
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %396 = call %struct.TYPE_33__* @filter_NewSubpicture(%struct.TYPE_36__* %395)
  store %struct.TYPE_33__* %396, %struct.TYPE_33__** %19, align 8
  %397 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %398 = icmp ne %struct.TYPE_33__* %397, null
  br i1 %398, label %400, label %399

399:                                              ; preds = %394
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %3, align 8
  br label %499

400:                                              ; preds = %394
  %401 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %402 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %401, i32 0, i32 0
  store i32 1, i32* %402, align 8
  %403 = load i32, i32* %5, align 4
  %404 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %405 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %404, i32 0, i32 4
  store i32 %403, i32* %405, align 8
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 3
  store i64 0, i64* %407, align 8
  %408 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %409 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %408, i32 0, i32 1
  store i32 1, i32* %409, align 4
  %410 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i32 0, i32 2
  store %struct.TYPE_34__** %411, %struct.TYPE_34__*** %21, align 8
  br label %412

412:                                              ; preds = %472, %400
  %413 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %413, i32 0, i32 6
  %415 = call %struct.TYPE_35__* @ListWalk(i32* %414)
  store %struct.TYPE_35__* %415, %struct.TYPE_35__** %20, align 8
  %416 = icmp ne %struct.TYPE_35__* %415, null
  br i1 %416, label %417, label %495

417:                                              ; preds = %412
  %418 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %419 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %418, i32 0, i32 5
  %420 = call %struct.TYPE_34__* @subpicture_region_New(%struct.TYPE_30__* %419)
  store %struct.TYPE_34__* %420, %struct.TYPE_34__** %22, align 8
  %421 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %21, align 8
  store %struct.TYPE_34__* %420, %struct.TYPE_34__** %421, align 8
  %422 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %423 = icmp ne %struct.TYPE_34__* %422, null
  br i1 %423, label %425, label %424

424:                                              ; preds = %417
  br label %495

425:                                              ; preds = %417
  %426 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %427 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %428 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %428, i32 0, i32 0
  %430 = bitcast i64* %429 to i8*
  %431 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %432 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %435 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @msg_Dbg(%struct.TYPE_36__* %426, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i8* %430, i32 %433, i32 %436, i32 %439)
  %441 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %442 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %441, i32 0, i32 5
  %443 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @VLC_CODEC_TEXT, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %463

447:                                              ; preds = %425
  %448 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %449 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %448, i32 0, i32 3
  %450 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = call %struct.TYPE_40__* @text_segment_New(i32 %451)
  %453 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 6
  store %struct.TYPE_40__* %452, %struct.TYPE_40__** %454, align 8
  %455 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %456 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @text_style_Duplicate(i32 %457)
  %459 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %460 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %459, i32 0, i32 6
  %461 = load %struct.TYPE_40__*, %struct.TYPE_40__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %461, i32 0, i32 0
  store i32 %458, i32* %462, align 4
  br label %472

463:                                              ; preds = %425
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %465 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %468 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %467, i32 0, i32 3
  %469 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = call i32 @picture_Copy(i32 %466, i32 %470)
  br label %472

472:                                              ; preds = %463, %447
  %473 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %474 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %477 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %476, i32 0, i32 4
  store i32 %475, i32* %477, align 8
  %478 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %479 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %482 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %481, i32 0, i32 3
  store i32 %480, i32* %482, align 4
  %483 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %484 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %485 = or i32 %483, %484
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i32 0, i32 0
  store i32 %485, i32* %487, align 8
  %488 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %489 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 8
  %491 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %492 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %491, i32 0, i32 2
  store i32 %490, i32* %492, align 8
  %493 = load %struct.TYPE_34__*, %struct.TYPE_34__** %22, align 8
  %494 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %493, i32 0, i32 1
  store %struct.TYPE_34__** %494, %struct.TYPE_34__*** %21, align 8
  br label %412

495:                                              ; preds = %424, %412
  %496 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %497 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %496, i32 0, i32 5
  store i32 0, i32* %497, align 8
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  store %struct.TYPE_33__* %498, %struct.TYPE_33__** %3, align 8
  br label %499

499:                                              ; preds = %495, %399, %393, %222
  %500 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  ret %struct.TYPE_33__* %500
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i8* @vlc_open(i8*, i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_36__*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_strerror_c(i64) #1

declare dso_local i32 @msg_Info(%struct.TYPE_36__*, i8*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @vlc_close(i32) #1

declare dso_local i32 @BufferAdd(%struct.TYPE_31__*, i8*, i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @BufferGetToken(%struct.TYPE_31__*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_36__*, i8*, i8*) #1

declare dso_local i32 @BufferPrintf(%struct.TYPE_31__*, i8*, i64) #1

declare dso_local %struct.TYPE_39__* @malloc(i32) #1

declare dso_local i32 @QueueEnqueue(i32*, %struct.TYPE_39__*) #1

declare dso_local i32 @BufferDel(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_39__* @QueueDequeue(i32*) #1

declare dso_local i32 @vlc_write(i32, i8*, i32) #1

declare dso_local %struct.TYPE_33__* @filter_NewSubpicture(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_35__* @ListWalk(i32*) #1

declare dso_local %struct.TYPE_34__* @subpicture_region_New(%struct.TYPE_30__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_36__*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_40__* @text_segment_New(i32) #1

declare dso_local i32 @text_style_Duplicate(i32) #1

declare dso_local i32 @picture_Copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
