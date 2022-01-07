; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_convert_old_extent.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_extent-tree.c_convert_old_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i64, i64, i64 }
%struct.TYPE_24__ = type { i32, i32 }

@TYPE_EXTENT_ITEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"old-style extent %I64x not found\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@TYPE_EXTENT_REF_V0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"add_tree_block_extent_ref returned %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"add_shared_block_extent_ref returned %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"add_shared_data_extent_ref returned %08x\0A\00", align 1
@EXTENT_ITEM_TREE_BLOCK = common dso_local global i32 0, align 4
@EXTENT_ITEM_SHARED_BACKREFS = common dso_local global i32 0, align 4
@EXTENT_ITEM_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"construct_extent_item returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, i64, i32, %struct.TYPE_23__*, i32, i32)* @convert_old_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @convert_old_extent(%struct.TYPE_22__* %0, i64 %1, i32 %2, %struct.TYPE_23__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_23__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = call i32 @InitializeListHead(i32* %18)
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @TYPE_EXTENT_ITEM, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 2
  store i32 -1, i32* %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i64 @find_item(%struct.TYPE_22__* %27, i32 %30, %struct.TYPE_21__* %16, %struct.TYPE_23__* %15, i32 0, i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @NT_SUCCESS(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %6
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* %14, align 8
  store i64 %39, i64* %7, align 8
  br label %228

40:                                               ; preds = %6
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %45, %47
  br i1 %48, label %58, label %49

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %49, %40
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  %61 = load i64, i64* @STATUS_INTERNAL_ERROR, align 8
  store i64 %61, i64* %7, align 8
  br label %228

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %19, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %69 = call i64 @delete_tree_item(%struct.TYPE_22__* %68, %struct.TYPE_21__* %16)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @NT_SUCCESS(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %62
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %14, align 8
  store i64 %76, i64* %7, align 8
  br label %228

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %199, %77
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @find_next_item(%struct.TYPE_22__* %79, %struct.TYPE_21__* %16, %struct.TYPE_21__* %17, i32 0, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %200

83:                                               ; preds = %78
  %84 = bitcast %struct.TYPE_21__* %16 to i8*
  %85 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %182

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @TYPE_EXTENT_REF_V0, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %182

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp uge i64 %106, 8
  br i1 %107, label %108, label %182

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %20, align 8
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %121, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %116
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @add_tree_block_extent_ref(i32* %18, i32 %131)
  store i64 %132, i64* %14, align 8
  %133 = load i64, i64* %14, align 8
  %134 = call i32 @NT_SUCCESS(i64 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %14, align 8
  %138 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %137)
  br label %225

139:                                              ; preds = %128
  br label %154

140:                                              ; preds = %116
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i64 @add_shared_block_extent_ref(i32* %18, i64 %145)
  store i64 %146, i64* %14, align 8
  %147 = load i64, i64* %14, align 8
  %148 = call i32 @NT_SUCCESS(i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %140
  %151 = load i64, i64* %14, align 8
  %152 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  br label %225

153:                                              ; preds = %140
  br label %154

154:                                              ; preds = %153, %139
  br label %172

155:                                              ; preds = %108
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @add_shared_data_extent_ref(i32* %18, i64 %160, i32 %163)
  store i64 %164, i64* %14, align 8
  %165 = load i64, i64* %14, align 8
  %166 = call i32 @NT_SUCCESS(i64 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %155
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %169)
  br label %225

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %174 = call i64 @delete_tree_item(%struct.TYPE_22__* %173, %struct.TYPE_21__* %16)
  store i64 %174, i64* %14, align 8
  %175 = load i64, i64* %14, align 8
  %176 = call i32 @NT_SUCCESS(i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %179)
  br label %225

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %101, %93, %83
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = icmp sgt i64 %187, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %182
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @TYPE_EXTENT_REF_V0, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %190, %182
  br label %200

199:                                              ; preds = %190
  br label %78

200:                                              ; preds = %198, %78
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* %19, align 8
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %200
  %207 = load i32, i32* @EXTENT_ITEM_TREE_BLOCK, align 4
  %208 = load i32, i32* @EXTENT_ITEM_SHARED_BACKREFS, align 4
  %209 = or i32 %207, %208
  br label %212

210:                                              ; preds = %200
  %211 = load i32, i32* @EXTENT_ITEM_DATA, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = phi i32 [ %209, %206 ], [ %211, %210 ]
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* %13, align 4
  %217 = call i64 @construct_extent_item(%struct.TYPE_22__* %201, i64 %202, i64 %203, i32 %213, i32* %18, %struct.TYPE_23__* %214, i32 %215, i32 %216)
  store i64 %217, i64* %14, align 8
  %218 = load i64, i64* %14, align 8
  %219 = call i32 @NT_SUCCESS(i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %212
  %222 = load i64, i64* %14, align 8
  %223 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %222)
  br label %224

224:                                              ; preds = %221, %212
  br label %225

225:                                              ; preds = %224, %178, %168, %150, %136
  %226 = call i32 @free_extent_refs(i32* %18)
  %227 = load i64, i64* %14, align 8
  store i64 %227, i64* %7, align 8
  br label %228

228:                                              ; preds = %225, %73, %58, %36
  %229 = load i64, i64* %7, align 8
  ret i64 %229
}

declare dso_local i32 @InitializeListHead(i32*) #1

declare dso_local i64 @find_item(%struct.TYPE_22__*, i32, %struct.TYPE_21__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @delete_tree_item(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @find_next_item(%struct.TYPE_22__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @add_tree_block_extent_ref(i32*, i32) #1

declare dso_local i64 @add_shared_block_extent_ref(i32*, i64) #1

declare dso_local i64 @add_shared_data_extent_ref(i32*, i64, i32) #1

declare dso_local i64 @construct_extent_item(%struct.TYPE_22__*, i64, i64, i32, i32*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @free_extent_refs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
