; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_write.c_write_file.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_write.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_25__, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_30__, %struct.TYPE_22__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i8*, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"write\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"offset = %I64x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"length = %x\0A\00", align 1
@FSRTL_FLAG2_IS_PAGING_FILE = common dso_local global i32 0, align 4
@HighPagePriority = common dso_local global i32 0, align 4
@NormalPagePriority = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"MmGetSystemAddressForMdlSafe returned NULL\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"buf = %p\0A\00", align 1
@IRP_PAGING_IO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"tried to write to locked region\0A\00", align 1
@STATUS_FILE_LOCK_CONFLICT = common dso_local global i64 0, align 8
@IRP_NOCACHE = common dso_local global i32 0, align 4
@STATUS_PENDING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"write_file2 returned %08x\0A\00", align 1
@diskacc = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_file(i32* %0, %struct.TYPE_32__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %18 = call %struct.TYPE_21__* @IoGetCurrentIrpStackLocation(%struct.TYPE_32__* %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 1
  %23 = bitcast %struct.TYPE_23__* %12 to i8*
  %24 = bitcast %struct.TYPE_23__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %13, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  br label %35

34:                                               ; preds = %4
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi %struct.TYPE_31__* [ %33, %30 ], [ null, %34 ]
  store %struct.TYPE_31__* %36, %struct.TYPE_31__** %14, align 8
  %37 = call i32 @InitializeListHead(i32* %15)
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %86, label %56

56:                                               ; preds = %35
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %59 = icmp ne %struct.TYPE_31__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FSRTL_FLAG2_IS_PAGING_FILE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @HighPagePriority, align 4
  br label %72

70:                                               ; preds = %60, %56
  %71 = load i32, i32* @NormalPagePriority, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = call i8* @map_user_buffer(%struct.TYPE_32__* %57, i32 %73)
  store i8* %74, i8** %10, align 8
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i64, i64* @STATUS_INSUFFICIENT_RESOURCES, align 8
  store i64 %84, i64* %11, align 8
  br label %227

85:                                               ; preds = %79, %72
  br label %91

86:                                               ; preds = %35
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %10, align 8
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %92)
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %95 = icmp ne %struct.TYPE_31__* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %91
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @IRP_PAGING_IO, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %112, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %107 = call i32 @FsRtlCheckLockForWriteAccess(i32* %105, %struct.TYPE_32__* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i64, i64* @STATUS_FILE_LOCK_CONFLICT, align 8
  store i64 %111, i64* %11, align 8
  br label %227

112:                                              ; preds = %103, %96, %91
  %113 = load i32*, i32** %5, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IRP_PAGING_IO, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IRP_NOCACHE, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @write_file2(i32* %113, %struct.TYPE_32__* %114, i8* %133, i8* %115, i8** %119, i32 %124, i32 %129, i32 %130, i32 %131, i32 1, i32* %15)
  store i64 %134, i64* %11, align 8
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* @STATUS_PENDING, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %112
  br label %227

139:                                              ; preds = %112
  %140 = load i64, i64* %11, align 8
  %141 = call i64 @NT_SUCCESS(i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %11, align 8
  %145 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %144)
  br label %227

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146
  %148 = load i64, i64* %11, align 8
  %149 = call i64 @NT_SUCCESS(i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %226

151:                                              ; preds = %147
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  store i8* %156, i8** %159, align 8
  %160 = load i64, i64* @diskacc, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %225

162:                                              ; preds = %151
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* @STATUS_PENDING, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %225

166:                                              ; preds = %162
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @IRP_NOCACHE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %225

173:                                              ; preds = %166
  store i32* null, i32** %16, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %194

180:                                              ; preds = %173
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = call i64 @IoIsSystemThread(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %16, align 8
  br label %212

194:                                              ; preds = %180, %173
  %195 = call i32* (...) @PsGetCurrentThread()
  %196 = call i64 @IoIsSystemThread(i32* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %194
  %199 = call i32* (...) @PsGetCurrentThread()
  store i32* %199, i32** %16, align 8
  br label %211

200:                                              ; preds = %194
  %201 = call i32* (...) @PsGetCurrentThread()
  %202 = call i64 @IoIsSystemThread(i32* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = call %struct.TYPE_32__* (...) @IoGetTopLevelIrp()
  %206 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %207 = icmp eq %struct.TYPE_32__* %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = call i32* (...) @PsGetCurrentThread()
  store i32* %209, i32** %16, align 8
  br label %210

210:                                              ; preds = %208, %204, %200
  br label %211

211:                                              ; preds = %210, %198
  br label %212

212:                                              ; preds = %211, %188
  %213 = load i32*, i32** %16, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %212
  %216 = load i32*, i32** %16, align 8
  %217 = call i32 @PsGetThreadProcess(i32* %216)
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @fPsUpdateDiskCounters(i32 %217, i32 0, i8* %222, i32 0, i32 1, i32 0)
  br label %224

224:                                              ; preds = %215, %212
  br label %225

225:                                              ; preds = %224, %166, %162, %151
  br label %226

226:                                              ; preds = %225, %147
  br label %227

227:                                              ; preds = %226, %143, %138, %109, %82
  %228 = load i64, i64* %11, align 8
  %229 = call i64 @NT_SUCCESS(i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = call i32 @clear_rollback(i32* %15)
  br label %236

233:                                              ; preds = %227
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @do_rollback(i32* %234, i32* %15)
  br label %236

236:                                              ; preds = %233, %231
  %237 = load i64, i64* %11, align 8
  ret i64 %237
}

declare dso_local %struct.TYPE_21__* @IoGetCurrentIrpStackLocation(%struct.TYPE_32__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i8* @map_user_buffer(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @FsRtlCheckLockForWriteAccess(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @write_file2(i32*, %struct.TYPE_32__*, i8*, i8*, i8**, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i64 @IoIsSystemThread(i32*) #1

declare dso_local i32* @PsGetCurrentThread(...) #1

declare dso_local %struct.TYPE_32__* @IoGetTopLevelIrp(...) #1

declare dso_local i32 @fPsUpdateDiskCounters(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PsGetThreadProcess(i32*) #1

declare dso_local i32 @clear_rollback(i32*) #1

declare dso_local i32 @do_rollback(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
