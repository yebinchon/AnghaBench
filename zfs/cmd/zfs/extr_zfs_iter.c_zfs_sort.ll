; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_iter.c_zfs_sort.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_iter.c_zfs_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @zfs_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_sort(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %9, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %10, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %11, align 8
  br label %38

38:                                               ; preds = %227, %3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %40 = icmp ne %struct.TYPE_3__* %39, null
  br i1 %40, label %41, label %231

41:                                               ; preds = %38
  %42 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %12, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %13, align 8
  %46 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %47 = zext i32 %46 to i64
  %48 = alloca i8, i64 %47, align 16
  store i64 %47, i64* %14, align 8
  store i32 0, i32* %21, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ZPROP_INVAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %41
  %55 = load i32*, i32** %8, align 8
  %56 = call i32* @zfs_get_user_props(i32* %55)
  store i32* %56, i32** %22, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32* @zfs_get_user_props(i32* %57)
  store i32* %58, i32** %23, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @nvlist_lookup_nvlist(i32* %59, i32 %62, i32** %24)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32*, i32** %23, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @nvlist_lookup_nvlist(i32* %66, i32 %69, i32** %25)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %54
  %76 = load i32*, i32** %24, align 8
  %77 = load i32, i32* @ZPROP_VALUE, align 4
  %78 = call i64 @nvlist_lookup_string(i32* %76, i32 %77, i8** %15)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @verify(i32 %80)
  br label %82

82:                                               ; preds = %75, %54
  %83 = load i32, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32*, i32** %25, align 8
  %87 = load i32, i32* @ZPROP_VALUE, align 4
  %88 = call i64 @nvlist_lookup_string(i32* %86, i32 %87, i8** %16)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @verify(i32 %90)
  br label %92

92:                                               ; preds = %85, %82
  br label %170

93:                                               ; preds = %41
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZFS_PROP_NAME, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %93
  %100 = load i64, i64* @B_TRUE, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %20, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @zfs_get_name(i32* %102)
  %104 = trunc i64 %43 to i32
  %105 = call i32 @strlcpy(i8* %45, i32 %103, i32 %104)
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @zfs_get_name(i32* %106)
  %108 = trunc i64 %47 to i32
  %109 = call i32 @strlcpy(i8* %48, i32 %107, i32 %108)
  store i8* %45, i8** %15, align 8
  store i8* %48, i8** %16, align 8
  br label %169

110:                                              ; preds = %93
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @zfs_prop_is_string(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %43 to i32
  %122 = load i64, i64* @B_TRUE, align 8
  %123 = call i64 @zfs_prop_get(i32* %117, i64 %120, i8* %45, i32 %121, i32* null, i32* null, i32 0, i64 %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %19, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %47 to i32
  %131 = load i64, i64* @B_TRUE, align 8
  %132 = call i64 @zfs_prop_get(i32* %126, i64 %129, i8* %48, i32 %130, i32* null, i32* null, i32 0, i64 %131)
  %133 = icmp eq i64 %132, 0
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %20, align 4
  store i8* %45, i8** %15, align 8
  store i8* %48, i8** %16, align 8
  br label %168

135:                                              ; preds = %110
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = call i32 @zfs_get_type(i32* %139)
  %141 = load i32, i32* @B_FALSE, align 4
  %142 = call i32 @zfs_prop_valid_for_type(i64 %138, i32 %140, i32 %141)
  store i32 %142, i32* %19, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @zfs_get_type(i32* %146)
  %148 = load i32, i32* @B_FALSE, align 4
  %149 = call i32 @zfs_prop_valid_for_type(i64 %145, i32 %147, i32 %148)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %135
  %153 = load i32*, i32** %8, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @zfs_prop_get_numeric(i32* %153, i64 %156, i64* %17, i32* null, i32* null, i32 0)
  br label %158

158:                                              ; preds = %152, %135
  %159 = load i32, i32* %20, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32*, i32** %9, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @zfs_prop_get_numeric(i32* %162, i64 %165, i64* %18, i32* null, i32* null, i32 0)
  br label %167

167:                                              ; preds = %161, %158
  br label %168

168:                                              ; preds = %167, %116
  br label %169

169:                                              ; preds = %168, %99
  br label %170

170:                                              ; preds = %169, %92
  %171 = load i32, i32* %19, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %20, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  store i32 4, i32* %26, align 4
  br label %223

177:                                              ; preds = %173, %170
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  store i32 1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %223

181:                                              ; preds = %177
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %223

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  %188 = load i8*, i8** %15, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i8*, i8** %15, align 8
  %192 = load i8*, i8** %16, align 8
  %193 = call i32 @strcmp(i8* %191, i8* %192)
  store i32 %193, i32* %21, align 4
  br label %206

194:                                              ; preds = %187
  %195 = load i64, i64* %17, align 8
  %196 = load i64, i64* %18, align 8
  %197 = icmp slt i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 -1, i32* %21, align 4
  br label %205

199:                                              ; preds = %194
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %18, align 8
  %202 = icmp sgt i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 1, i32* %21, align 4
  br label %204

204:                                              ; preds = %203, %199
  br label %205

205:                                              ; preds = %204, %198
  br label %206

206:                                              ; preds = %205, %190
  %207 = load i32, i32* %21, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @B_TRUE, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load i32, i32* %21, align 4
  %217 = icmp slt i32 %216, 0
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 1, i32 -1
  store i32 %219, i32* %21, align 4
  br label %220

220:                                              ; preds = %215, %209
  %221 = load i32, i32* %21, align 4
  store i32 %221, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %223

222:                                              ; preds = %206
  store i32 0, i32* %26, align 4
  br label %223

223:                                              ; preds = %222, %220, %184, %180, %176
  %224 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %26, align 4
  switch i32 %225, label %237 [
    i32 0, label %226
    i32 4, label %227
    i32 1, label %235
  ]

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %226, %223
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  store %struct.TYPE_3__* %230, %struct.TYPE_3__** %11, align 8
  br label %38

231:                                              ; preds = %38
  %232 = load i8*, i8** %5, align 8
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @zfs_compare(i8* %232, i8* %233, i32* null)
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %231, %223
  %236 = load i32, i32* %4, align 4
  ret i32 %236

237:                                              ; preds = %223
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @zfs_get_user_props(i32*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @zfs_get_name(i32*) #2

declare dso_local i64 @zfs_prop_is_string(i64) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i32*, i32*, i32, i64) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32, i32) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i32 @zfs_prop_get_numeric(i32*, i64, i64*, i32*, i32*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @zfs_compare(i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
