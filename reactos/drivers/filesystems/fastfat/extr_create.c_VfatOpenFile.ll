; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_VfatOpenFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_create.c_VfatOpenFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_30__*, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"VfatOpenFile(%p, '%wZ', %p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"'%wZ'\0A\00", align 1
@IOCTL_DISK_CHECK_VERIFY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Status %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Checking for existing FCB in memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Could not make a new FCB, status: %x\0A\00", align 1
@FILE_DIRECTORY_FILE = common dso_local global i64 0, align 8
@FILE_OVERWRITE = common dso_local global i64 0, align 8
@FILE_OVERWRITE_IF = common dso_local global i64 0, align 8
@FILE_SUPERSEDE = common dso_local global i64 0, align 8
@STATUS_OBJECT_NAME_COLLISION = common dso_local global i32 0, align 4
@FCB_DELETE_PENDING = common dso_local global i64 0, align 8
@STATUS_DELETE_PENDING = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@FILE_DELETE_ON_CLOSE = common dso_local global i64 0, align 8
@STATUS_CANNOT_DELETE = common dso_local global i32 0, align 4
@FCB_DELAYED_CLOSE = common dso_local global i64 0, align 8
@VfatGlobalData = common dso_local global %struct.TYPE_27__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Reusing delayed close FCB for %wZ\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Attaching FCB to fileObject\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, i32, %struct.TYPE_32__*, i64, i64, %struct.TYPE_31__**)* @VfatOpenFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatOpenFile(%struct.TYPE_33__* %0, i32 %1, %struct.TYPE_32__* %2, i64 %3, i64 %4, %struct.TYPE_31__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_31__**, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_31__** %5, %struct.TYPE_31__*** %13, align 8
  %18 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %21 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %22 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_33__* %18, i32 %19, %struct.TYPE_32__* %20, %struct.TYPE_31__** %21)
  %23 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = icmp ne %struct.TYPE_26__* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %6
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 1
  %32 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %38 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  store %struct.TYPE_31__* %37, %struct.TYPE_31__** %38, align 8
  br label %41

39:                                               ; preds = %6
  %40 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %40, align 8
  br label %41

41:                                               ; preds = %39, %27
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IOCTL_DISK_CHECK_VERIFY, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @VfatBlockDeviceIoControl(i32 %50, i32 %51, i32* null, i32 0, i32* null, i32 0, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @NT_SUCCESS(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  %59 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %60, align 8
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %7, align 4
  br label %278

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %64, align 8
  %66 = icmp ne %struct.TYPE_31__* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %69 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %69, align 8
  %71 = call i32 @vfatGrabFCB(%struct.TYPE_33__* %68, %struct.TYPE_31__* %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %75 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %13, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @vfatGetFCBForFile(%struct.TYPE_33__* %74, %struct.TYPE_31__** %75, %struct.TYPE_31__** %14, i32 %76)
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @NT_SUCCESS(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %15, align 4
  %83 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %7, align 4
  br label %278

85:                                               ; preds = %72
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @FILE_DIRECTORY_FILE, align 8
  %88 = call i64 @BooleanFlagOn(i64 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %111, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %92 = call i64 @vfatFCBIsDirectory(%struct.TYPE_31__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %90
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @FILE_OVERWRITE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @FILE_SUPERSEDE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102, %98, %94
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %109 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %107, %struct.TYPE_31__* %108)
  %110 = load i32, i32* @STATUS_OBJECT_NAME_COLLISION, align 4
  store i32 %110, i32* %7, align 4
  br label %278

111:                                              ; preds = %102, %90, %85
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FCB_DELETE_PENDING, align 8
  %116 = call i64 @BooleanFlagOn(i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %120 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %121 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %119, %struct.TYPE_31__* %120)
  %122 = load i32, i32* @STATUS_DELETE_PENDING, align 4
  store i32 %122, i32* %7, align 4
  br label %278

123:                                              ; preds = %111
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %125 = call i64 @vfatFCBIsReadOnly(%struct.TYPE_31__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* @FILE_OVERWRITE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* @FILE_OVERWRITE_IF, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131, %127
  %136 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %138 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %136, %struct.TYPE_31__* %137)
  %139 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %139, i32* %7, align 4
  br label %278

140:                                              ; preds = %131, %123
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %142 = call i64 @vfatFCBIsReadOnly(%struct.TYPE_31__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @FILE_DELETE_ON_CLOSE, align 8
  %147 = and i64 %145, %146
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %152 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %150, %struct.TYPE_31__* %151)
  %153 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %153, i32* %7, align 4
  br label %278

154:                                              ; preds = %144, %140
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %156 = call i64 @vfatFCBIsRoot(%struct.TYPE_31__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %196, label %158

158:                                              ; preds = %154
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = icmp eq i64 %163, 4
  br i1 %164, label %165, label %173

165:                                              ; preds = %158
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 46
  br i1 %172, label %196, label %173

173:                                              ; preds = %165, %158
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = icmp eq i64 %178, 8
  br i1 %179, label %180, label %206

180:                                              ; preds = %173
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 46
  br i1 %187, label %188, label %206

188:                                              ; preds = %180
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 46
  br i1 %195, label %196, label %206

196:                                              ; preds = %188, %165, %154
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* @FILE_DELETE_ON_CLOSE, align 8
  %199 = call i64 @BooleanFlagOn(i64 %197, i64 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %204 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %202, %struct.TYPE_31__* %203)
  %205 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %205, i32* %7, align 4
  br label %278

206:                                              ; preds = %196, %188, %180, %173
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @FCB_DELAYED_CLOSE, align 8
  %211 = call i64 @BooleanFlagOn(i64 %209, i64 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %263

213:                                              ; preds = %206
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %215, align 8
  store %struct.TYPE_30__* %216, %struct.TYPE_30__** %17, align 8
  %217 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %218 = icmp ne %struct.TYPE_30__* %217, null
  br i1 %218, label %219, label %259

219:                                              ; preds = %213
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %16, align 4
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** @VfatGlobalData, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = call i32 @ExAcquireFastMutex(i32* %222)
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %224, i32 0, i32 0
  %226 = call i32 @IsListEmpty(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %219
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 0
  %231 = call i32 @RemoveEntryList(i32* %230)
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** @VfatGlobalData, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* %16, align 4
  br label %237

237:                                              ; preds = %228, %219
  %238 = load %struct.TYPE_27__*, %struct.TYPE_27__** @VfatGlobalData, align 8
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 1
  %240 = call i32 @ExReleaseFastMutex(i32* %239)
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @FCB_DELAYED_CLOSE, align 8
  %245 = call i32 @ClearFlag(i64 %243, i64 %244)
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %248 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %246, %struct.TYPE_31__* %247)
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %250, align 8
  %251 = load i32, i32* %16, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %237
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** @VfatGlobalData, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %17, align 8
  %257 = call i32 @ExFreeToPagedLookasideList(i32* %255, %struct.TYPE_30__* %256)
  br label %258

258:                                              ; preds = %253, %237
  br label %259

259:                                              ; preds = %258, %213
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 1
  %262 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32* %261)
  br label %263

263:                                              ; preds = %259, %206
  %264 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %268 = call i32 @vfatAttachFCBToFileObject(%struct.TYPE_33__* %265, %struct.TYPE_31__* %266, %struct.TYPE_32__* %267)
  store i32 %268, i32* %15, align 4
  %269 = load i32, i32* %15, align 4
  %270 = call i32 @NT_SUCCESS(i32 %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %263
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %275 = call i32 @vfatReleaseFCB(%struct.TYPE_33__* %273, %struct.TYPE_31__* %274)
  br label %276

276:                                              ; preds = %272, %263
  %277 = load i32, i32* %15, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %276, %201, %149, %135, %118, %106, %81, %57
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @VfatBlockDeviceIoControl(i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @vfatGrabFCB(%struct.TYPE_33__*, %struct.TYPE_31__*) #1

declare dso_local i32 @vfatGetFCBForFile(%struct.TYPE_33__*, %struct.TYPE_31__**, %struct.TYPE_31__**, i32) #1

declare dso_local i64 @BooleanFlagOn(i64, i64) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_31__*) #1

declare dso_local i32 @vfatReleaseFCB(%struct.TYPE_33__*, %struct.TYPE_31__*) #1

declare dso_local i64 @vfatFCBIsReadOnly(%struct.TYPE_31__*) #1

declare dso_local i64 @vfatFCBIsRoot(%struct.TYPE_31__*) #1

declare dso_local i32 @ExAcquireFastMutex(i32*) #1

declare dso_local i32 @IsListEmpty(i32*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @ExReleaseFastMutex(i32*) #1

declare dso_local i32 @ClearFlag(i64, i64) #1

declare dso_local i32 @ExFreeToPagedLookasideList(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @vfatAttachFCBToFileObject(%struct.TYPE_33__*, %struct.TYPE_31__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
