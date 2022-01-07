; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_backup_superblock.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_backup_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i32 }

@BTRFS_ROOT_EXTENT = common dso_local global i64 0, align 8
@TYPE_ROOT_ITEM = common dso_local global i64 0, align 8
@BTRFS_ROOT_FSTREE = common dso_local global i64 0, align 8
@BTRFS_ROOT_DEVTREE = common dso_local global i64 0, align 8
@BTRFS_ROOT_CHECKSUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, i32)* @update_backup_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_backup_superblock(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__, align 8
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = call i32 @RtlZeroMemory(%struct.TYPE_19__* %13, i32 84)
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 8
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 20
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 19
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 18
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 16
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 15
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* @BTRFS_ROOT_EXTENT, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @TYPE_ROOT_ITEM, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 2
  store i32 -1, i32* %55, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @find_item(%struct.TYPE_20__* %56, i32 %59, %struct.TYPE_18__* %8, %struct.TYPE_22__* %7, i32 0, i32 %60)
  %62 = call i64 @NT_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %3
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %110

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = icmp uge i64 %87, 12
  br i1 %88, label %89, label %110

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %94, %struct.TYPE_21__** %9, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 14
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 13
  store i32 %102, i32* %104, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %89, %82, %73, %64
  br label %111

111:                                              ; preds = %110, %3
  %112 = load i64, i64* @BTRFS_ROOT_FSTREE, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @find_item(%struct.TYPE_20__* %114, i32 %117, %struct.TYPE_18__* %8, %struct.TYPE_22__* %7, i32 0, i32 %118)
  %120 = call i64 @NT_SUCCESS(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %127, %129
  br i1 %130, label %131, label %168

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %136, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = icmp uge i64 %145, 12
  br i1 %146, label %147, label %168

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %10, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 11
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 10
  store i32 %160, i32* %162, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 9
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %147, %140, %131, %122
  br label %169

169:                                              ; preds = %168, %111
  %170 = load i64, i64* @BTRFS_ROOT_DEVTREE, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i64 %170, i64* %171, align 8
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @find_item(%struct.TYPE_20__* %172, i32 %175, %struct.TYPE_18__* %8, %struct.TYPE_22__* %7, i32 0, i32 %176)
  %178 = call i64 @NT_SUCCESS(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %227

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %189, label %226

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %194, %196
  br i1 %197, label %198, label %226

198:                                              ; preds = %189
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = icmp uge i64 %203, 12
  br i1 %204, label %205, label %226

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %210, %struct.TYPE_21__** %11, align 8
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 4
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 6
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %205, %198, %189, %180
  br label %227

227:                                              ; preds = %226, %169
  %228 = load i64, i64* @BTRFS_ROOT_CHECKSUM, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  store i64 %228, i64* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @find_item(%struct.TYPE_20__* %230, i32 %233, %struct.TYPE_18__* %8, %struct.TYPE_22__* %7, i32 0, i32 %234)
  %236 = call i64 @NT_SUCCESS(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %285

238:                                              ; preds = %227
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %243, %245
  br i1 %246, label %247, label %284

247:                                              ; preds = %238
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp eq i64 %252, %254
  br i1 %255, label %256, label %284

256:                                              ; preds = %247
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = icmp uge i64 %261, 12
  br i1 %262, label %263, label %284

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %268, %struct.TYPE_21__** %12, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %272, i32 0, i32 5
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 4
  br label %284

284:                                              ; preds = %263, %256, %247, %238
  br label %285

285:                                              ; preds = %284, %227
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 4
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 0
  store i32 %301, i32* %303, align 4
  ret void
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @find_item(%struct.TYPE_20__*, i32, %struct.TYPE_18__*, %struct.TYPE_22__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
