; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SpoolGetCmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_cmds.c_SpoolGetCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_12__* }

@kRecursiveNo = common dso_local global i32 0, align 4
@gBm = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@kDeleteNo = common dso_local global i32 0, align 4
@gUnusedArg = common dso_local global i32 0, align 4
@gSavePasswords = common dso_local global i64 0, align 8
@gConn = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"anonymous\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ftp\00", align 1
@.str.2 = private unnamed_addr constant [236 x i8] c"Sorry, spooling isn't allowed when you're not logged in anonymously, because\0Athe spool files would need to save your password.\0A\0AYou can override this by doing a \22set save-passwords yes\22 if you're willing\0Ato live with the consequences.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"@:azfrRD\00", align 1
@gOptArg = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [224 x i8] c"Bad date.  It must be expressed as one of the following:\0A\09YYYYMMDDHHMMSS\09\0A\09\22now + N hours|min|sec|days\22\0A\09HH:MM\0A\0ANote:  Do not forget to quote the entire argument for the offset option.\0AExample:  bgget -@ \22now + 15 min\22 ...\0A\00", align 1
@kTypeAscii = common dso_local global i32 0, align 4
@kRecursiveYes = common dso_local global i32 0, align 4
@kDeleteYes = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"could not get current local directory\00", align 1
@gOptInd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@gRemoteCWD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"  + Spooled: get %s as %s\0A\00", align 1
@kGlobNo = common dso_local global i32 0, align 4
@kGlobYes = common dso_local global i32 0, align 4
@kErrGlobFailed = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"  + Spooled: get %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpoolGetCmd(i32 %0, i8** %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i8], align 16
  %19 = alloca [256 x i8], align 16
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* @kRecursiveNo, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gBm, i32 0, i32 0), align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load i32, i32* @kDeleteNo, align 4
  store i32 %25, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load i32, i32* @gUnusedArg, align 4
  %27 = call i32 @ARGSUSED(i32 %26)
  %28 = load i64, i64* @gSavePasswords, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 2), align 4
  %32 = call i64 @strcmp(i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 2), align 4
  %36 = call i64 @strcmp(i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call i32 @printf(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.2, i64 0, i64 0))
  br label %246

40:                                               ; preds = %34, %30, %4
  %41 = call i64 (...) @SpoolCheck()
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %246

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = call i32 (...) @GetoptReset()
  br label %47

47:                                               ; preds = %77, %45
  %48 = load i32, i32* %5, align 4
  %49 = load i8**, i8*** %6, align 8
  %50 = call i32 @Getopt(i32 %48, i8** %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %50, i32* %9, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %74 [
    i32 64, label %54
    i32 97, label %66
    i32 122, label %68
    i32 114, label %69
    i32 82, label %69
    i32 68, label %71
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* @gOptArg, align 4
  %56 = call i32 @GetStartSpoolDate(i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59, %54
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.4, i64 0, i64 0))
  br label %246

65:                                               ; preds = %59
  br label %77

66:                                               ; preds = %52
  %67 = load i32, i32* @kTypeAscii, align 4
  store i32 %67, i32* %14, align 4
  br label %77

68:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %77

69:                                               ; preds = %52, %52
  %70 = load i32, i32* @kRecursiveYes, align 4
  store i32 %70, i32* %11, align 4
  br label %77

71:                                               ; preds = %52
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %15, align 4
  br label %77

74:                                               ; preds = %52
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @PrintCmdUsage(i32 %75)
  br label %246

77:                                               ; preds = %71, %69, %68, %66, %65
  br label %47

78:                                               ; preds = %47
  %79 = load i32, i32* %15, align 4
  %80 = icmp sge i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @kDeleteYes, align 4
  store i32 %82, i32* %16, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %85 = call i32* @FTPGetLocalCWD(i8* %84, i32 256)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %246

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %140

92:                                               ; preds = %89
  %93 = load i32, i32* @gOptInd, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 2
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @PrintCmdUsage(i32 %98)
  br label %246

100:                                              ; preds = %92
  %101 = load i8**, i8*** %6, align 8
  %102 = load i32, i32* @gOptInd, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @gRemoteCWD, align 4
  %107 = load i8**, i8*** %6, align 8
  %108 = load i32, i32* @gOptInd, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 5), align 4
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 4), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 3), align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 2), align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 1), align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 0), align 4
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @SpoolX(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %105, i32 %106, i8* %112, i8* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32* null, i32* null, i32* null, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %100
  %128 = load i8**, i8*** %6, align 8
  %129 = load i32, i32* @gOptInd, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = load i32, i32* @gOptInd, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i32, i8*, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %132, i8* %137)
  br label %139

139:                                              ; preds = %127, %100
  br label %246

140:                                              ; preds = %89
  %141 = load i32, i32* @gOptInd, align 4
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %242, %140
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %245

146:                                              ; preds = %142
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %148 = load i8**, i8*** %6, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @STRNCPY(i8* %147, i8* %152)
  %154 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %155 = call i32 @StrRemoveTrailingSlashes(i8* %154)
  %156 = call i32 @InitLineList(%struct.TYPE_13__* %21)
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %146
  %167 = load i32, i32* @kGlobNo, align 4
  br label %170

168:                                              ; preds = %146
  %169 = load i32, i32* @kGlobYes, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  %172 = call i32 @FTPRemoteGlob(%struct.TYPE_15__* @gConn, %struct.TYPE_13__* %21, i8* %157, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* @kErrGlobFailed, align 4
  %178 = load i8**, i8*** %6, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %182 = call i32 @FTPPerror(%struct.TYPE_15__* @gConn, i32 %176, i32 %177, i8* %180, i8* %181)
  br label %240

183:                                              ; preds = %170
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %22, align 8
  br label %186

186:                                              ; preds = %235, %183
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %188 = icmp ne %struct.TYPE_12__* %187, null
  br i1 %188, label %189, label %239

189:                                              ; preds = %186
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %234

194:                                              ; preds = %189
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @strrchr(i8* %197, i8 signext 47)
  store i8* %198, i8** %20, align 8
  %199 = load i8*, i8** %20, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** %20, align 8
  br label %208

205:                                              ; preds = %194
  %206 = load i8*, i8** %20, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %20, align 8
  br label %208

208:                                              ; preds = %205, %201
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* @gRemoteCWD, align 4
  %213 = load i8*, i8** %20, align 8
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 5), align 4
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 4), align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 3), align 4
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 2), align 4
  %219 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 1), align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gConn, i32 0, i32 0), align 4
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @SpoolX(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %211, i32 %212, i8* %213, i8* %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222, i32 %223, i32* null, i32* null, i32* null, i32 %224)
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* %12, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %208
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i8*, i8*, ...) @Trace(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %228, %208
  br label %234

234:                                              ; preds = %233, %189
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  store %struct.TYPE_12__* %238, %struct.TYPE_12__** %22, align 8
  br label %186

239:                                              ; preds = %186
  br label %240

240:                                              ; preds = %239, %175
  %241 = call i32 @DisposeLineListContents(%struct.TYPE_13__* %21)
  br label %242

242:                                              ; preds = %240
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %142

245:                                              ; preds = %142
  br label %246

246:                                              ; preds = %38, %43, %62, %74, %87, %97, %245, %139
  ret void
}

declare dso_local i32 @ARGSUSED(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @SpoolCheck(...) #1

declare dso_local i32 @GetoptReset(...) #1

declare dso_local i32 @Getopt(i32, i8**, i8*) #1

declare dso_local i32 @GetStartSpoolDate(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @PrintCmdUsage(i32) #1

declare dso_local i32* @FTPGetLocalCWD(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @SpoolX(i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @Trace(i32, i8*, i8*, ...) #1

declare dso_local i32 @STRNCPY(i8*, i8*) #1

declare dso_local i32 @StrRemoveTrailingSlashes(i8*) #1

declare dso_local i32 @InitLineList(%struct.TYPE_13__*) #1

declare dso_local i32 @FTPRemoteGlob(%struct.TYPE_15__*, %struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @FTPPerror(%struct.TYPE_15__*, i32, i32, i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
