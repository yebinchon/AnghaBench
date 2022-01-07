; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnMlsT.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_glob.c_UnMlsT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8, i8*, i32, i8*, i8*, i32, i32, i32 }

@kSizeUnknown = common dso_local global i64 0, align 8
@kModTimeUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"OS.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cdir\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pdir\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"UNIX.mode\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"perm\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"modify\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"UNIX.owner\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"UNIX.group\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"UNIX.uid\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"UNIX.gid\00", align 1
@SCANF_LONG_LONG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnMlsT(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_4__* %13, i32 0, i32 4)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = load i64, i64* @kSizeUnknown, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i8 45, i8* %21, align 8
  %22 = load i32, i32* @kModTimeUnknown, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strlen(i8* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 1023
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %301

30:                                               ; preds = %2
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  %35 = call i32 @memcpy(i8* %31, i8* %32, i64 %34)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %36, i8** %6, align 8
  br label %37

37:                                               ; preds = %49, %30
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i32 @isspace(i8 signext %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %6, align 8
  br label %37

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %287, %52
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %288

58:                                               ; preds = %53
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** %8, align 8
  br label %60

60:                                               ; preds = %80, %58
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %60
  store i32 -1, i32* %3, align 4
  br label %301

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 61
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 0, i8* %77, align 1
  br label %83

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %6, align 8
  br label %60

83:                                               ; preds = %76
  %84 = load i8*, i8** %6, align 8
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %121, %83
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %3, align 4
  br label %301

91:                                               ; preds = %85
  %92 = load i8*, i8** %6, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  store i32 32, i32* %9, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %6, align 8
  store i8 0, i8* %97, align 1
  br label %124

99:                                               ; preds = %91
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 59
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 32
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  store i32 32, i32* %9, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %6, align 8
  store i8 0, i8* %111, align 1
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  store i8 0, i8* %113, align 1
  br label %118

115:                                              ; preds = %104
  store i32 59, i32* %9, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  store i8 0, i8* %116, align 1
  br label %118

118:                                              ; preds = %115, %110
  br label %124

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  br label %85

124:                                              ; preds = %118, %96
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @ISTRNEQ(i8* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 3
  store i8* %130, i8** %8, align 8
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i8*, i8** %8, align 8
  %133 = call i64 @ISTREQ(i8* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %162

135:                                              ; preds = %131
  %136 = load i8*, i8** %7, align 8
  %137 = call i64 @ISTREQ(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i8 45, i8* %141, align 8
  br label %161

142:                                              ; preds = %135
  %143 = load i8*, i8** %7, align 8
  %144 = call i64 @ISTREQ(i8* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  store i8 100, i8* %148, align 8
  br label %160

149:                                              ; preds = %142
  %150 = load i8*, i8** %7, align 8
  %151 = call i64 @ISTREQ(i8* %150, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  store i32 -2, i32* %3, align 4
  br label %301

154:                                              ; preds = %149
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @ISTREQ(i8* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 -2, i32* %3, align 4
  br label %301

159:                                              ; preds = %154
  store i32 -1, i32* %3, align 4
  br label %301

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %139
  br label %283

162:                                              ; preds = %131
  %163 = load i8*, i8** %8, align 8
  %164 = call i64 @ISTREQ(i8* %163, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %195

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 48
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load i8*, i8** %7, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = bitcast i32* %175 to i64*
  %177 = call i32 @sscanf(i8* %173, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64* %176)
  br label %184

178:                                              ; preds = %166
  %179 = load i8*, i8** %7, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = bitcast i32* %181 to i64*
  %183 = call i32 @sscanf(i8* %179, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64* %182)
  br label %184

184:                                              ; preds = %178, %172
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ne i32 %187, -1
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 511
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %189, %184
  br label %282

195:                                              ; preds = %162
  %196 = load i8*, i8** %8, align 8
  %197 = call i64 @ISTREQ(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load i8*, i8** %7, align 8
  %204 = call i32 @STRNCPY(i32 %202, i8* %203)
  br label %281

205:                                              ; preds = %195
  %206 = load i8*, i8** %8, align 8
  %207 = call i64 @ISTREQ(i8* %206, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %205
  store i64 0, i64* %12, align 8
  %210 = load i8*, i8** %7, align 8
  %211 = call i32 @sscanf(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i64* %12)
  %212 = load i64, i64* %12, align 8
  %213 = inttoptr i64 %212 to i8*
  %214 = ptrtoint i8* %213 to i64
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %280

217:                                              ; preds = %205
  %218 = load i8*, i8** %8, align 8
  %219 = call i64 @ISTREQ(i8* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i8*, i8** %7, align 8
  %223 = call i32 @UnMDTMDate(i8* %222)
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 9
  store i32 %223, i32* %225, align 8
  br label %279

226:                                              ; preds = %217
  %227 = load i8*, i8** %8, align 8
  %228 = call i64 @ISTREQ(i8* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 8
  %233 = load i32, i32* %232, align 4
  %234 = load i8*, i8** %7, align 8
  %235 = call i32 @STRNCPY(i32 %233, i8* %234)
  br label %278

236:                                              ; preds = %226
  %237 = load i8*, i8** %8, align 8
  %238 = call i64 @ISTREQ(i8* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %236
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 7
  %243 = load i32, i32* %242, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = call i32 @STRNCPY(i32 %243, i8* %244)
  br label %277

246:                                              ; preds = %236
  %247 = load i8*, i8** %8, align 8
  %248 = call i64 @ISTREQ(i8* %247, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246
  %251 = load i8*, i8** %7, align 8
  %252 = call i8* @atoi(i8* %251)
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 6
  store i8* %252, i8** %254, align 8
  br label %276

255:                                              ; preds = %246
  %256 = load i8*, i8** %8, align 8
  %257 = call i64 @ISTREQ(i8* %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %255
  %260 = load i8*, i8** %7, align 8
  %261 = call i8* @atoi(i8* %260)
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 5
  store i8* %261, i8** %263, align 8
  br label %275

264:                                              ; preds = %255
  %265 = load i8*, i8** %8, align 8
  %266 = call i64 @ISTREQ(i8* %265, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %264
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load i8*, i8** %7, align 8
  %273 = call i32 @STRNCPY(i32 %271, i8* %272)
  br label %274

274:                                              ; preds = %268, %264
  br label %275

275:                                              ; preds = %274, %259
  br label %276

276:                                              ; preds = %275, %250
  br label %277

277:                                              ; preds = %276, %240
  br label %278

278:                                              ; preds = %277, %230
  br label %279

279:                                              ; preds = %278, %221
  br label %280

280:                                              ; preds = %279, %209
  br label %281

281:                                              ; preds = %280, %199
  br label %282

282:                                              ; preds = %281, %194
  br label %283

283:                                              ; preds = %282, %161
  %284 = load i32, i32* %9, align 4
  %285 = icmp eq i32 %284, 32
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %288

287:                                              ; preds = %283
  br label %53

288:                                              ; preds = %286, %53
  %289 = load i8*, i8** %6, align 8
  %290 = call i64 @strlen(i8* %289)
  store i64 %290, i64* %10, align 8
  %291 = load i64, i64* %10, align 8
  %292 = icmp ugt i64 %291, 7
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i32 -1, i32* %3, align 4
  br label %301

294:                                              ; preds = %288
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  %298 = load i8*, i8** %6, align 8
  %299 = load i64, i64* %10, align 8
  %300 = call i32 @memcpy(i8* %297, i8* %298, i64 %299)
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %294, %293, %159, %158, %153, %90, %70, %29
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i64 @ISTRNEQ(i8*, i8*, i32) #1

declare dso_local i64 @ISTREQ(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @STRNCPY(i32, i8*) #1

declare dso_local i32 @UnMDTMDate(i8*) #1

declare dso_local i8* @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
