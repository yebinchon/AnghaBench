; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExistsNlst.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_cmds.c_FTPFileExistsNlst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i8*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }

@kErrBadParameter = common dso_local global i32 0, align 4
@kLibraryMagic = common dso_local global i32 0, align 4
@kErrBadMagic = common dso_local global i32 0, align 4
@kCommandNotAvailable = common dso_local global i64 0, align 8
@kErrNLSTwithFileNotAvailable = common dso_local global i32 0, align 4
@kCommandAvailabilityUnknown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"NoSuchFile\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@kNoErr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"o such file\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ot found\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"o Such File\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ot Found\00", align 1
@kCommandAvailable = common dso_local global i64 0, align 8
@kErrNLSTFailed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTPFileExistsNlst(%struct.TYPE_13__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca [512 x i8], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = icmp eq %struct.TYPE_13__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @kErrBadParameter, align 4
  store i32 %13, i32* %3, align 4
  br label %251

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @kLibraryMagic, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @kErrBadMagic, align 4
  store i32 %22, i32* %3, align 4
  br label %251

23:                                               ; preds = %14
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @kErrBadParameter, align 4
  store i32 %27, i32* %3, align 4
  br label %251

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @kCommandNotAvailable, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @kErrNLSTwithFileNotAvailable, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %251

39:                                               ; preds = %28
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @kCommandAvailabilityUnknown, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %200

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i32 @FTPListToMemory2(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %48 = load i32, i32* @kNoErr, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %52, 1
  br i1 %53, label %54, label %91

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32* @strstr(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %91

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32* @strstr(i8* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* @strstr(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32* @strstr(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load i64, i64* @kCommandNotAvailable, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32, i32* @kErrNLSTwithFileNotAvailable, align 4
  store i32 %86, i32* %6, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %7)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %251

91:                                               ; preds = %75, %68, %61, %54, %50, %45
  %92 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %7)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %95 = call i32 @FTPGetCWD(%struct.TYPE_13__* %93, i8* %94, i32 512)
  %96 = load i32, i32* @kNoErr, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %91
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @FTPChdir(%struct.TYPE_13__* %99, i8* %102)
  %104 = load i32, i32* @kNoErr, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98, %91
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %3, align 4
  br label %251

110:                                              ; preds = %98
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = call i32 @FTPListToMemory2(%struct.TYPE_13__* %111, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  store i32 %112, i32* %6, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = icmp eq %struct.TYPE_11__* %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %136

124:                                              ; preds = %118, %114, %110
  %125 = load i64, i64* @kCommandNotAvailable, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @kErrNLSTwithFileNotAvailable, align 4
  store i32 %128, i32* %6, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %8)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %134 = call i32 @FTPChdir(%struct.TYPE_13__* %132, i8* %133)
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %251

136:                                              ; preds = %118
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @FTPListToMemory2(%struct.TYPE_13__* %137, i8* %141, %struct.TYPE_12__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %143 = load i32, i32* @kNoErr, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %186

145:                                              ; preds = %136
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sge i32 %147, 1
  br i1 %148, label %149, label %186

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = call i32* @strstr(i8* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %186

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32* @strstr(i8* %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %186

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32* @strstr(i8* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %186

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i32* @strstr(i8* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %7)
  %179 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %8)
  %180 = load i64, i64* @kCommandAvailable, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %185 = call i32 @FTPChdir(%struct.TYPE_13__* %183, i8* %184)
  br label %199

186:                                              ; preds = %170, %163, %156, %149, %145, %136
  %187 = load i64, i64* @kCommandNotAvailable, align 8
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* @kErrNLSTwithFileNotAvailable, align 4
  store i32 %190, i32* %6, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %7)
  %194 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %8)
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %197 = call i32 @FTPChdir(%struct.TYPE_13__* %195, i8* %196)
  %198 = load i32, i32* %6, align 4
  store i32 %198, i32* %3, align 4
  br label %251

199:                                              ; preds = %177
  br label %200

200:                                              ; preds = %199, %39
  %201 = call i32 @InitLineList(%struct.TYPE_12__* %7)
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = call i32 @FTPListToMemory2(%struct.TYPE_13__* %202, i8* %203, %struct.TYPE_12__* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %205 = load i32, i32* @kNoErr, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %241

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp sge i32 %209, 1
  br i1 %210, label %211, label %241

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32* @strstr(i8* %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %241

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32* @strstr(i8* %222, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %241

225:                                              ; preds = %218
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32* @strstr(i8* %229, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %241

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = call i32* @strstr(i8* %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %238 = icmp eq i32* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* @kNoErr, align 4
  store i32 %240, i32* %6, align 4
  br label %248

241:                                              ; preds = %232, %225, %218, %211, %207, %200
  %242 = load i8*, i8** @kErrNLSTFailed, align 8
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 8
  %246 = load i8*, i8** @kErrNLSTFailed, align 8
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %6, align 4
  br label %248

248:                                              ; preds = %241, %239
  %249 = call i32 @DisposeLineListContents(%struct.TYPE_12__* %7)
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %248, %186, %124, %106, %82, %34, %26, %21, %12
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @FTPListToMemory2(%struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @DisposeLineListContents(%struct.TYPE_12__*) #1

declare dso_local i32 @FTPGetCWD(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @FTPChdir(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @InitLineList(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
