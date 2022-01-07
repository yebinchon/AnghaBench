; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExistsStat.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExistsStat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i8*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kCommandNotAvailable = common dso_local global i64 0, align 8
@kErrSTATwithFileNotAvailable = common dso_local global i32 0, align 4
@kCommandAvailabilityUnknown = common dso_local global i64 0, align 8
@kErrMallocFailed = common dso_local global i8* null, align 8
@kDontPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Malloc failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"STAT %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"NoSuchFile\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"o such file\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"ot found\00", align 1
@kNoErr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kCommandAvailable = common dso_local global i64 0, align 8
@kErrSTATFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileExistsStat(%struct.TYPE_26__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca [512 x i8], align 16
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = icmp eq %struct.TYPE_26__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @kErrBadParameter, align 4
  store i32 %13, i32* %3, align 4
  br label %408

14:                                               ; preds = %2
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @kLibraryMagic, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @kErrBadMagic, align 4
  store i32 %22, i32* %3, align 4
  br label %408

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @kErrBadParameter, align 4
  store i32 %27, i32* %3, align 4
  br label %408

28:                                               ; preds = %23
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @kCommandNotAvailable, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @kErrSTATwithFileNotAvailable, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %408

39:                                               ; preds = %28
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @kCommandAvailabilityUnknown, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %294

45:                                               ; preds = %39
  %46 = call %struct.TYPE_24__* (...) @InitResponse()
  store %struct.TYPE_24__* %46, %struct.TYPE_24__** %7, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %48 = icmp eq %struct.TYPE_24__* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load i8*, i8** @kErrMallocFailed, align 8
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i8*, i8** @kErrMallocFailed, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %57 = load i32, i32* @kDontPerror, align 4
  %58 = call i32 @Error(%struct.TYPE_26__* %56, i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %408

60:                                               ; preds = %45
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = call i32 @RCmd(%struct.TYPE_26__* %61, %struct.TYPE_24__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %132

66:                                               ; preds = %60
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sge i32 %70, 3
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %132

78:                                               ; preds = %72, %66
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = icmp ne %struct.TYPE_21__* %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %78
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %120

96:                                               ; preds = %86
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32* @strstr(i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i32* %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %96
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32* @strstr(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %107, %96
  %119 = load i32, i32* @kNoErr, align 4
  store i32 %119, i32* %6, align 4
  br label %131

120:                                              ; preds = %107, %86, %78
  %121 = load i64, i64* @kCommandNotAvailable, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @kErrSTATwithFileNotAvailable, align 4
  store i32 %124, i32* %6, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %129 = call i32 @DoneWithResponse(%struct.TYPE_26__* %127, %struct.TYPE_24__* %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %408

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %72, %60
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %135 = call i32 @DoneWithResponse(%struct.TYPE_26__* %133, %struct.TYPE_24__* %134)
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %137 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %138 = call i32 @FTPGetCWD(%struct.TYPE_26__* %136, i8* %137, i32 512)
  %139 = load i32, i32* @kNoErr, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %149, label %141

141:                                              ; preds = %132
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @FTPChdir(%struct.TYPE_26__* %142, i8* %145)
  %147 = load i32, i32* @kNoErr, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %141, %132
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  store i32 %152, i32* %3, align 4
  br label %408

153:                                              ; preds = %141
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %155 = call i32 @FTPListToMemory2(%struct.TYPE_26__* %154, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_25__* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 0, i32* null)
  store i32 %155, i32* %6, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = icmp eq %struct.TYPE_20__* %159, null
  br i1 %160, label %167, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %161, %157, %153
  %168 = load i64, i64* @kCommandNotAvailable, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* @kErrSTATwithFileNotAvailable, align 4
  store i32 %171, i32* %6, align 4
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 8
  %174 = call i32 @DisposeLineListContents(%struct.TYPE_25__* %8)
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %177 = call i32 @FTPChdir(%struct.TYPE_26__* %175, i8* %176)
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %3, align 4
  br label %408

179:                                              ; preds = %161
  %180 = call %struct.TYPE_24__* (...) @InitResponse()
  store %struct.TYPE_24__* %180, %struct.TYPE_24__** %7, align 8
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %182 = icmp eq %struct.TYPE_24__* %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %179
  %184 = load i8*, i8** @kErrMallocFailed, align 8
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %6, align 4
  %186 = load i8*, i8** @kErrMallocFailed, align 8
  %187 = ptrtoint i8* %186 to i32
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %191 = load i32, i32* @kDontPerror, align 4
  %192 = call i32 @Error(%struct.TYPE_26__* %190, i32 %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %193 = call i32 @DisposeLineListContents(%struct.TYPE_25__* %8)
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %196 = call i32 @FTPChdir(%struct.TYPE_26__* %194, i8* %195)
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %3, align 4
  br label %408

198:                                              ; preds = %179
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %200 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @RCmd(%struct.TYPE_26__* %199, %struct.TYPE_24__* %200, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %204)
  store i32 %205, i32* %6, align 4
  %206 = call i32 @DisposeLineListContents(%struct.TYPE_25__* %8)
  %207 = load i32, i32* %6, align 4
  %208 = icmp ne i32 %207, 2
  br i1 %208, label %215, label %209

209:                                              ; preds = %198
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp eq i32 %213, 2
  br i1 %214, label %215, label %229

215:                                              ; preds = %209, %198
  %216 = load i64, i64* @kCommandNotAvailable, align 8
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i32 0, i32 0
  store i64 %216, i64* %218, align 8
  %219 = load i32, i32* @kErrSTATwithFileNotAvailable, align 4
  store i32 %219, i32* %6, align 4
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %224 = call i32 @DoneWithResponse(%struct.TYPE_26__* %222, %struct.TYPE_24__* %223)
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %226 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %227 = call i32 @FTPChdir(%struct.TYPE_26__* %225, i8* %226)
  %228 = load i32, i32* %6, align 4
  store i32 %228, i32* %3, align 4
  br label %408

229:                                              ; preds = %209
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %234, align 8
  %236 = icmp ne %struct.TYPE_21__* %235, null
  br i1 %236, label %237, label %283

237:                                              ; preds = %229
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = icmp ne i32* %245, null
  br i1 %246, label %247, label %283

247:                                              ; preds = %237
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = call i32* @strstr(i32* %255, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %257 = icmp ne i32* %256, null
  br i1 %257, label %269, label %258

258:                                              ; preds = %247
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = call i32* @strstr(i32* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %283

269:                                              ; preds = %258, %247
  %270 = load i64, i64* @kCommandNotAvailable, align 8
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 0
  store i64 %270, i64* %272, align 8
  %273 = load i32, i32* @kErrSTATwithFileNotAvailable, align 4
  store i32 %273, i32* %6, align 4
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %277 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %278 = call i32 @DoneWithResponse(%struct.TYPE_26__* %276, %struct.TYPE_24__* %277)
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %280 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %281 = call i32 @FTPChdir(%struct.TYPE_26__* %279, i8* %280)
  %282 = load i32, i32* %6, align 4
  store i32 %282, i32* %3, align 4
  br label %408

283:                                              ; preds = %258, %237, %229
  br label %284

284:                                              ; preds = %283
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %287 = call i32 @DoneWithResponse(%struct.TYPE_26__* %285, %struct.TYPE_24__* %286)
  %288 = load i64, i64* @kCommandAvailable, align 8
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %292 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %293 = call i32 @FTPChdir(%struct.TYPE_26__* %291, i8* %292)
  br label %294

294:                                              ; preds = %284, %39
  %295 = call %struct.TYPE_24__* (...) @InitResponse()
  store %struct.TYPE_24__* %295, %struct.TYPE_24__** %7, align 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %297 = icmp eq %struct.TYPE_24__* %296, null
  br i1 %297, label %298, label %309

298:                                              ; preds = %294
  %299 = load i8*, i8** @kErrMallocFailed, align 8
  %300 = ptrtoint i8* %299 to i32
  store i32 %300, i32* %6, align 4
  %301 = load i8*, i8** @kErrMallocFailed, align 8
  %302 = ptrtoint i8* %301 to i32
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %306 = load i32, i32* @kDontPerror, align 4
  %307 = call i32 @Error(%struct.TYPE_26__* %305, i32 %306, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %308 = load i32, i32* %6, align 4
  store i32 %308, i32* %3, align 4
  br label %408

309:                                              ; preds = %294
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %312 = load i8*, i8** %5, align 8
  %313 = call i32 @RCmd(%struct.TYPE_26__* %310, %struct.TYPE_24__* %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %312)
  store i32 %313, i32* %6, align 4
  %314 = load i32, i32* %6, align 4
  %315 = icmp eq i32 %314, 2
  br i1 %315, label %316, label %396

316:                                              ; preds = %309
  %317 = load i32, i32* @kNoErr, align 4
  store i32 %317, i32* %6, align 4
  %318 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = icmp sge i32 %321, 3
  br i1 %322, label %329, label %323

323:                                              ; preds = %316
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %379

329:                                              ; preds = %323, %316
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_22__*, %struct.TYPE_22__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %334, align 8
  %336 = icmp ne %struct.TYPE_21__* %335, null
  br i1 %336, label %337, label %376

337:                                              ; preds = %329
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 0
  %343 = load %struct.TYPE_21__*, %struct.TYPE_21__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %343, i32 0, i32 0
  %345 = load i32*, i32** %344, align 8
  %346 = icmp ne i32* %345, null
  br i1 %346, label %347, label %376

347:                                              ; preds = %337
  %348 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_22__*, %struct.TYPE_22__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %351, i32 0, i32 0
  %353 = load %struct.TYPE_21__*, %struct.TYPE_21__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %353, i32 0, i32 0
  %355 = load i32*, i32** %354, align 8
  %356 = call i32* @strstr(i32* %355, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %357 = icmp ne i32* %356, null
  br i1 %357, label %369, label %358

358:                                              ; preds = %347
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 0
  %364 = load %struct.TYPE_21__*, %struct.TYPE_21__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = call i32* @strstr(i32* %366, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %376

369:                                              ; preds = %358, %347
  %370 = load i8*, i8** @kErrSTATFailed, align 8
  %371 = ptrtoint i8* %370 to i32
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 1
  store i32 %371, i32* %373, align 8
  %374 = load i8*, i8** @kErrSTATFailed, align 8
  %375 = ptrtoint i8* %374 to i32
  store i32 %375, i32* %6, align 4
  br label %378

376:                                              ; preds = %358, %337, %329
  %377 = load i32, i32* @kNoErr, align 4
  store i32 %377, i32* %6, align 4
  br label %378

378:                                              ; preds = %376, %369
  br label %395

379:                                              ; preds = %323
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp eq i32 %383, 2
  br i1 %384, label %385, label %392

385:                                              ; preds = %379
  %386 = load i8*, i8** @kErrSTATFailed, align 8
  %387 = ptrtoint i8* %386 to i32
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 1
  store i32 %387, i32* %389, align 8
  %390 = load i8*, i8** @kErrSTATFailed, align 8
  %391 = ptrtoint i8* %390 to i32
  store i32 %391, i32* %6, align 4
  br label %394

392:                                              ; preds = %379
  %393 = load i32, i32* @kNoErr, align 4
  store i32 %393, i32* %6, align 4
  br label %394

394:                                              ; preds = %392, %385
  br label %395

395:                                              ; preds = %394, %378
  br label %403

396:                                              ; preds = %309
  %397 = load i8*, i8** @kErrSTATFailed, align 8
  %398 = ptrtoint i8* %397 to i32
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %399, i32 0, i32 1
  store i32 %398, i32* %400, align 8
  %401 = load i8*, i8** @kErrSTATFailed, align 8
  %402 = ptrtoint i8* %401 to i32
  store i32 %402, i32* %6, align 4
  br label %403

403:                                              ; preds = %396, %395
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %406 = call i32 @DoneWithResponse(%struct.TYPE_26__* %404, %struct.TYPE_24__* %405)
  %407 = load i32, i32* %6, align 4
  store i32 %407, i32* %3, align 4
  br label %408

408:                                              ; preds = %403, %298, %269, %215, %183, %167, %149, %120, %49, %34, %26, %21, %12
  %409 = load i32, i32* %3, align 4
  ret i32 %409
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_24__* @InitResponse(...) #1

declare dso_local i32 @Error(%struct.TYPE_26__*, i32, i8*) #1

declare dso_local i32 @RCmd(%struct.TYPE_26__*, %struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32* @strstr(i32*, i8*) #1

declare dso_local i32 @DoneWithResponse(%struct.TYPE_26__*, %struct.TYPE_24__*) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @FTPListToMemory2(%struct.TYPE_26__*, i8*, %struct.TYPE_25__*, i8*, i32, i32*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
