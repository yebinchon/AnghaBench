; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_rw.c_NtfsWriteFile.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_rw.c_NtfsWriteFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i64, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32, i64 }
%struct.TYPE_28__ = type { i32, i32, i64 }
%struct.TYPE_33__ = type { i64 }

@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"NtfsWriteFile(%p, %p, %p, %lu, %lu, %x, %s, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Fcb->PathName: %wS\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Fcb->ObjectName: %wS\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Compressed file!\0A\00", align 1
@UNIMPLEMENTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Not enough memory! Can't write %wS!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Reading file record...\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Can't find record for %wS!\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Found record for %wS\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Finding Data Attribute...\0A\00", align 1
@AttributeData = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"No '%S' data stream associated with file!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [30 x i8] c"Data stream: '%wZ' available\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"WriteOffset: %lu\09StreamSize: %I64u\0A\00", align 1
@FCB_IS_VOLUME = common dso_local global i32 0, align 4
@IRP_PAGING_IO = common dso_local global i64 0, align 8
@NTFS_MFT_MASK = common dso_local global i64 0, align 8
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [48 x i8] c"Length: %lu\09WriteOffset: %lu\09StreamSize: %I64u\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Write failure!\0A\00", align 1
@.str.16 = private unnamed_addr constant [101 x i8] c"\07\09NTFS DRIVER ERROR: length written (%lu) differs from requested (%lu), but no error was indicated!\0A\00", align 1
@STATUS_UNEXPECTED_IO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsWriteFile(%struct.TYPE_29__* %0, %struct.TYPE_32__* %1, i32* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_29__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_31__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_30__*, align 8
  %27 = alloca %struct.TYPE_28__, align 8
  %28 = alloca %struct.TYPE_33__, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_29__*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.TYPE_28__, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %10, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64* %7, i64** %17, align 8
  %33 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %33, i32* %18, align 4
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %44 = load i64*, i64** %17, align 8
  %45 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), %struct.TYPE_29__* %34, %struct.TYPE_32__* %35, i32* %36, i64 %37, i64 %38, i64 %39, i8* %43, i64* %44)
  %46 = load i64*, i64** %17, align 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %48 = call i32 @ASSERT(%struct.TYPE_29__* %47)
  %49 = load i64, i64* %13, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %55, i32* %9, align 4
  br label %325

56:                                               ; preds = %51
  %57 = load i32, i32* @STATUS_INVALID_PARAMETER, align 4
  store i32 %57, i32* %9, align 4
  br label %325

58:                                               ; preds = %8
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %62, %struct.TYPE_29__** %19, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %64 = call i32 @ASSERT(%struct.TYPE_29__* %63)
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %74 = call i64 @NtfsFCBIsCompressed(%struct.TYPE_29__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @UNIMPLEMENTED, align 4
  %79 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %79, i32* %9, align 4
  br label %325

80:                                               ; preds = %58
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 3
  %83 = call i32* @ExAllocateFromNPagedLookasideList(i32* %82)
  store i32* %83, i32** %20, align 8
  %84 = load i32*, i32** %20, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %91, i32* %9, align 4
  br label %325

92:                                               ; preds = %80
  %93 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %96 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %20, align 8
  %99 = call i32 @ReadFileRecord(%struct.TYPE_29__* %94, i32 %97, i32* %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i64 @NT_SUCCESS(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %92
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 3
  %110 = load i32*, i32** %20, align 8
  %111 = call i32 @ExFreeToNPagedLookasideList(i32* %109, i32* %110)
  %112 = load i32, i32* %18, align 4
  store i32 %112, i32* %9, align 4
  br label %325

113:                                              ; preds = %92
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 7
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %116)
  %118 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i64, i64* @AttributeData, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @wcslen(i32 %127)
  %129 = call i32 @FindAttribute(%struct.TYPE_29__* %119, i32* %120, i64 %121, i32 %124, i32 %128, %struct.TYPE_31__** %21, i64* %22)
  store i32 %129, i32* %18, align 4
  %130 = load i32, i32* %18, align 4
  %131 = call i64 @NT_SUCCESS(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %182, label %133

133:                                              ; preds = %113
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %139 = load i32*, i32** %20, align 8
  %140 = load i32, i32* @FALSE, align 4
  %141 = call i32 @FindFirstAttribute(i32* %25, %struct.TYPE_29__* %138, i32* %139, i32 %140, %struct.TYPE_30__** %26)
  store i32 %141, i32* %24, align 4
  br label %142

142:                                              ; preds = %171, %133
  %143 = load i32, i32* %24, align 4
  %144 = call i64 @NT_SUCCESS(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %173

146:                                              ; preds = %142
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @AttributeData, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %171

152:                                              ; preds = %146
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 4
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %164 = ptrtoint %struct.TYPE_30__* %163 to i64
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 2
  store i64 %168, i64* %169, align 8
  %170 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_28__* %27)
  br label %171

171:                                              ; preds = %152, %146
  %172 = call i32 @FindNextAttribute(i32* %25, %struct.TYPE_30__** %26)
  store i32 %172, i32* %24, align 4
  br label %142

173:                                              ; preds = %142
  %174 = call i32 @FindCloseAttribute(i32* %25)
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %176 = call i32 @ReleaseAttributeContext(%struct.TYPE_31__* %175)
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 3
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @ExFreeToNPagedLookasideList(i32* %178, i32* %179)
  %181 = load i32, i32* %18, align 4
  store i32 %181, i32* %9, align 4
  br label %325

182:                                              ; preds = %113
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @AttributeDataLength(i32 %185)
  store i64 %186, i64* %23, align 8
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %23, align 8
  %189 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %187, i64 %188)
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %13, align 8
  %192 = add nsw i64 %190, %191
  %193 = load i64, i64* %23, align 8
  %194 = icmp sgt i64 %192, %193
  br i1 %194, label %195, label %281

195:                                              ; preds = %182
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @FCB_IS_VOLUME, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %271, label %202

202:                                              ; preds = %195
  %203 = load i64, i64* %15, align 8
  %204 = load i64, i64* @IRP_PAGING_IO, align 8
  %205 = and i64 %203, %204
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %271, label %207

207:                                              ; preds = %202
  %208 = load i64, i64* %14, align 8
  %209 = load i64, i64* %13, align 8
  %210 = add nsw i64 %208, %209
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %213 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %214 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %215 = load i64, i64* %22, align 8
  %216 = load i32*, i32** %20, align 8
  %217 = call i32 @SetAttributeDataLength(%struct.TYPE_32__* %212, %struct.TYPE_29__* %213, %struct.TYPE_31__* %214, i64 %215, i32* %216, %struct.TYPE_33__* %28)
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = call i64 @NT_SUCCESS(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %207
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %223 = call i32 @ReleaseAttributeContext(%struct.TYPE_31__* %222)
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 3
  %226 = load i32*, i32** %20, align 8
  %227 = call i32 @ExFreeToNPagedLookasideList(i32* %225, i32* %226)
  %228 = load i64*, i64** %17, align 8
  store i64 0, i64* %228, align 8
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %9, align 4
  br label %325

230:                                              ; preds = %207
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i64 @AttributeAllocatedLength(i32 %233)
  store i64 %234, i64* %29, align 8
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = load i32*, i32** %20, align 8
  %239 = call %struct.TYPE_29__* @GetBestFileNameFromRecord(i32 %237, i32* %238)
  store %struct.TYPE_29__* %239, %struct.TYPE_29__** %30, align 8
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %241 = call i32 @ASSERT(%struct.TYPE_29__* %240)
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @NTFS_MFT_MASK, align 8
  %246 = and i64 %244, %245
  store i64 %246, i64* %31, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 2
  store i64 %249, i64* %250, align 8
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 4
  %256 = trunc i64 %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  store i32 %256, i32* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  store i32 %259, i32* %260, align 4
  %261 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* %31, align 8
  %265 = load i32, i32* @FALSE, align 4
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %29, align 8
  %269 = load i64, i64* %16, align 8
  %270 = call i32 @UpdateFileNameRecord(i32 %263, i64 %264, %struct.TYPE_28__* %32, i32 %265, i64 %267, i64 %268, i64 %269)
  store i32 %270, i32* %18, align 4
  br label %280

271:                                              ; preds = %202, %195
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %273 = call i32 @ReleaseAttributeContext(%struct.TYPE_31__* %272)
  %274 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %274, i32 0, i32 3
  %276 = load i32*, i32** %20, align 8
  %277 = call i32 @ExFreeToNPagedLookasideList(i32* %275, i32* %276)
  %278 = load i64*, i64** %17, align 8
  store i64 0, i64* %278, align 8
  %279 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %279, i32* %9, align 4
  br label %325

280:                                              ; preds = %230
  br label %281

281:                                              ; preds = %280, %182
  %282 = load i64, i64* %13, align 8
  %283 = load i64, i64* %14, align 8
  %284 = load i64, i64* %23, align 8
  %285 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i64 %282, i64 %283, i64 %284)
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %287 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %288 = load i64, i64* %14, align 8
  %289 = load i32*, i32** %12, align 8
  %290 = load i64, i64* %13, align 8
  %291 = load i64*, i64** %17, align 8
  %292 = load i32*, i32** %20, align 8
  %293 = call i32 @WriteAttribute(%struct.TYPE_29__* %286, %struct.TYPE_31__* %287, i64 %288, i32* %289, i64 %290, i64* %291, i32* %292)
  store i32 %293, i32* %18, align 4
  %294 = load i32, i32* %18, align 4
  %295 = call i64 @NT_SUCCESS(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %281
  %298 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %300 = call i32 @ReleaseAttributeContext(%struct.TYPE_31__* %299)
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 3
  %303 = load i32*, i32** %20, align 8
  %304 = call i32 @ExFreeToNPagedLookasideList(i32* %302, i32* %303)
  %305 = load i32, i32* %18, align 4
  store i32 %305, i32* %9, align 4
  br label %325

306:                                              ; preds = %281
  %307 = load i64*, i64** %17, align 8
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* %13, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %317

311:                                              ; preds = %306
  %312 = load i64*, i64** %17, align 8
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* %13, align 8
  %315 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.16, i64 0, i64 0), i64 %313, i64 %314)
  %316 = load i32, i32* @STATUS_UNEXPECTED_IO_ERROR, align 4
  store i32 %316, i32* %18, align 4
  br label %317

317:                                              ; preds = %311, %306
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %21, align 8
  %319 = call i32 @ReleaseAttributeContext(%struct.TYPE_31__* %318)
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 3
  %322 = load i32*, i32** %20, align 8
  %323 = call i32 @ExFreeToNPagedLookasideList(i32* %321, i32* %322)
  %324 = load i32, i32* %18, align 4
  store i32 %324, i32* %9, align 4
  br label %325

325:                                              ; preds = %317, %297, %271, %221, %173, %103, %86, %76, %56, %54
  %326 = load i32, i32* %9, align 4
  ret i32 %326
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ASSERT(%struct.TYPE_29__*) #1

declare dso_local i64 @NtfsFCBIsCompressed(%struct.TYPE_29__*) #1

declare dso_local i32* @ExAllocateFromNPagedLookasideList(i32*) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ReadFileRecord(%struct.TYPE_29__*, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreeToNPagedLookasideList(i32*, i32*) #1

declare dso_local i32 @FindAttribute(%struct.TYPE_29__*, i32*, i64, i32, i32, %struct.TYPE_31__**, i64*) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @FindFirstAttribute(i32*, %struct.TYPE_29__*, i32*, i32, %struct.TYPE_30__**) #1

declare dso_local i32 @FindNextAttribute(i32*, %struct.TYPE_30__**) #1

declare dso_local i32 @FindCloseAttribute(i32*) #1

declare dso_local i32 @ReleaseAttributeContext(%struct.TYPE_31__*) #1

declare dso_local i64 @AttributeDataLength(i32) #1

declare dso_local i32 @SetAttributeDataLength(%struct.TYPE_32__*, %struct.TYPE_29__*, %struct.TYPE_31__*, i64, i32*, %struct.TYPE_33__*) #1

declare dso_local i64 @AttributeAllocatedLength(i32) #1

declare dso_local %struct.TYPE_29__* @GetBestFileNameFromRecord(i32, i32*) #1

declare dso_local i32 @UpdateFileNameRecord(i32, i64, %struct.TYPE_28__*, i32, i64, i64, i64) #1

declare dso_local i32 @WriteAttribute(%struct.TYPE_29__*, %struct.TYPE_31__*, i64, i32*, i64, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
