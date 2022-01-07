; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_errlog.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_get_errlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zpool_get_errlog.zc = private unnamed_addr constant %struct.TYPE_8__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 0, i32 0, i32 0 }, align 8
@ZPOOL_CONFIG_ERRCOUNT = common dso_local global i32 0, align 4
@ZFS_IOC_ERROR_LOG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"errors: List of errors unavailable\00", align 1
@zbookmark_mem_compare = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_ERR_DATASET = common dso_local global i32 0, align 4
@ZPOOL_ERR_OBJECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ejk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_errlog(%struct.TYPE_7__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %13 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_8__* @__const.zpool_get_errlog.zc to i8*), i64 24, i1 false)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZPOOL_CONFIG_ERRCOUNT, align 4
  %21 = call i64 @nvlist_lookup_uint64(i32 %19, i32 %20, i32* %8)
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @verify(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %208

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 16
  %35 = trunc i64 %34 to i32
  %36 = call i8* @zfs_alloc(i32* %31, i32 %35)
  %37 = ptrtoint i8* %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcpy(i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %84, %28
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @ZFS_IOC_ERROR_LOG, align 4
  %52 = call i64 @zfs_ioctl(i32* %50, i32 %51, %struct.TYPE_8__* %6)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %83

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @free(i8* %57)
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @ENOMEM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 16
  %71 = trunc i64 %70 to i32
  %72 = call i8* @zfs_alloc(i32* %67, i32 %71)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = ptrtoint i8* %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  br label %82

76:                                               ; preds = %54
  %77 = load i32*, i32** %7, align 8
  %78 = load i64, i64* @errno, align 8
  %79 = load i32, i32* @TEXT_DOMAIN, align 4
  %80 = call i32 @dgettext(i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @zpool_standard_error_fmt(i32* %77, i64 %78, i32 %80)
  store i32 %81, i32* %3, align 4
  br label %208

82:                                               ; preds = %62
  br label %84

83:                                               ; preds = %47
  br label %85

84:                                               ; preds = %82
  br label %47

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_9__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %91
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @zbookmark_mem_compare, align 4
  %100 = call i32 @qsort(%struct.TYPE_9__* %97, i32 %98, i32 16, i32 %99)
  %101 = load i32**, i32*** %5, align 8
  %102 = load i32, i32* @KM_SLEEP, align 4
  %103 = call i64 @nvlist_alloc(i32** %101, i32 0, i32 %102)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @verify(i32 %105)
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %191, %85
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %194

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %121, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %114
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %191

145:                                              ; preds = %129, %114, %111
  %146 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %147 = load i32, i32* @KM_SLEEP, align 4
  %148 = call i64 @nvlist_alloc(i32** %12, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %199

151:                                              ; preds = %145
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* @ZPOOL_ERR_DATASET, align 4
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @nvlist_add_uint64(i32* %152, i32 %153, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = load i32*, i32** %12, align 8
  %164 = call i32 @nvlist_free(i32* %163)
  br label %199

165:                                              ; preds = %151
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* @ZPOOL_ERR_OBJECT, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @nvlist_add_uint64(i32* %166, i32 %167, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32*, i32** %12, align 8
  %178 = call i32 @nvlist_free(i32* %177)
  br label %199

179:                                              ; preds = %165
  %180 = load i32**, i32*** %5, align 8
  %181 = load i32*, i32** %180, align 8
  %182 = load i32*, i32** %12, align 8
  %183 = call i64 @nvlist_add_nvlist(i32* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32*, i32** %12, align 8
  %187 = call i32 @nvlist_free(i32* %186)
  br label %199

188:                                              ; preds = %179
  %189 = load i32*, i32** %12, align 8
  %190 = call i32 @nvlist_free(i32* %189)
  br label %191

191:                                              ; preds = %188, %144
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %10, align 4
  br label %107

194:                                              ; preds = %107
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @free(i8* %197)
  store i32 0, i32* %3, align 4
  br label %208

199:                                              ; preds = %185, %176, %162, %150
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = call i32 @free(i8* %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @no_memory(i32* %206)
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %199, %194, %76, %27
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32, i32, i32*) #2

declare dso_local i8* @zfs_alloc(i32*, i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i64 @zfs_ioctl(i32*, i32, %struct.TYPE_8__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @zpool_standard_error_fmt(i32*, i64, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @qsort(%struct.TYPE_9__*, i32, i32, i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @no_memory(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
