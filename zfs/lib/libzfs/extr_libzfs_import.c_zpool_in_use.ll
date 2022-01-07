; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_zpool_in_use.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_import.c_zpool_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@POOL_STATE_POTENTIALLY_ACTIVE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@find_aux = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_in_use(i32* %0, i32 %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = bitcast %struct.TYPE_3__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i64, i64* @B_FALSE, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @zpool_read_label(i32 %27, i32** %12, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @no_memory(i32* %31)
  store i32 -1, i32* %6, align 4
  br label %228

33:                                               ; preds = %5
  %34 = load i32*, i32** %12, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %228

37:                                               ; preds = %33
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %40 = call i64 @nvlist_lookup_uint64(i32* %38, i32 %39, i32* %19)
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @verify(i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %46 = call i64 @nvlist_lookup_uint64(i32* %44, i32 %45, i32* %16)
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @verify(i32 %48)
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 128
  br i1 %51, label %52, label %68

52:                                               ; preds = %37
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 129
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %58 = call i64 @nvlist_lookup_string(i32* %56, i32 %57, i8** %13)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @verify(i32 %60)
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %64 = call i64 @nvlist_lookup_uint64(i32* %62, i32 %63, i32* %15)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @verify(i32 %66)
  br label %68

68:                                               ; preds = %55, %52, %37
  %69 = load i32, i32* %19, align 4
  switch i32 %69, label %189 [
    i32 130, label %70
    i32 131, label %95
    i32 128, label %151
    i32 129, label %170
  ]

70:                                               ; preds = %68
  %71 = load i32*, i32** %7, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @pool_active(i32* %71, i8* %72, i32 %73, i64* %22)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %70
  %77 = load i64, i64* %22, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32*, i32** %7, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = call i32* @zpool_open_canfail(i32* %80, i8* %81)
  store i32* %82, i32** %17, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i32*, i32** %17, align 8
  %86 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %87 = call i32 @zpool_get_prop_int(i32* %85, i32 %86, i32* null)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 131, i32* %19, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @zpool_close(i32* %91)
  br label %93

93:                                               ; preds = %90, %79, %76, %70
  %94 = load i64, i64* @B_TRUE, align 8
  store i64 %94, i64* %14, align 8
  br label %191

95:                                               ; preds = %68
  %96 = load i32*, i32** %7, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @pool_active(i32* %96, i8* %97, i32 %98, i64* %22)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32*, i32** %12, align 8
  %103 = call i32 @nvlist_free(i32* %102)
  store i32 -1, i32* %6, align 4
  br label %228

104:                                              ; preds = %95
  %105 = load i64, i64* %22, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %147

107:                                              ; preds = %104
  %108 = load i32*, i32** %7, align 8
  %109 = load i8*, i8** %13, align 8
  %110 = call i32* @zpool_open_canfail(i32* %108, i8* %109)
  store i32* %110, i32** %17, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %126

112:                                              ; preds = %107
  %113 = load i32*, i32** %17, align 8
  %114 = call i32* @zpool_get_config(i32* %113, i32* null)
  store i32* %114, i32** %18, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = load i32*, i32** %18, align 8
  %118 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %119 = call i32 @nvlist_lookup_nvlist(i32* %117, i32 %118, i32** %23)
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @verify(i32 %121)
  %123 = load i32*, i32** %23, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call i64 @find_guid(i32* %123, i32 %124)
  store i64 %125, i64* %14, align 8
  br label %128

126:                                              ; preds = %112, %107
  %127 = load i64, i64* @B_FALSE, align 8
  store i64 %127, i64* %14, align 8
  br label %128

128:                                              ; preds = %126, %116
  %129 = load i64, i64* %14, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %134 = call i64 @nvlist_lookup_uint64(i32* %132, i32 %133, i32* %20)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %20, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 128, i32* %19, align 4
  br label %140

140:                                              ; preds = %139, %136, %131, %128
  %141 = load i32*, i32** %17, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32*, i32** %17, align 8
  %145 = call i32 @zpool_close(i32* %144)
  br label %146

146:                                              ; preds = %143, %140
  br label %150

147:                                              ; preds = %104
  %148 = load i32, i32* @POOL_STATE_POTENTIALLY_ACTIVE, align 4
  store i32 %148, i32* %19, align 4
  %149 = load i64, i64* @B_TRUE, align 8
  store i64 %149, i64* %14, align 8
  br label %150

150:                                              ; preds = %147, %146
  br label %191

151:                                              ; preds = %68
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32* null, i32** %152, align 8
  %153 = load i32, i32* %16, align 4
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %153, i32* %154, align 8
  %155 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %155, i32* %156, align 8
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* @find_aux, align 4
  %159 = call i32 @zpool_iter(i32* %157, i32 %158, %struct.TYPE_3__* %21)
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %161, label %167

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i64 @zpool_get_name(i32* %163)
  %165 = inttoptr i64 %164 to i8*
  store i8* %165, i8** %13, align 8
  %166 = load i64, i64* @B_TRUE, align 8
  store i64 %166, i64* %14, align 8
  br label %169

167:                                              ; preds = %151
  %168 = load i64, i64* @B_FALSE, align 8
  store i64 %168, i64* %14, align 8
  br label %169

169:                                              ; preds = %167, %161
  br label %191

170:                                              ; preds = %68
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32* null, i32** %171, align 8
  %172 = load i32, i32* %16, align 4
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %172, i32* %173, align 8
  %174 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %174, i32* %175, align 8
  %176 = load i32*, i32** %7, align 8
  %177 = load i32, i32* @find_aux, align 4
  %178 = call i32 @zpool_iter(i32* %176, i32 %177, %struct.TYPE_3__* %21)
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %186

180:                                              ; preds = %170
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @zpool_get_name(i32* %182)
  %184 = inttoptr i64 %183 to i8*
  store i8* %184, i8** %13, align 8
  %185 = load i64, i64* @B_TRUE, align 8
  store i64 %185, i64* %14, align 8
  br label %188

186:                                              ; preds = %170
  %187 = load i64, i64* @B_FALSE, align 8
  store i64 %187, i64* %14, align 8
  br label %188

188:                                              ; preds = %186, %180
  br label %191

189:                                              ; preds = %68
  %190 = load i64, i64* @B_FALSE, align 8
  store i64 %190, i64* %14, align 8
  br label %191

191:                                              ; preds = %189, %188, %169, %150, %93
  %192 = load i64, i64* %14, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %215

194:                                              ; preds = %191
  %195 = load i32*, i32** %7, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = call i8* @zfs_strdup(i32* %195, i8* %196)
  %198 = load i8**, i8*** %10, align 8
  store i8* %197, i8** %198, align 8
  %199 = icmp eq i8* %197, null
  br i1 %199, label %200, label %211

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @zpool_close(i32* %206)
  br label %208

208:                                              ; preds = %204, %200
  %209 = load i32*, i32** %12, align 8
  %210 = call i32 @nvlist_free(i32* %209)
  store i32 -1, i32* %6, align 4
  br label %228

211:                                              ; preds = %194
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64*, i64** %9, align 8
  store i64 %213, i64* %214, align 8
  br label %215

215:                                              ; preds = %211, %191
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @zpool_close(i32* %221)
  br label %223

223:                                              ; preds = %219, %215
  %224 = load i32*, i32** %12, align 8
  %225 = call i32 @nvlist_free(i32* %224)
  %226 = load i64, i64* %14, align 8
  %227 = load i64*, i64** %11, align 8
  store i64 %226, i64* %227, align 8
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %223, %208, %101, %36, %30
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zpool_read_label(i32, i32**, i32*) #2

declare dso_local i32 @no_memory(i32*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @pool_active(i32*, i8*, i32, i64*) #2

declare dso_local i32* @zpool_open_canfail(i32*, i8*) #2

declare dso_local i32 @zpool_get_prop_int(i32*, i32, i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @find_guid(i32*, i32) #2

declare dso_local i32 @zpool_iter(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @zpool_get_name(i32*) #2

declare dso_local i8* @zfs_strdup(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
