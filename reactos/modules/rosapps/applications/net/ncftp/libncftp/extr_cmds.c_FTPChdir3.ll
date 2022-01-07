; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPChdir3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPChdir3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i8*, i32 }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i8* null, align 8
@kErrBadMagic = common dso_local global i32 0, align 4
@kErrInvalidDirParam = common dso_local global i8* null, align 8
@kChdirOnly = common dso_local global i32 0, align 4
@kChdirAndGetCWD = common dso_local global i32 0, align 4
@kChdirAndMkdir = common dso_local global i32 0, align 4
@kRecursiveYes = common dso_local global i32 0, align 4
@kNoErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MKD %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPChdir3(%struct.TYPE_8__* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @kErrBadParameter, align 4
  store i32 %21, i32* %6, align 4
  br label %261

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** @kLibraryMagic, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @kErrBadMagic, align 4
  store i32 %30, i32* %6, align 4
  br label %261

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** @kErrInvalidDirParam, align 8
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i8*, i8** @kErrInvalidDirParam, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %6, align 4
  br label %261

42:                                               ; preds = %31
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @kChdirOnly, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @FTPChdir(%struct.TYPE_8__* %47, i8* %48)
  store i32 %49, i32* %6, align 4
  br label %261

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @kChdirAndGetCWD, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @FTPChdirAndGetCWD(%struct.TYPE_8__* %55, i8* %56, i8* %57, i64 %58)
  store i32 %59, i32* %6, align 4
  br label %261

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @kChdirAndMkdir, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @kRecursiveYes, align 4
  %68 = call i32 @FTPMkdir(%struct.TYPE_8__* %65, i8* %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* @kNoErr, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @FTPChdir(%struct.TYPE_8__* %73, i8* %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %261

78:                                               ; preds = %60
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @kChdirAndMkdir, align 4
  %81 = load i32, i32* @kChdirAndGetCWD, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* @kRecursiveYes, align 4
  %88 = call i32 @FTPMkdir(%struct.TYPE_8__* %85, i8* %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @kNoErr, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %84
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @FTPChdirAndGetCWD(%struct.TYPE_8__* %93, i8* %94, i8* %95, i64 %96)
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %92, %84
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %261

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %12, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %106, i64 %111
  store i8 0, i8* %112, align 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @Strncpy(i8* %115, i8* %116, i32 %119)
  %121 = load i8*, i8** %12, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %121, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %102
  %132 = load i32, i32* @kErrBadParameter, align 4
  store i32 %132, i32* %6, align 4
  br label %261

133:                                              ; preds = %102
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @kChdirAndMkdir, align 4
  %136 = and i32 %134, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @kChdirAndGetCWD, align 4
  %139 = and i32 %137, %138
  store i32 %139, i32* %17, align 4
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %133
  %146 = load i8*, i8** %8, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %160

149:                                              ; preds = %145, %133
  store i32 0, i32* %14, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @kChdirAndGetCWD, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @FTPGetCWD(%struct.TYPE_8__* %154, i8* %155, i64 %156)
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %153, %149
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %6, align 4
  br label %261

160:                                              ; preds = %145
  store i32 0, i32* %15, align 4
  br label %161

161:                                              ; preds = %257, %160
  %162 = load i8*, i8** %12, align 8
  store i8* %162, i8** %13, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = call i8* @StrFindLocalPathDelim(i8* %163)
  store i8* %164, i8** %12, align 8
  %165 = load i8*, i8** %12, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i8*, i8** %12, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %12, align 8
  store i8 0, i8* %168, align 1
  br label %171

170:                                              ; preds = %161
  store i32 1, i32* %15, align 4
  br label %171

171:                                              ; preds = %170, %167
  %172 = load i8*, i8** %13, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  store i32 0, i32* %14, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %175
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i64, i64* %10, align 8
  %185 = call i32 @FTPGetCWD(%struct.TYPE_8__* %182, i8* %183, i64 %184)
  store i32 %185, i32* %14, align 4
  br label %186

186:                                              ; preds = %181, %178, %175
  br label %220

187:                                              ; preds = %171
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %187
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = load i8*, i8** %13, align 8
  br label %202

201:                                              ; preds = %193
  br label %202

202:                                              ; preds = %201, %199
  %203 = phi i8* [ %200, %199 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %201 ]
  %204 = load i8*, i8** %9, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @FTPChdirAndGetCWD(%struct.TYPE_8__* %194, i8* %203, i8* %204, i64 %205)
  store i32 %206, i32* %14, align 4
  br label %219

207:                                              ; preds = %190, %187
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i8*, i8** %13, align 8
  br label %216

215:                                              ; preds = %207
  br label %216

216:                                              ; preds = %215, %213
  %217 = phi i8* [ %214, %213 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %215 ]
  %218 = call i32 @FTPChdir(%struct.TYPE_8__* %208, i8* %217)
  store i32 %218, i32* %14, align 4
  br label %219

219:                                              ; preds = %216, %202
  br label %220

220:                                              ; preds = %219, %186
  %221 = load i32, i32* %14, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %250

223:                                              ; preds = %220
  %224 = load i32, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %223
  %227 = load i8*, i8** %13, align 8
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %245

231:                                              ; preds = %226
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = call i32 @FTPCmd(%struct.TYPE_8__* %232, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %233)
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = call i32 @FTPChdir(%struct.TYPE_8__* %237, i8* %238)
  store i32 %239, i32* %14, align 4
  br label %244

240:                                              ; preds = %231
  %241 = load i32, i32* %14, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 8
  br label %244

244:                                              ; preds = %240, %236
  br label %249

245:                                              ; preds = %226, %223
  %246 = load i32, i32* %14, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %245, %244
  br label %250

250:                                              ; preds = %249, %220
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %14, align 4
  %256 = icmp eq i32 %255, 0
  br label %257

257:                                              ; preds = %254, %251
  %258 = phi i1 [ false, %251 ], [ %256, %254 ]
  br i1 %258, label %161, label %259

259:                                              ; preds = %257
  %260 = load i32, i32* %14, align 4
  store i32 %260, i32* %6, align 4
  br label %261

261:                                              ; preds = %259, %158, %131, %98, %76, %54, %46, %34, %29, %20
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @FTPChdirAndGetCWD(%struct.TYPE_8__*, i8*, i8*, i64) #1

declare dso_local i32 @FTPMkdir(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @Strncpy(i8*, i8*, i32) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i8* @StrFindLocalPathDelim(i8*) #1

declare dso_local i32 @FTPCmd(%struct.TYPE_8__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
