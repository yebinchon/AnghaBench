; ModuleID = '/home/carl/AnghaBench/reactos/drivers/ksfilter/ks/extr_filter.c_IKsFilter_CreateDescriptors.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/ksfilter/ks/extr_filter.c_IKsFilter_CreateDescriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32*, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"IKsFilter_CreateDescriptors _KsEdit failed %lx\0A\00", align 1
@NonPagedPool = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"IKsFilter_CreateDescriptors OutOfMemory TopologyNodesCount %lu\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"NodeDescriptorCount %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Index %lu Type %p Name %p\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IKsFilter_CreateDescriptors(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 6
  store i32 %17, i32* %20, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  store i64 %41, i64* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %198

49:                                               ; preds = %2
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = icmp eq i64 %57, 4
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = call i32 @_KsEdit(i32 %64, i32* %69, i32 %76, i32 %83, i32 0)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @NT_SUCCESS(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %49
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %395

93:                                               ; preds = %49
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 4
  %100 = bitcast i32** %99 to i32*
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = mul i64 8, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @_KsEdit(i32 %97, i32* %100, i32 %106, i32 %112, i32 0)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @NT_SUCCESS(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %93
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %395

122:                                              ; preds = %93
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = bitcast i32** %128 to i32*
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = trunc i64 %134 to i32
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @_KsEdit(i32 %126, i32* %129, i32 %135, i32 %141, i32 0)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @NT_SUCCESS(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %122
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %395

151:                                              ; preds = %122
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %163, %166
  %168 = call i32 @RtlMoveMemory(i32 %157, i32 %160, i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 2
  %175 = bitcast i32** %174 to i32*
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = mul i64 4, %185
  %187 = trunc i64 %186 to i32
  %188 = call i32 @_KsEdit(i32 %172, i32* %175, i32 %181, i32 %187, i32 0)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @NT_SUCCESS(i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %151
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %194)
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %3, align 4
  br label %395

197:                                              ; preds = %151
  br label %198

198:                                              ; preds = %197, %2
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %248

203:                                              ; preds = %198
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = bitcast i64* %212 to i32*
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = call i32 @_KsEdit(i32 %207, i32* %213, i32 %219, i32 %225, i32 0)
  store i32 %226, i32* %7, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 4
  store i64 %232, i64* %235, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = bitcast %struct.TYPE_10__* %242 to %struct.TYPE_14__*
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  store i32 %238, i32* %244, align 4
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 1
  store i32 %238, i32* %247, align 4
  br label %248

248:                                              ; preds = %203, %198
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %393

253:                                              ; preds = %248
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ASSERT(i32 %256)
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = icmp uge i64 %261, 4
  %263 = zext i1 %262 to i32
  %264 = call i32 @ASSERT(i32 %263)
  %265 = load i32, i32* @NonPagedPool, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = mul i64 4, %269
  %271 = trunc i64 %270 to i32
  %272 = call i8* @AllocateItem(i32 %265, i32 %271)
  %273 = bitcast i8* %272 to i32*
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  store i32* %273, i32** %276, align 8
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  %280 = load i32*, i32** %279, align 8
  %281 = icmp ne i32* %280, null
  br i1 %281, label %289, label %282

282:                                              ; preds = %253
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %286)
  %288 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %288, i32* %3, align 4
  br label %395

289:                                              ; preds = %253
  %290 = load i32, i32* @NonPagedPool, align 4
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = mul i64 4, %294
  %296 = trunc i64 %295 to i32
  %297 = call i8* @AllocateItem(i32 %290, i32 %296)
  %298 = bitcast i8* %297 to i32*
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 2
  store i32* %298, i32** %301, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %320, label %307

307:                                              ; preds = %289
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 3
  %311 = load i32*, i32** %310, align 8
  %312 = ptrtoint i32* %311 to i32
  %313 = call i32 @FreeItem(i32 %312)
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %317)
  %319 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %319, i32* %3, align 4
  br label %395

320:                                              ; preds = %289
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = sext i32 %323 to i64
  %325 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %324)
  %326 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %327 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %326, i32 0, i32 5
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = inttoptr i64 %329 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %330, %struct.TYPE_13__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %331

331:                                              ; preds = %389, %320
  %332 = load i64, i64* %6, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = icmp ult i64 %332, %336
  br i1 %337, label %338, label %392

338:                                              ; preds = %331
  %339 = load i64, i64* %6, align 8
  %340 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %344 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %339, i32 %342, i32 %345)
  %347 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %338
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 3
  %355 = load i32*, i32** %354, align 8
  %356 = load i64, i64* %6, align 8
  %357 = getelementptr inbounds i32, i32* %355, i64 %356
  %358 = ptrtoint i32* %357 to i32
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @RtlMoveMemory(i32 %358, i32 %361, i32 4)
  br label %363

363:                                              ; preds = %351, %338
  %364 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %380

368:                                              ; preds = %363
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %370, i32 0, i32 2
  %372 = load i32*, i32** %371, align 8
  %373 = load i64, i64* %6, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = ptrtoint i32* %374 to i32
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @RtlMoveMemory(i32 %375, i32 %378, i32 4)
  br label %380

380:                                              ; preds = %368, %363
  %381 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %382 = ptrtoint %struct.TYPE_13__* %381 to i32
  %383 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %383, i32 0, i32 6
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %382, %385
  %387 = sext i32 %386 to i64
  %388 = inttoptr i64 %387 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %388, %struct.TYPE_13__** %8, align 8
  br label %389

389:                                              ; preds = %380
  %390 = load i64, i64* %6, align 8
  %391 = add i64 %390, 1
  store i64 %391, i64* %6, align 8
  br label %331

392:                                              ; preds = %331
  br label %393

393:                                              ; preds = %392, %248
  %394 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %393, %307, %282, %192, %146, %117, %88
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @_KsEdit(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local i32 @RtlMoveMemory(i32, i32, i32) #1

declare dso_local i8* @AllocateItem(i32, i32) #1

declare dso_local i32 @FreeItem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
