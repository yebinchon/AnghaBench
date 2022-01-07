; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_callback.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_get_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8*, i64, %struct.TYPE_5__* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No such property '%s'\0A\00", align 1
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@ZPROP_SRC_RECEIVED = common dso_local global i32 0, align 4
@ZPROP_SRC_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %10, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @zfs_get_user_props(i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = call i64 @is_recvd_column(%struct.TYPE_6__* %35)
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %264, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %268

40:                                               ; preds = %37
  store i8* null, i8** %17, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZFS_PROP_NAME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp eq %struct.TYPE_5__* %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %264

53:                                               ; preds = %46, %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZPROP_INVAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %53
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %19 to i32
  %65 = trunc i64 %26 to i32
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @zfs_prop_get(i32* %60, i64 %63, i8* %21, i32 %64, i32* %8, i8* %27, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %59
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %264

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %82 = load i32, i32* @B_FALSE, align 4
  %83 = call i32 @zfs_prop_valid_for_type(i64 %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @stderr, align 4
  %87 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @zfs_prop_to_name(i64 %90)
  %92 = call i32 @fprintf(i32 %86, i8* %87, i8* %91)
  br label %264

93:                                               ; preds = %77
  %94 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %94, i32* %8, align 4
  %95 = trunc i64 %19 to i32
  %96 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %93, %59
  %98 = load i64, i64* %16, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32*, i32** %3, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @zfs_prop_to_name(i64 %104)
  %106 = trunc i64 %23 to i32
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @zfs_prop_get_recvd(i32* %101, i8* %105, i8* %24, i32 %106, i32 %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  store i8* %24, i8** %17, align 8
  br label %113

113:                                              ; preds = %112, %100, %97
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @zfs_get_name(i32* %114)
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @zfs_prop_to_name(i64 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i8*, i8** %17, align 8
  %123 = call i32 @zprop_print_one_property(i32 %115, %struct.TYPE_6__* %116, i8* %120, i8* %21, i32 %121, i8* %27, i8* %122)
  br label %263

124:                                              ; preds = %53
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @zfs_prop_userquota(i8* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %131, i32* %8, align 4
  %132 = load i32*, i32** %3, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = trunc i64 %19 to i32
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @zfs_prop_get_userquota(i32* %132, i8* %135, i8* %21, i32 %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %130
  %143 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %143, i32* %8, align 4
  %144 = trunc i64 %19 to i32
  %145 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %130
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @zfs_get_name(i32* %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @zprop_print_one_property(i32 %148, %struct.TYPE_6__* %149, i8* %152, i8* %21, i32 %153, i8* %27, i8* null)
  br label %262

155:                                              ; preds = %124
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i64 @zfs_prop_written(i8* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %155
  %162 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %162, i32* %8, align 4
  %163 = load i32*, i32** %3, align 8
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = trunc i64 %19 to i32
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @zfs_prop_get_written(i32* %163, i8* %166, i8* %21, i32 %167, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %161
  %174 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %174, i32* %8, align 4
  %175 = trunc i64 %19 to i32
  %176 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %173, %161
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @zfs_get_name(i32* %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @zprop_print_one_property(i32 %179, %struct.TYPE_6__* %180, i8* %183, i8* %21, i32 %184, i8* %27, i8* null)
  br label %261

186:                                              ; preds = %155
  %187 = load i32*, i32** %11, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = call i64 @nvlist_lookup_nvlist(i32* %187, i8* %190, i32** %13)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %264

199:                                              ; preds = %193
  %200 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %200, i32* %8, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %235

201:                                              ; preds = %186
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* @ZPROP_VALUE, align 4
  %204 = call i64 @nvlist_lookup_string(i32* %202, i32 %203, i8** %14)
  %205 = icmp eq i64 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @verify(i32 %206)
  %208 = load i32*, i32** %13, align 8
  %209 = load i32, i32* @ZPROP_SOURCE, align 4
  %210 = call i64 @nvlist_lookup_string(i32* %208, i32 %209, i8** %15)
  %211 = icmp eq i64 %210, 0
  %212 = zext i1 %211 to i32
  %213 = call i32 @verify(i32 %212)
  %214 = load i8*, i8** %15, align 8
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 @zfs_get_name(i32* %215)
  %217 = call i64 @strcmp(i8* %214, i32 %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %201
  %220 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %220, i32* %8, align 4
  br label %234

221:                                              ; preds = %201
  %222 = load i8*, i8** %15, align 8
  %223 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %224 = call i64 @strcmp(i8* %222, i32 %223)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* @ZPROP_SRC_RECEIVED, align 4
  store i32 %227, i32* %8, align 4
  br label %233

228:                                              ; preds = %221
  %229 = load i32, i32* @ZPROP_SRC_INHERITED, align 4
  store i32 %229, i32* %8, align 4
  %230 = load i8*, i8** %15, align 8
  %231 = trunc i64 %26 to i32
  %232 = call i32 @strlcpy(i8* %27, i8* %230, i32 %231)
  br label %233

233:                                              ; preds = %228, %226
  br label %234

234:                                              ; preds = %233, %219
  br label %235

235:                                              ; preds = %234, %199
  %236 = load i64, i64* %16, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %235
  %239 = load i32*, i32** %3, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = trunc i64 %23 to i32
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @zfs_prop_get_recvd(i32* %239, i8* %242, i8* %24, i32 %243, i32 %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  store i8* %24, i8** %17, align 8
  br label %250

250:                                              ; preds = %249, %238, %235
  %251 = load i32*, i32** %3, align 8
  %252 = call i32 @zfs_get_name(i32* %251)
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 1
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** %14, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load i8*, i8** %17, align 8
  %260 = call i32 @zprop_print_one_property(i32 %252, %struct.TYPE_6__* %253, i8* %256, i8* %257, i32 %258, i8* %27, i8* %259)
  br label %261

261:                                              ; preds = %250, %177
  br label %262

262:                                              ; preds = %261, %146
  br label %263

263:                                              ; preds = %262, %113
  br label %264

264:                                              ; preds = %263, %198, %85, %76, %52
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 3
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  store %struct.TYPE_5__* %267, %struct.TYPE_5__** %12, align 8
  br label %37

268:                                              ; preds = %37
  %269 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %269)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @zfs_get_user_props(i32*) #2

declare dso_local i64 @is_recvd_column(%struct.TYPE_6__*) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @zfs_prop_to_name(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @zfs_prop_get_recvd(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @zprop_print_one_property(i32, %struct.TYPE_6__*, i8*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @zfs_get_name(i32*) #2

declare dso_local i64 @zfs_prop_userquota(i8*) #2

declare dso_local i64 @zfs_prop_get_userquota(i32*, i8*, i8*, i32, i32) #2

declare dso_local i64 @zfs_prop_written(i8*) #2

declare dso_local i64 @zfs_prop_get_written(i32*, i8*, i8*, i32, i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
