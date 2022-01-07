; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_expand_proplist.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_expand_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i32*, i64, %struct.TYPE_11__*, i64 }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_expand_proplist(%struct.TYPE_12__* %0, %struct.TYPE_11__** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__**, align 8
  %13 = alloca %struct.TYPE_11__**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %30 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %31 = call i64 @zprop_expand_list(i32* %28, %struct.TYPE_11__** %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %249

34:                                               ; preds = %4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = call i32* @zfs_get_user_props(%struct.TYPE_12__* %35)
  store i32* %36, i32** %14, align 8
  %37 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %11, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %127

43:                                               ; preds = %34
  %44 = load i32*, i32** %14, align 8
  %45 = call i32* @nvlist_next_nvpair(i32* %44, i32* null)
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %127

47:                                               ; preds = %43
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__** %48, %struct.TYPE_11__*** %13, align 8
  br label %49

49:                                               ; preds = %61, %47
  %50 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = icmp ne %struct.TYPE_11__* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZPROP_INVAL, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 5
  store %struct.TYPE_11__** %64, %struct.TYPE_11__*** %13, align 8
  br label %49

65:                                               ; preds = %60, %49
  store i32* null, i32** %16, align 8
  br label %66

66:                                               ; preds = %125, %65
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i32* @nvlist_next_nvpair(i32* %67, i32* %68)
  store i32* %69, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %126

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %13, align 8
  store %struct.TYPE_11__** %72, %struct.TYPE_11__*** %12, align 8
  br label %73

73:                                               ; preds = %88, %71
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = icmp ne %struct.TYPE_11__* %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i8* @nvpair_name(i32* %82)
  %84 = call i64 @strcmp(i32* %81, i8* %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %92

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 5
  store %struct.TYPE_11__** %91, %struct.TYPE_11__*** %12, align 8
  br label %73

92:                                               ; preds = %86, %73
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = icmp eq %struct.TYPE_11__* %94, null
  br i1 %95, label %96, label %125

96:                                               ; preds = %92
  %97 = load i32*, i32** %10, align 8
  %98 = call %struct.TYPE_11__* @zfs_alloc(i32* %97, i32 56)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %11, align 8
  %99 = icmp eq %struct.TYPE_11__* %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %10, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = call i8* @nvpair_name(i32* %102)
  %104 = call i32* @zfs_strdup(i32* %101, i8* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = icmp eq i32* %104, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %100, %96
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %110 = call i32 @free(%struct.TYPE_11__* %109)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %249

111:                                              ; preds = %100
  %112 = load i64, i64* @ZPROP_INVAL, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i8* @nvpair_name(i32* %115)
  %117 = call i64 @strlen(i8* %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* @B_TRUE, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 6
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %124 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %124, align 8
  br label %125

125:                                              ; preds = %111, %92
  br label %66

126:                                              ; preds = %66
  br label %127

127:                                              ; preds = %126, %43, %34
  %128 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %11, align 8
  br label %130

130:                                              ; preds = %244, %127
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %133, label %248

133:                                              ; preds = %130
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i64, i64* %9, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  br label %244

142:                                              ; preds = %138, %133
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ZPROP_INVAL, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %193

148:                                              ; preds = %142
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %25 to i32
  %154 = load i64, i64* %9, align 8
  %155 = call i64 @zfs_prop_get(%struct.TYPE_12__* %149, i64 %152, i8* %27, i32 %153, i32* null, i32* null, i32 0, i64 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %148
  %158 = call i64 @strlen(i8* %27)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = call i64 @strlen(i8* %27)
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %163, %157
  br label %168

168:                                              ; preds = %167, %148
  %169 = load i64, i64* %8, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32* @zfs_prop_to_name(i64 %175)
  %177 = trunc i64 %25 to i32
  %178 = load i64, i64* %9, align 8
  %179 = call i64 @zfs_prop_get_recvd(%struct.TYPE_12__* %172, i32* %176, i8* %27, i32 %177, i64 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %171
  %182 = call i64 @strlen(i8* %27)
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %182, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = call i64 @strlen(i8* %27)
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %181
  br label %192

192:                                              ; preds = %191, %171, %168
  br label %243

193:                                              ; preds = %142
  %194 = load i32*, i32** %14, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  %197 = load i32*, i32** %196, align 8
  %198 = call i64 @nvlist_lookup_nvlist(i32* %194, i32* %197, i32** %15)
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %219

200:                                              ; preds = %193
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* @ZPROP_VALUE, align 4
  %203 = call i64 @nvlist_lookup_string(i32* %201, i32 %202, i8** %17)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @verify(i32 %205)
  %207 = load i8*, i8** %17, align 8
  %208 = call i64 @strlen(i8* %207)
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %208, %211
  br i1 %212, label %213, label %218

213:                                              ; preds = %200
  %214 = load i8*, i8** %17, align 8
  %215 = call i64 @strlen(i8* %214)
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %213, %200
  br label %219

219:                                              ; preds = %218, %193
  %220 = load i64, i64* %8, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %242

222:                                              ; preds = %219
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 3
  %226 = load i32*, i32** %225, align 8
  %227 = trunc i64 %25 to i32
  %228 = load i64, i64* %9, align 8
  %229 = call i64 @zfs_prop_get_recvd(%struct.TYPE_12__* %223, i32* %226, i8* %27, i32 %227, i64 %228)
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %222
  %232 = call i64 @strlen(i8* %27)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %232, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %231
  %238 = call i64 @strlen(i8* %27)
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 2
  store i64 %238, i64* %240, align 8
  br label %241

241:                                              ; preds = %237, %231
  br label %242

242:                                              ; preds = %241, %222, %219
  br label %243

243:                                              ; preds = %242, %192
  br label %244

244:                                              ; preds = %243, %141
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 5
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  store %struct.TYPE_11__* %247, %struct.TYPE_11__** %11, align 8
  br label %130

248:                                              ; preds = %130
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %249

249:                                              ; preds = %248, %108, %33
  %250 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zprop_expand_list(i32*, %struct.TYPE_11__**, i32) #2

declare dso_local i32* @zfs_get_user_props(%struct.TYPE_12__*) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local %struct.TYPE_11__* @zfs_alloc(i32*, i32) #2

declare dso_local i32* @zfs_strdup(i32*, i8*) #2

declare dso_local i32 @free(%struct.TYPE_11__*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @zfs_prop_get(%struct.TYPE_12__*, i64, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i64 @zfs_prop_get_recvd(%struct.TYPE_12__*, i32*, i8*, i32, i64) #2

declare dso_local i32* @zfs_prop_to_name(i64) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32*, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
