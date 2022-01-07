; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPQueryFeatures.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_open.c_FTPQueryFeatures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_16__* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kServerTypeNetWareFTP = common dso_local global i64 0, align 8
@kCommandAvailable = common dso_local global i8* null, align 8
@kCommandNotAvailable = common dso_local global i8* null, align 8
@kNoErr = common dso_local global i32 0, align 4
@kErrMallocFailed = common dso_local global i32 0, align 4
@kResponseNoPrint = common dso_local global i32 0, align 4
@kResponseNoSave = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"FEAT\00", align 1
@kServerTypeWuFTPd = common dso_local global i64 0, align 8
@kServerTypeNcFTPd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"PASV\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MDTM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"REST\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"UTIME\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MLST\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"CLNT\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Compliance Level: \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"HELP SITE\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"RETRBUFSIZE\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RBUFSZ\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"RBUFSIZ\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"STORBUFSIZE\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"SBUFSIZ\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"SBUFSZ\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"BUFSIZE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPQueryFeatures(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = icmp eq %struct.TYPE_17__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @kErrBadParameter, align 4
  store i32 %12, i32* %2, align 4
  br label %350

13:                                               ; preds = %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 20
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @kLibraryMagic, align 4
  %18 = call i64 @strcmp(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @kErrBadMagic, align 4
  store i32 %21, i32* %2, align 4
  br label %350

22:                                               ; preds = %13
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @kServerTypeNetWareFTP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %22
  %29 = load i8*, i8** @kCommandAvailable, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 17
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @kCommandNotAvailable, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 16
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @kCommandNotAvailable, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 15
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @kCommandNotAvailable, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 14
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @kCommandAvailable, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 19
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @kCommandNotAvailable, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 13
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** @kCommandNotAvailable, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 10
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** @kCommandNotAvailable, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 12
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @kCommandNotAvailable, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 11
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @kNoErr, align 4
  store i32 %56, i32* %2, align 4
  br label %350

57:                                               ; preds = %22
  %58 = call %struct.TYPE_15__* (...) @InitResponse()
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %4, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = icmp eq %struct.TYPE_15__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* @kErrMallocFailed, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %5, align 4
  br label %348

68:                                               ; preds = %57
  %69 = load i32, i32* @kResponseNoPrint, align 4
  %70 = load i32, i32* @kResponseNoSave, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = call i32 @RCmd(%struct.TYPE_17__* %74, %struct.TYPE_15__* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @kNoErr, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %68
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = call i32 @DoneWithResponse(%struct.TYPE_17__* %81, %struct.TYPE_15__* %82)
  %84 = load i32, i32* %5, align 4
  store i32 %84, i32* %2, align 4
  br label %350

85:                                               ; preds = %68
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %140

88:                                               ; preds = %85
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @kServerTypeWuFTPd, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %88
  %95 = load i8*, i8** @kCommandAvailable, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 17
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** @kCommandAvailable, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 16
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** @kCommandAvailable, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 15
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @kCommandAvailable, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 14
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @kCommandAvailable, align 8
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 19
  store i8* %107, i8** %109, align 8
  br label %133

110:                                              ; preds = %88
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @kServerTypeNcFTPd, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load i8*, i8** @kCommandAvailable, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 17
  store i8* %117, i8** %119, align 8
  %120 = load i8*, i8** @kCommandAvailable, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 16
  store i8* %120, i8** %122, align 8
  %123 = load i8*, i8** @kCommandAvailable, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @kCommandAvailable, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 14
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @kCommandAvailable, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 19
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %116, %110
  br label %133

133:                                              ; preds = %132, %94
  %134 = load i8*, i8** @kCommandNotAvailable, align 8
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 12
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @kCommandNotAvailable, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  br label %247

140:                                              ; preds = %85
  %141 = load i8*, i8** @kCommandAvailable, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 18
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %146, align 8
  store %struct.TYPE_16__* %147, %struct.TYPE_16__** %6, align 8
  br label %148

148:                                              ; preds = %242, %140
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = icmp ne %struct.TYPE_16__* %149, null
  br i1 %150, label %151, label %246

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  store i8* %154, i8** %7, align 8
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %7, align 8
  %157 = load i8, i8* %155, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 32
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %242

161:                                              ; preds = %151
  %162 = load i8*, i8** %7, align 8
  %163 = call i64 @ISTRNCMP(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i8*, i8** @kCommandAvailable, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 17
  store i8* %166, i8** %168, align 8
  br label %241

169:                                              ; preds = %161
  %170 = load i8*, i8** %7, align 8
  %171 = call i64 @ISTRNCMP(i8* %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i8*, i8** @kCommandAvailable, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 16
  store i8* %174, i8** %176, align 8
  br label %240

177:                                              ; preds = %169
  %178 = load i8*, i8** %7, align 8
  %179 = call i64 @ISTRNCMP(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load i8*, i8** @kCommandAvailable, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 15
  store i8* %182, i8** %184, align 8
  br label %239

185:                                              ; preds = %177
  %186 = load i8*, i8** %7, align 8
  %187 = call i64 @ISTRNCMP(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i8*, i8** @kCommandAvailable, align 8
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 14
  store i8* %190, i8** %192, align 8
  br label %238

193:                                              ; preds = %185
  %194 = load i8*, i8** %7, align 8
  %195 = call i64 @ISTRNCMP(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i8*, i8** @kCommandAvailable, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 13
  store i8* %198, i8** %200, align 8
  br label %237

201:                                              ; preds = %193
  %202 = load i8*, i8** %7, align 8
  %203 = call i64 @ISTRNCMP(i8* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %201
  %206 = load i8*, i8** @kCommandAvailable, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 12
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @kCommandAvailable, align 8
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 11
  store i8* %209, i8** %211, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 5
  %215 = call i32 @FTPExamineMlstFeatures(%struct.TYPE_17__* %212, i8* %214)
  br label %236

216:                                              ; preds = %201
  %217 = load i8*, i8** %7, align 8
  %218 = call i64 @ISTRNCMP(i8* %217, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load i8*, i8** @kCommandAvailable, align 8
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 10
  store i8* %221, i8** %223, align 8
  br label %235

224:                                              ; preds = %216
  %225 = load i8*, i8** %7, align 8
  %226 = call i64 @ISTRNCMP(i8* %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 18)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i8*, i8** %7, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 18
  %231 = call i32 @atoi(i8* %230)
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 9
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %228, %224
  br label %235

235:                                              ; preds = %234, %220
  br label %236

236:                                              ; preds = %235, %205
  br label %237

237:                                              ; preds = %236, %197
  br label %238

238:                                              ; preds = %237, %189
  br label %239

239:                                              ; preds = %238, %181
  br label %240

240:                                              ; preds = %239, %173
  br label %241

241:                                              ; preds = %240, %165
  br label %242

242:                                              ; preds = %241, %160
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %244, align 8
  store %struct.TYPE_16__* %245, %struct.TYPE_16__** %6, align 8
  br label %148

246:                                              ; preds = %148
  br label %247

247:                                              ; preds = %246, %133
  br label %248

248:                                              ; preds = %247
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = call i32 @ReInitResponse(%struct.TYPE_17__* %249, %struct.TYPE_15__* %250)
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %254 = call i32 @RCmd(%struct.TYPE_17__* %252, %struct.TYPE_15__* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %5, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %344

257:                                              ; preds = %248
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  store %struct.TYPE_16__* %261, %struct.TYPE_16__** %6, align 8
  br label %262

262:                                              ; preds = %339, %257
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %264 = icmp ne %struct.TYPE_16__* %263, null
  br i1 %264, label %265, label %343

265:                                              ; preds = %262
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %7, align 8
  %269 = load i8*, i8** %7, align 8
  %270 = call i8* @strstr(i8* %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load i8*, i8** @kCommandAvailable, align 8
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 8
  store i8* %273, i8** %275, align 8
  br label %276

276:                                              ; preds = %272, %265
  %277 = load i8*, i8** %7, align 8
  %278 = call i8* @strstr(i8* %277, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i8*, i8** @kCommandAvailable, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 7
  store i8* %281, i8** %283, align 8
  br label %284

284:                                              ; preds = %280, %276
  %285 = load i8*, i8** %7, align 8
  %286 = call i8* @strstr(i8* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  store i8* %286, i8** %8, align 8
  %287 = icmp ne i8* %286, null
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  %289 = load i8*, i8** %8, align 8
  %290 = load i8*, i8** %7, align 8
  %291 = icmp eq i8* %289, %290
  br i1 %291, label %302, label %292

292:                                              ; preds = %288
  %293 = load i8*, i8** %8, align 8
  %294 = load i8*, i8** %7, align 8
  %295 = icmp ugt i8* %293, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %292
  %297 = load i8*, i8** %8, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 -1
  %299 = load i8, i8* %298, align 1
  %300 = call i32 @isupper(i8 signext %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %306, label %302

302:                                              ; preds = %296, %288
  %303 = load i8*, i8** @kCommandAvailable, align 8
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 6
  store i8* %303, i8** %305, align 8
  br label %306

306:                                              ; preds = %302, %296, %292, %284
  %307 = load i8*, i8** %7, align 8
  %308 = call i8* @strstr(i8* %307, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i8*, i8** @kCommandAvailable, align 8
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 5
  store i8* %311, i8** %313, align 8
  br label %314

314:                                              ; preds = %310, %306
  %315 = load i8*, i8** %7, align 8
  %316 = call i8* @strstr(i8* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %317 = icmp ne i8* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %314
  %319 = load i8*, i8** @kCommandAvailable, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 4
  store i8* %319, i8** %321, align 8
  br label %322

322:                                              ; preds = %318, %314
  %323 = load i8*, i8** %7, align 8
  %324 = call i8* @strstr(i8* %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load i8*, i8** @kCommandAvailable, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 3
  store i8* %327, i8** %329, align 8
  br label %330

330:                                              ; preds = %326, %322
  %331 = load i8*, i8** %7, align 8
  %332 = call i8* @strstr(i8* %331, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = load i8*, i8** @kCommandAvailable, align 8
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %334, %330
  br label %339

339:                                              ; preds = %338
  %340 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %341, align 8
  store %struct.TYPE_16__* %342, %struct.TYPE_16__** %6, align 8
  br label %262

343:                                              ; preds = %262
  br label %344

344:                                              ; preds = %343, %248
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %347 = call i32 @DoneWithResponse(%struct.TYPE_17__* %345, %struct.TYPE_15__* %346)
  br label %348

348:                                              ; preds = %344, %61
  %349 = load i32, i32* @kNoErr, align 4
  store i32 %349, i32* %2, align 4
  br label %350

350:                                              ; preds = %348, %80, %28, %20, %11
  %351 = load i32, i32* %2, align 4
  ret i32 %351
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_15__* @InitResponse(...) #1

declare dso_local i32 @RCmd(%struct.TYPE_17__*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i64 @ISTRNCMP(i8*, i8*, i32) #1

declare dso_local i32 @FTPExamineMlstFeatures(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ReInitResponse(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @isupper(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
