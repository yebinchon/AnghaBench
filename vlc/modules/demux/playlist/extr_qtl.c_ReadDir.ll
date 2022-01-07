; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_qtl.c_ReadDir.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_qtl.c_ReadDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@LOOP_FALSE = common dso_local global i64 0, align 8
@ROOT_NODE_MAX_DEPTH = common dso_local global i32 0, align 4
@XML_READER_STARTELEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"unable to locate root-node\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"embed\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"invalid root node <%s>, trying next (%d / %d)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"autoplay\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@FULLSCREEN_DOUBLE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@FULLSCREEN_HALF = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@FULLSCREEN_CURRENT = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@FULLSCREEN_FULL = common dso_local global i64 0, align 8
@FULLSCREEN_NORMAL = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"href\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"kioskmode\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@LOOP_TRUE = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"palindrome\00", align 1
@LOOP_PALINDROME = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"movieid\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"moviename\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"playeveryframe\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"qtnext\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"quitwhendone\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"src\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"mimetype\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Attribute %s with value %s isn't valid\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"autoplay: %s (unused by VLC)\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"controller: %s (unused by VLC)\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"fullscreen: %s (unused by VLC)\00", align 1
@ppsz_fullscreen = common dso_local global i32* null, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"href: %s\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"kioskmode: %s (unused by VLC)\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"loop: %s (unused by VLC)\00", align 1
@ppsz_loop = common dso_local global i32* null, align 8
@.str.31 = private unnamed_addr constant [28 x i8] c"movieid: %d (unused by VLC)\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"moviename: %s\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"playeverframe: %s (unused by VLC)\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"qtnext: %s\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"quitwhendone: %s (unused by VLC)\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"src: %s\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"mimetype: %s\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"volume: %d (unused by VLC)\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"Mandatory attribute 'src' not found\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"QuickTime Media Link\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Mime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @ReadDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadDir(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %26 = load i64, i64* @LOOP_FALSE, align 8
  store i64 %26, i64* %13, align 8
  store i32 -1, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 100, i32* %21, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @xml_ReaderCreate(%struct.TYPE_6__* %27, i32 %30)
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %357

35:                                               ; preds = %2
  store i32 0, i32* %22, align 4
  br label %36

36:                                               ; preds = %60, %35
  %37 = load i32, i32* %22, align 4
  %38 = load i32, i32* @ROOT_NODE_MAX_DEPTH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @xml_ReaderNextNode(i32* %41, i8** %23)
  %43 = load i64, i64* @XML_READER_STARTELEM, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40, %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @msg_Err(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %357

48:                                               ; preds = %40
  %49 = load i8*, i8** %23, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %63

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = load i32, i32* %22, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @ROOT_NODE_MAX_DEPTH, align 4
  %59 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %55, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %22, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %22, align 4
  br label %36

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %249, %63
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @xml_ReaderNextAttr(i32* %65, i8** %25)
  store i8* %66, i8** %24, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %250

68:                                               ; preds = %64
  %69 = load i8*, i8** %24, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load i8*, i8** %25, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %249

78:                                               ; preds = %68
  %79 = load i8*, i8** %24, align 8
  %80 = call i64 @strcmp(i8* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %24, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %248

88:                                               ; preds = %78
  %89 = load i8*, i8** %24, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %122, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %25, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* @FULLSCREEN_DOUBLE, align 8
  store i64 %97, i64* %10, align 8
  br label %121

98:                                               ; preds = %92
  %99 = load i8*, i8** %25, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* @FULLSCREEN_HALF, align 8
  store i64 %103, i64* %10, align 8
  br label %120

104:                                              ; preds = %98
  %105 = load i8*, i8** %25, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* @FULLSCREEN_CURRENT, align 8
  store i64 %109, i64* %10, align 8
  br label %119

110:                                              ; preds = %104
  %111 = load i8*, i8** %25, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = load i64, i64* @FULLSCREEN_FULL, align 8
  store i64 %115, i64* %10, align 8
  br label %118

116:                                              ; preds = %110
  %117 = load i64, i64* @FULLSCREEN_NORMAL, align 8
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %108
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %96
  br label %247

122:                                              ; preds = %88
  %123 = load i8*, i8** %24, align 8
  %124 = call i64 @strcmp(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i8*, i8** %25, align 8
  %130 = call i8* @strdup(i8* %129)
  store i8* %130, i8** %11, align 8
  br label %246

131:                                              ; preds = %122
  %132 = load i8*, i8** %24, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** %25, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  store i32 %140, i32* %12, align 4
  br label %245

141:                                              ; preds = %131
  %142 = load i8*, i8** %24, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %141
  %146 = load i8*, i8** %25, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %145
  %150 = load i64, i64* @LOOP_TRUE, align 8
  store i64 %150, i64* %13, align 8
  br label %160

151:                                              ; preds = %145
  %152 = load i8*, i8** %25, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = load i64, i64* @LOOP_PALINDROME, align 8
  store i64 %156, i64* %13, align 8
  br label %159

157:                                              ; preds = %151
  %158 = load i64, i64* @LOOP_FALSE, align 8
  store i64 %158, i64* %13, align 8
  br label %159

159:                                              ; preds = %157, %155
  br label %160

160:                                              ; preds = %159, %149
  br label %244

161:                                              ; preds = %141
  %162 = load i8*, i8** %24, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %25, align 8
  %167 = call i32 @atoi(i8* %166)
  store i32 %167, i32* %14, align 4
  br label %243

168:                                              ; preds = %161
  %169 = load i8*, i8** %24, align 8
  %170 = call i64 @strcmp(i8* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = load i8*, i8** %15, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i8*, i8** %25, align 8
  %176 = call i8* @strdup(i8* %175)
  store i8* %176, i8** %15, align 8
  br label %242

177:                                              ; preds = %168
  %178 = load i8*, i8** %24, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** %25, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %184 = icmp ne i64 %183, 0
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %16, align 4
  br label %241

187:                                              ; preds = %177
  %188 = load i8*, i8** %24, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = load i8*, i8** %17, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load i8*, i8** %25, align 8
  %195 = call i8* @strdup(i8* %194)
  store i8* %195, i8** %17, align 8
  br label %240

196:                                              ; preds = %187
  %197 = load i8*, i8** %24, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = load i8*, i8** %25, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  store i32 %205, i32* %18, align 4
  br label %239

206:                                              ; preds = %196
  %207 = load i8*, i8** %24, align 8
  %208 = call i64 @strcmp(i8* %207, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %206
  %211 = load i8*, i8** %19, align 8
  %212 = call i32 @free(i8* %211)
  %213 = load i8*, i8** %25, align 8
  %214 = call i8* @strdup(i8* %213)
  store i8* %214, i8** %19, align 8
  br label %238

215:                                              ; preds = %206
  %216 = load i8*, i8** %24, align 8
  %217 = call i64 @strcmp(i8* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %20, align 8
  %221 = call i32 @free(i8* %220)
  %222 = load i8*, i8** %25, align 8
  %223 = call i8* @strdup(i8* %222)
  store i8* %223, i8** %20, align 8
  br label %237

224:                                              ; preds = %215
  %225 = load i8*, i8** %24, align 8
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %224
  %229 = load i8*, i8** %25, align 8
  %230 = call i32 @atoi(i8* %229)
  store i32 %230, i32* %21, align 4
  br label %236

231:                                              ; preds = %224
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %233 = load i8*, i8** %24, align 8
  %234 = load i8*, i8** %25, align 8
  %235 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %232, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %231, %228
  br label %237

237:                                              ; preds = %236, %219
  br label %238

238:                                              ; preds = %237, %210
  br label %239

239:                                              ; preds = %238, %200
  br label %240

240:                                              ; preds = %239, %191
  br label %241

241:                                              ; preds = %240, %181
  br label %242

242:                                              ; preds = %241, %172
  br label %243

243:                                              ; preds = %242, %165
  br label %244

244:                                              ; preds = %243, %160
  br label %245

245:                                              ; preds = %244, %135
  br label %246

246:                                              ; preds = %245, %126
  br label %247

247:                                              ; preds = %246, %121
  br label %248

248:                                              ; preds = %247, %82
  br label %249

249:                                              ; preds = %248, %72
  br label %64

250:                                              ; preds = %64
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %256 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %251, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %255)
  %257 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %262 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %257, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8* %261)
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %264 = load i32*, i32** @ppsz_fullscreen, align 8
  %265 = load i64, i64* %10, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %263, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 %267)
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %270 = load i8*, i8** %11, align 8
  %271 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %269, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8* %270)
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %277 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %272, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i8* %276)
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %279 = load i32*, i32** @ppsz_loop, align 8
  %280 = load i64, i64* %13, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %278, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 %282)
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %285 = load i32, i32* %14, align 4
  %286 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0), i32 %285)
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %288 = load i8*, i8** %15, align 8
  %289 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8* %288)
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %295 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %290, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i8* %294)
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %297 = load i8*, i8** %17, align 8
  %298 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* %297)
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %300 = load i32, i32* %18, align 4
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  %304 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %299, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i8* %303)
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %306 = load i8*, i8** %19, align 8
  %307 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %305, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i8* %306)
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %309 = load i8*, i8** %20, align 8
  %310 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %308, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* %309)
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %312 = load i32, i32* %21, align 4
  %313 = call i32 (%struct.TYPE_6__*, i8*, ...) @msg_Dbg(%struct.TYPE_6__* %311, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i32 %312)
  %314 = load i8*, i8** %19, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %319, label %316

316:                                              ; preds = %250
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %318 = call i32 @msg_Err(%struct.TYPE_6__* %317, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i64 0, i64 0))
  br label %356

319:                                              ; preds = %250
  %320 = load i8*, i8** %19, align 8
  %321 = load i8*, i8** %15, align 8
  %322 = call i32* @input_item_New(i8* %320, i8* %321)
  store i32* %322, i32** %6, align 8
  %323 = load i8*, i8** %11, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %329

325:                                              ; preds = %319
  %326 = load i32*, i32** %6, align 8
  %327 = load i8*, i8** %11, align 8
  %328 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @input_item_AddInfo to i32 (i32*, i8*, i8*, i8*, i8*, ...)*)(i32* %326, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %327)
  br label %329

329:                                              ; preds = %325, %319
  %330 = load i8*, i8** %20, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load i32*, i32** %6, align 8
  %334 = call i8* @_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %335 = load i8*, i8** %20, align 8
  %336 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) bitcast (i32 (...)* @input_item_AddInfo to i32 (i32*, i8*, i8*, i8*, i8*, ...)*)(i32* %333, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0), i8* %334, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %335)
  br label %337

337:                                              ; preds = %332, %329
  %338 = load i32*, i32** %4, align 8
  %339 = load i32*, i32** %6, align 8
  %340 = call i32 @input_item_node_AppendItem(i32* %338, i32* %339)
  %341 = load i32*, i32** %6, align 8
  %342 = call i32 @input_item_Release(i32* %341)
  %343 = load i8*, i8** %17, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %355

345:                                              ; preds = %337
  %346 = load i8*, i8** %17, align 8
  %347 = call i32 @vlc_xml_decode(i8* %346)
  %348 = load i8*, i8** %17, align 8
  %349 = call i32* @input_item_New(i8* %348, i8* null)
  store i32* %349, i32** %6, align 8
  %350 = load i32*, i32** %4, align 8
  %351 = load i32*, i32** %6, align 8
  %352 = call i32 @input_item_node_AppendItem(i32* %350, i32* %351)
  %353 = load i32*, i32** %6, align 8
  %354 = call i32 @input_item_Release(i32* %353)
  br label %355

355:                                              ; preds = %345, %337
  br label %356

356:                                              ; preds = %355, %316
  store i32 0, i32* %7, align 4
  br label %357

357:                                              ; preds = %356, %45, %34
  %358 = load i32*, i32** %5, align 8
  %359 = icmp ne i32* %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  %361 = load i32*, i32** %5, align 8
  %362 = call i32 @xml_ReaderDelete(i32* %361)
  br label %363

363:                                              ; preds = %360, %357
  %364 = load i8*, i8** %11, align 8
  %365 = call i32 @free(i8* %364)
  %366 = load i8*, i8** %15, align 8
  %367 = call i32 @free(i8* %366)
  %368 = load i8*, i8** %17, align 8
  %369 = call i32 @free(i8* %368)
  %370 = load i8*, i8** %19, align 8
  %371 = call i32 @free(i8* %370)
  %372 = load i8*, i8** %20, align 8
  %373 = call i32 @free(i8* %372)
  %374 = load i32, i32* %7, align 4
  ret i32 %374
}

declare dso_local i32* @xml_ReaderCreate(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @xml_ReaderNextNode(i32*, i8**) #1

declare dso_local i32 @msg_Err(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local i8* @xml_ReaderNextAttr(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @input_item_New(i8*, i8*) #1

declare dso_local i32 @input_item_AddInfo(...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @input_item_node_AppendItem(i32*, i32*) #1

declare dso_local i32 @input_item_Release(i32*) #1

declare dso_local i32 @vlc_xml_decode(i8*) #1

declare dso_local i32 @xml_ReaderDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
