; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_31__*, %struct.TYPE_29__*, %struct.TYPE_28__*, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__, %struct.TYPE_25__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"VfatSetInformation(IrpContext %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"VfatSetInformation is called for '%s'\0A\00", align 1
@FileMaximumInformation = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@FileInformationClassNames = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"FileInformationClass %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SystemBuffer %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"IRP_MJ_SET_INFORMATION without FCB!\0A\00", align 1
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Check for the ability to set file size\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Couldn't set file size!\0A\00", align 1
@STATUS_USER_MAPPED_FILE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"Can set file size\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@IRPCONTEXT_CANWAIT = common dso_local global i32 0, align 4
@FCB_IS_PAGE_FILE = common dso_local global i32 0, align 4
@STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VfatSetInformation(%struct.TYPE_32__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %11 = call i32 @ASSERT(%struct.TYPE_32__* %10)
  %12 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %13 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_32__* %12)
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %26, %struct.TYPE_33__** %5, align 8
  %27 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FileMaximumInformation, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %44

38:                                               ; preds = %1
  %39 = load i8**, i8*** @FileInformationClassNames, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %38, %37
  %45 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %37 ], [ %43, %38 ]
  %46 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %52 = icmp eq %struct.TYPE_33__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = call i32 @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %60, i32* %2, align 4
  br label %243

61:                                               ; preds = %44
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 130
  br i1 %63, label %64, label %85

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @MmCanFileBeTruncated(i32 %70, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %64
  %76 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @STATUS_USER_MAPPED_FILE, align 4
  store i32 %82, i32* %2, align 4
  br label %243

83:                                               ; preds = %64
  %84 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %61
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %8, align 8
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 128
  br i1 %88, label %98, label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 133
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 130
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = icmp eq i32 %96, 132
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %92, %89, %85
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %8, align 8
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_23__*
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %115 = call i32 @BooleanFlagOn(i32 %113, i32 %114)
  %116 = call i32 @ExAcquireResourceExclusiveLite(i32* %110, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %103
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %120 = call i32 @VfatMarkIrpContextForQueue(%struct.TYPE_32__* %119)
  store i32 %120, i32* %2, align 4
  br label %243

121:                                              ; preds = %103
  br label %122

122:                                              ; preds = %121, %100
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FCB_IS_PAGE_FILE, align 4
  %127 = call i32 @BooleanFlagOn(i32 %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %122
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IRPCONTEXT_CANWAIT, align 4
  %136 = call i32 @BooleanFlagOn(i32 %134, i32 %135)
  %137 = call i32 @ExAcquireResourceExclusiveLite(i32* %131, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %129
  %140 = load i64, i64* %8, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to %struct.TYPE_23__*
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = call i32 @ExReleaseResourceLite(i32* %149)
  br label %151

151:                                              ; preds = %142, %139
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %153 = call i32 @VfatMarkIrpContextForQueue(%struct.TYPE_32__* %152)
  store i32 %153, i32* %2, align 4
  br label %243

154:                                              ; preds = %129
  br label %155

155:                                              ; preds = %154, %122
  %156 = load i32, i32* %4, align 4
  switch i32 %156, label %211 [
    i32 129, label %157
    i32 131, label %163
    i32 133, label %173
    i32 130, label %173
    i32 132, label %184
    i32 128, label %194
  ]

157:                                              ; preds = %155
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %159, align 8
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @VfatSetPositionInformation(%struct.TYPE_24__* %160, i64 %161)
  store i32 %162, i32* %6, align 4
  br label %213

163:                                              ; preds = %155
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %165, align 8
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i32 @VfatSetDispositionInformation(%struct.TYPE_24__* %166, %struct.TYPE_33__* %167, i32 %170, i64 %171)
  store i32 %172, i32* %6, align 4
  br label %213

173:                                              ; preds = %155, %155
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %175, align 8
  %177 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %178 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* %7, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @VfatSetAllocationSizeInformation(%struct.TYPE_24__* %176, %struct.TYPE_33__* %177, i32 %180, i32 %182)
  store i32 %183, i32* %6, align 4
  br label %213

184:                                              ; preds = %155
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %186, align 8
  %188 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = call i32 @VfatSetBasicInformation(%struct.TYPE_24__* %187, %struct.TYPE_33__* %188, i32 %191, i64 %192)
  store i32 %193, i32* %6, align 4
  br label %213

194:                                              ; preds = %155
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %196, align 8
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %199 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i64, i64* %7, align 8
  %203 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @VfatSetRenameInformation(%struct.TYPE_24__* %197, %struct.TYPE_33__* %198, i32 %201, i64 %202, i32 %209)
  store i32 %210, i32* %6, align 4
  br label %213

211:                                              ; preds = %155
  %212 = load i32, i32* @STATUS_NOT_SUPPORTED, align 4
  store i32 %212, i32* %6, align 4
  br label %213

213:                                              ; preds = %211, %194, %184, %173, %163, %157
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @FCB_IS_PAGE_FILE, align 4
  %218 = call i32 @BooleanFlagOn(i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %213
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 0
  %223 = call i32 @ExReleaseResourceLite(i32* %222)
  br label %224

224:                                              ; preds = %220, %213
  %225 = load i64, i64* %8, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = inttoptr i64 %232 to %struct.TYPE_23__*
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 0
  %235 = call i32 @ExReleaseResourceLite(i32* %234)
  br label %236

236:                                              ; preds = %227, %224
  %237 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_31__*, %struct.TYPE_31__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  store i64 0, i64* %241, align 8
  %242 = load i32, i32* %6, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %236, %151, %118, %75, %53
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @ASSERT(%struct.TYPE_32__*) #1

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @MmCanFileBeTruncated(i32, i32) #1

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @VfatMarkIrpContextForQueue(%struct.TYPE_32__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @VfatSetPositionInformation(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @VfatSetDispositionInformation(%struct.TYPE_24__*, %struct.TYPE_33__*, i32, i64) #1

declare dso_local i32 @VfatSetAllocationSizeInformation(%struct.TYPE_24__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @VfatSetBasicInformation(%struct.TYPE_24__*, %struct.TYPE_33__*, i32, i64) #1

declare dso_local i32 @VfatSetRenameInformation(%struct.TYPE_24__*, %struct.TYPE_33__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
