; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_UpdateIndexNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_UpdateIndexNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i8*, i32, i8*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"UpdateIndexNode(%p, %p, %p, %lu, %p, %lu) called for index node with VCN %I64u\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"ERROR: Failed to update child node!\0A\00", align 1
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"ERROR: Unable to allocate memory for new index entry!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"ERROR: Failed to allocate index record in index allocation!\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"ERROR: Failed to allocate %lu bytes for index buffer!\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ERROR: Failed to create index buffer from node!\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"ERROR: Failed to update index allocation!\0A\00", align 1
@STATUS_END_OF_FILE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateIndexNode(i32 %0, i32 %1, %struct.TYPE_16__* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %15, align 8
  %25 = load i8*, i8** @FALSE, align 8
  store i8* %25, i8** %16, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i64, i64* %13, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DPRINT(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, %struct.TYPE_16__* %28, i64 %29, i32 %30, i64 %31, i32 %34)
  store i64 0, i64* %14, align 8
  br label %36

36:                                               ; preds = %138, %6
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %141

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %44 = call i32 @ASSERT(%struct.TYPE_15__* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %46, align 8
  %48 = icmp ne %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %134

49:                                               ; preds = %42
  %50 = load i8*, i8** @TRUE, align 8
  store i8* %50, i8** %16, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @UpdateIndexNode(i32 %51, i32 %52, %struct.TYPE_16__* %55, i64 %56, i32 %57, i64 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @NT_SUCCESS(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %49
  %64 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %7, align 4
  br label %241

66:                                               ; preds = %49
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %73 = call i32 @BooleanFlagOn(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %117, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @NonPagedPool, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = load i32, i32* @TAG_NTFS, align 4
  %85 = call i8* @ExAllocatePoolWithTag(i32 %76, i64 %83, i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %18, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %88 = icmp ne %struct.TYPE_14__* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %75
  %90 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %91, i32* %7, align 4
  br label %241

92:                                               ; preds = %75
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @RtlCopyMemory(%struct.TYPE_14__* %93, %struct.TYPE_14__* %96, i32 %101)
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 4
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = load i32, i32* @TAG_NTFS, align 4
  %113 = call i32 @ExFreePoolWithTag(%struct.TYPE_14__* %111, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store %struct.TYPE_14__* %114, %struct.TYPE_14__** %116, align 8
  br label %117

117:                                              ; preds = %92, %66
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @SetIndexEntryVCN(%struct.TYPE_14__* %120, i32 %125)
  %127 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %127
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %117, %42
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  store %struct.TYPE_15__* %137, %struct.TYPE_15__** %15, align 8
  br label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %14, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %14, align 8
  br label %36

141:                                              ; preds = %36
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %239

146:                                              ; preds = %141
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %170, label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i64, i64* %11, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i64, i64* %13, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = call i32 @AllocateIndexNode(i32 %152, i32 %153, i64 %154, i32 %155, i64 %156, i32* %158)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @NT_SUCCESS(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %151
  %164 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* %17, align 4
  store i32 %165, i32* %7, align 4
  br label %241

166:                                              ; preds = %151
  %167 = load i8*, i8** @TRUE, align 8
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 3
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %146
  %171 = load i32, i32* @NonPagedPool, align 4
  %172 = load i64, i64* %11, align 8
  %173 = load i32, i32* @TAG_NTFS, align 4
  %174 = call i8* @ExAllocatePoolWithTag(i32 %171, i64 %172, i32 %173)
  %175 = bitcast i8* %174 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %21, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %177 = icmp ne %struct.TYPE_14__* %176, null
  br i1 %177, label %182, label %178

178:                                              ; preds = %170
  %179 = load i64, i64* %11, align 8
  %180 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %179)
  %181 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %181, i32* %7, align 4
  br label %241

182:                                              ; preds = %170
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %185 = load i64, i64* %11, align 8
  %186 = load i8*, i8** %16, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %188 = call i32 @CreateIndexBufferFromBTreeNode(i32 %183, %struct.TYPE_16__* %184, i64 %185, i8* %186, %struct.TYPE_14__* %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @NT_SUCCESS(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %182
  %193 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %195 = load i32, i32* @TAG_NTFS, align 4
  %196 = call i32 @ExFreePoolWithTag(%struct.TYPE_14__* %194, i32 %195)
  %197 = load i32, i32* %17, align 4
  store i32 %197, i32* %7, align 4
  br label %241

198:                                              ; preds = %182
  %199 = load i32, i32* %8, align 4
  %200 = load i64, i64* %11, align 8
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @GetAllocationOffsetFromVCN(i32 %199, i64 %200, i32 %203)
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %209 = ptrtoint %struct.TYPE_14__* %208 to i32
  %210 = load i64, i64* %11, align 8
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @WriteAttribute(i32 %205, i32 %206, i32 %207, i32 %209, i64 %210, i64* %20, i32 %211)
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @NT_SUCCESS(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %198
  %217 = load i64, i64* %20, align 8
  %218 = load i64, i64* %11, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %216, %198
  %221 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %223 = load i32, i32* @TAG_NTFS, align 4
  %224 = call i32 @ExFreePoolWithTag(%struct.TYPE_14__* %222, i32 %223)
  %225 = load i32, i32* %17, align 4
  %226 = call i32 @NT_SUCCESS(i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %220
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %7, align 4
  br label %241

230:                                              ; preds = %220
  %231 = load i32, i32* @STATUS_END_OF_FILE, align 4
  store i32 %231, i32* %7, align 4
  br label %241

232:                                              ; preds = %216
  %233 = load i8*, i8** @FALSE, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %237 = load i32, i32* @TAG_NTFS, align 4
  %238 = call i32 @ExFreePoolWithTag(%struct.TYPE_14__* %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %141
  %240 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %239, %230, %228, %192, %178, %163, %89, %63
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @DPRINT(i8*, i32, i32, %struct.TYPE_16__*, i64, i32, i64, i32) #1

declare dso_local i32 @ASSERT(%struct.TYPE_15__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SetIndexEntryVCN(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AllocateIndexNode(i32, i32, i64, i32, i64, i32*) #1

declare dso_local i32 @CreateIndexBufferFromBTreeNode(i32, %struct.TYPE_16__*, i64, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @GetAllocationOffsetFromVCN(i32, i64, i32) #1

declare dso_local i32 @WriteAttribute(i32, i32, i32, i32, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
