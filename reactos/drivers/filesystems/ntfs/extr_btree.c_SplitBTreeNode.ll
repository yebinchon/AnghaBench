; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_SplitBTreeNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_SplitBTreeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32, i32, %struct.TYPE_22__*, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"SplitBTreeNode(%p, %p, %p, %p, %s) called\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@TAG_NTFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"Error: Failed to allocate memory for right hand sibling!\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"%lu keys, %lu median\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"\09\09Median: %.*S\0A\00", align 1
@NTFS_INDEX_ENTRY_NODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Error: Couldn't allocate dummy key!\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for new index entry!\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Left-hand node after split:\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Right-hand sibling node after split:\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SplitBTreeNode(i32 %0, %struct.TYPE_21__* %1, %struct.TYPE_22__** %2, %struct.TYPE_21__** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_22__**, align 8
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %9, align 8
  store %struct.TYPE_21__** %3, %struct.TYPE_21__*** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %22 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %23 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.TYPE_21__* %21, %struct.TYPE_22__** %22, %struct.TYPE_21__** %23, i8* %27)
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %30 = call i32 @DumpBTreeNode(%struct.TYPE_21__* %29, i32 0, i32 0)
  %31 = load i32, i32* @NonPagedPool, align 4
  %32 = load i32, i32* @TAG_NTFS, align 4
  %33 = call i8* @ExAllocatePoolWithTag(i32 %31, i32 4, i32 %32)
  %34 = bitcast i8* %33 to %struct.TYPE_21__*
  %35 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %35, align 8
  %36 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = icmp eq %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %41, i32* %6, align 4
  br label %280

42:                                               ; preds = %5
  %43 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = call i32 @RtlZeroMemory(%struct.TYPE_21__* %44, i32 4)
  %46 = load i32, i32* @TRUE, align 4
  %47 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 6
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %13, align 8
  store i64 0, i64* %12, align 8
  store i64 2016, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %53

53:                                               ; preds = %78, %42
  %54 = load i64, i64* %18, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %17, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %17, align 8
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* %16, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %81

72:                                               ; preds = %59
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %12, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  store %struct.TYPE_22__* %77, %struct.TYPE_22__** %13, align 8
  br label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %18, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %18, align 8
  br label %53

81:                                               ; preds = %71, %53
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %85, align 8
  %86 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %14, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %12, align 8
  %94 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %101, i32 %108)
  %110 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %117 = call i32 @BooleanFlagOn(i32 %115, i32 %116)
  %118 = call %struct.TYPE_22__* @CreateDummyKey(i32 %117)
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  store %struct.TYPE_22__* %118, %struct.TYPE_22__** %120, align 8
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = icmp eq %struct.TYPE_22__* %123, null
  br i1 %124, label %125, label %136

125:                                              ; preds = %81
  %126 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %127 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  store %struct.TYPE_22__* %128, %struct.TYPE_22__** %130, align 8
  %131 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = load i32, i32* @TAG_NTFS, align 4
  %134 = call i32 @ExFreePoolWithTag(%struct.TYPE_21__* %132, i32 %133)
  %135 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %135, i32* %6, align 4
  br label %280

136:                                              ; preds = %81
  %137 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %136
  %147 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %154, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %158, align 8
  %160 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = call i32 @GetIndexEntryVCN(%struct.TYPE_21__* %163)
  %165 = call i32 @SetIndexEntryVCN(%struct.TYPE_21__* %159, i32 %164)
  br label %233

166:                                              ; preds = %136
  %167 = load i32, i32* @NonPagedPool, align 4
  %168 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, 4
  %176 = trunc i64 %175 to i32
  %177 = load i32, i32* @TAG_NTFS, align 4
  %178 = call i8* @ExAllocatePoolWithTag(i32 %167, i32 %176, i32 %177)
  %179 = bitcast i8* %178 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %179, %struct.TYPE_21__** %19, align 8
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %181 = icmp ne %struct.TYPE_21__* %180, null
  br i1 %181, label %193, label %182

182:                                              ; preds = %166
  %183 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %184 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %184, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 2
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %187, align 8
  %188 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %188, align 8
  %190 = load i32, i32* @TAG_NTFS, align 4
  %191 = call i32 @ExFreePoolWithTag(%struct.TYPE_21__* %189, i32 %190)
  %192 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %192, i32* %6, align 4
  br label %280

193:                                              ; preds = %166
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %195 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  %199 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @RtlCopyMemory(%struct.TYPE_21__* %194, %struct.TYPE_21__* %198, i32 %204)
  %206 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = load i32, i32* @TAG_NTFS, align 4
  %211 = call i32 @ExFreePoolWithTag(%struct.TYPE_21__* %209, i32 %210)
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  %213 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 0
  store %struct.TYPE_21__* %212, %struct.TYPE_21__** %215, align 8
  %216 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = add i64 %222, 4
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 8
  %225 = load i32, i32* @NTFS_INDEX_ENTRY_NODE, align 4
  %226 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %225
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %193, %146
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %235 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 1
  store %struct.TYPE_21__* %234, %struct.TYPE_21__** %237, align 8
  %238 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %9, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %240, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @SetIndexEntryVCN(%struct.TYPE_21__* %241, i32 %244)
  %246 = load i64, i64* %12, align 8
  %247 = add nsw i64 %246, 2
  %248 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  store i64 %247, i64* %249, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %251, align 8
  %253 = call i8* @CountBTreeKeys(%struct.TYPE_22__* %252)
  %254 = ptrtoint i8* %253 to i64
  store i64 %254, i64* %15, align 8
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %15, align 8
  %259 = icmp eq i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i32 @ASSERT(i32 %260)
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %263 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 3
  store %struct.TYPE_22__* %262, %struct.TYPE_22__** %265, align 8
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %267 = call i8* @CountBTreeKeys(%struct.TYPE_22__* %266)
  %268 = ptrtoint i8* %267 to i64
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 0
  store i64 %268, i64* %271, align 8
  %272 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %274 = call i32 @DumpBTreeNode(%struct.TYPE_21__* %273, i32 0, i32 0)
  %275 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %276 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %276, align 8
  %278 = call i32 @DumpBTreeNode(%struct.TYPE_21__* %277, i32 0, i32 0)
  %279 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %233, %182, %125, %39
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @DPRINT(i8*, i32, %struct.TYPE_21__*, %struct.TYPE_22__**, %struct.TYPE_21__**, i8*) #1

declare dso_local i32 @DumpBTreeNode(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @CreateDummyKey(i32) #1

declare dso_local i32 @BooleanFlagOn(i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @SetIndexEntryVCN(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @GetIndexEntryVCN(%struct.TYPE_21__*) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

declare dso_local i8* @CountBTreeKeys(%struct.TYPE_22__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
