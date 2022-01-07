; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_NtfsInsertKey.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_NtfsInsertKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__*, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"NtfsInsertKey(%p, 0x%I64x, %p, %p, %s, %lu, %lu, %p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\09\09Comparison == 0: %.*S\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ERROR: Failed to insert key.\0A\00", align 1
@TAG_NTFS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@INDEX_BUFFER = common dso_local global i32 0, align 4
@Header = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"ERROR: Failed to split B-Tree node!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NtfsInsertKey(%struct.TYPE_28__* %0, i32 %1, i32 %2, %struct.TYPE_27__* %3, i32 %4, i64 %5, i64 %6, %struct.TYPE_26__** %7, %struct.TYPE_27__** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__**, align 8
  %19 = alloca %struct.TYPE_27__**, align 8
  %20 = alloca %struct.TYPE_26__*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_26__*, align 8
  %30 = alloca %struct.TYPE_27__*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.TYPE_26__** %7, %struct.TYPE_26__*** %18, align 8
  store %struct.TYPE_27__** %8, %struct.TYPE_27__*** %19, align 8
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %32, i32* %23, align 4
  %33 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %33, align 8
  %34 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %19, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %34, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %46 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %19, align 8
  %47 = call i32 @DPRINT(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.TYPE_28__* %35, i32 %36, i32 %37, %struct.TYPE_27__* %38, i8* %42, i64 %43, i64 %44, %struct.TYPE_26__** %45, %struct.TYPE_27__** %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.TYPE_26__* @CreateBTreeKeyFromFilename(i32 %48, i32 %49)
  store %struct.TYPE_26__* %50, %struct.TYPE_26__** %20, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %52 = icmp ne %struct.TYPE_26__* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %9
  %54 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %54, i32* %10, align 4
  br label %237

55:                                               ; preds = %9
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  store %struct.TYPE_26__* %58, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %22, align 8
  store i64 0, i64* %27, align 8
  br label %59

59:                                               ; preds = %197, %55
  %60 = load i64, i64* %27, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %200

65:                                               ; preds = %59
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i64 @CompareTreeKeys(%struct.TYPE_26__* %66, %struct.TYPE_26__* %67, i32 %68)
  store i64 %69, i64* %28, align 8
  %70 = load i64, i64* %28, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %65
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %97)
  br label %99

99:                                               ; preds = %72, %65
  %100 = load i64, i64* %28, align 8
  %101 = icmp ne i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load i64, i64* %28, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %192

106:                                              ; preds = %99
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %108, align 8
  %110 = icmp ne %struct.TYPE_27__* %109, null
  br i1 %110, label %111, label %166

111:                                              ; preds = %106
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @NtfsInsertKey(%struct.TYPE_28__* %112, i32 %113, i32 %114, %struct.TYPE_27__* %117, i32 %118, i64 %119, i64 %120, %struct.TYPE_26__** %29, %struct.TYPE_27__** %30)
  store i32 %121, i32* %23, align 4
  %122 = load i32, i32* %23, align 4
  %123 = call i32 @NT_SUCCESS(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %111
  %126 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %128 = load i32, i32* @TAG_NTFS, align 4
  %129 = call i32 @ExFreePoolWithTag(%struct.TYPE_26__* %127, i32 %128)
  %130 = load i32, i32* %23, align 4
  store i32 %130, i32* %10, align 4
  br label %237

131:                                              ; preds = %111
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %133 = icmp ne %struct.TYPE_26__* %132, null
  br i1 %133, label %134, label %165

134:                                              ; preds = %131
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %136 = icmp ne %struct.TYPE_27__* %135, null
  %137 = zext i1 %136 to i32
  %138 = call i32 @ASSERT(i32 %137)
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  store %struct.TYPE_26__* %139, %struct.TYPE_26__** %141, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %143 = icmp ne %struct.TYPE_26__* %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %134
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %146 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %146, i32 0, i32 1
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %147, align 8
  br label %152

148:                                              ; preds = %134
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %29, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %151, align 8
  br label %152

152:                                              ; preds = %148, %144
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  store %struct.TYPE_27__* %153, %struct.TYPE_27__** %155, align 8
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  %160 = load i8*, i8** @TRUE, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %164 = call i32 @DumpBTree(%struct.TYPE_28__* %163)
  br label %165

165:                                              ; preds = %152, %131
  br label %191

166:                                              ; preds = %106
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  store %struct.TYPE_26__* %167, %struct.TYPE_26__** %169, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  %174 = load i8*, i8** @TRUE, align 8
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 2
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %179, align 8
  %181 = icmp eq %struct.TYPE_26__* %177, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %166
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 1
  store %struct.TYPE_26__* %183, %struct.TYPE_26__** %185, align 8
  br label %190

186:                                              ; preds = %166
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %20, align 8
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  store %struct.TYPE_26__* %187, %struct.TYPE_26__** %189, align 8
  br label %190

190:                                              ; preds = %186, %182
  br label %191

191:                                              ; preds = %190, %165
  br label %200

192:                                              ; preds = %99
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %193, %struct.TYPE_26__** %22, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %195, align 8
  store %struct.TYPE_26__* %196, %struct.TYPE_26__** %21, align 8
  br label %197

197:                                              ; preds = %192
  %198 = load i64, i64* %27, align 8
  %199 = add nsw i64 %198, 1
  store i64 %199, i64* %27, align 8
  br label %59

200:                                              ; preds = %191, %59
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %202 = call i64 @GetSizeOfIndexEntries(%struct.TYPE_27__* %201)
  store i64 %202, i64* %24, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %205, align 8
  %207 = icmp ne %struct.TYPE_27__* %203, %206
  br i1 %207, label %208, label %235

208:                                              ; preds = %200
  %209 = load i64, i64* %17, align 8
  %210 = load i32, i32* @INDEX_BUFFER, align 4
  %211 = load i32, i32* @Header, align 4
  %212 = call i64 @FIELD_OFFSET(i32 %210, i32 %211)
  %213 = sub nsw i64 %209, %212
  store i64 %213, i64* %25, align 8
  %214 = load i64, i64* %25, align 8
  %215 = sub nsw i64 %214, 40
  store i64 %215, i64* %26, align 8
  %216 = load i64, i64* %24, align 8
  %217 = load i64, i64* %26, align 8
  %218 = icmp sgt i64 %216, %217
  br i1 %218, label %219, label %234

219:                                              ; preds = %208
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %222 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  %223 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %19, align 8
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @SplitBTreeNode(%struct.TYPE_28__* %220, %struct.TYPE_27__* %221, %struct.TYPE_26__** %222, %struct.TYPE_27__** %223, i32 %224)
  store i32 %225, i32* %31, align 4
  %226 = load i32, i32* %31, align 4
  %227 = call i32 @NT_SUCCESS(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %219
  %230 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %231 = load i32, i32* %31, align 4
  store i32 %231, i32* %10, align 4
  br label %237

232:                                              ; preds = %219
  %233 = load i32, i32* %31, align 4
  store i32 %233, i32* %10, align 4
  br label %237

234:                                              ; preds = %208
  br label %235

235:                                              ; preds = %234, %200
  %236 = load i32, i32* %23, align 4
  store i32 %236, i32* %10, align 4
  br label %237

237:                                              ; preds = %235, %232, %229, %125, %53
  %238 = load i32, i32* %10, align 4
  ret i32 %238
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_28__*, i32, i32, %struct.TYPE_27__*, i8*, i64, i64, %struct.TYPE_26__**, %struct.TYPE_27__**) #1

declare dso_local %struct.TYPE_26__* @CreateBTreeKeyFromFilename(i32, i32) #1

declare dso_local i64 @CompareTreeKeys(%struct.TYPE_26__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ExFreePoolWithTag(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @DumpBTree(%struct.TYPE_28__*) #1

declare dso_local i64 @GetSizeOfIndexEntries(%struct.TYPE_27__*) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @SplitBTreeNode(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_26__**, %struct.TYPE_27__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
