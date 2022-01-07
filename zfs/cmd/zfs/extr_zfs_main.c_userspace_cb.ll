; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_userspace_cb.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_userspace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64*, i64, i64, i64, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.group = type { i8* }
%struct.passwd = type { i8* }

@B_FALSE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@USTYPE_PSX_GRP = common dso_local global i32 0, align 4
@USTYPE_PSX_USR = common dso_local global i32 0, align 4
@USTYPE_PROJ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"smbentity\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@ZFS_PROP_USERUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPUSED = common dso_local global i64 0, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTUSED = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTQUOTA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@ZFS_PROP_USEROBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJUSED = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJUSED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"objused\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"objquota\00", align 1
@ZFS_PROP_USEROBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPOBJQUOTA = common dso_local global i64 0, align 8
@ZFS_PROP_PROJECTOBJQUOTA = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@USTYPE_SMB_GRP = common dso_local global i32 0, align 4
@USTYPE_SMB_USR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @userspace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_cb(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_11__, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.group*, align 8
  %33 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %10, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %16, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %17, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %21, align 8
  store i32 0, i32* %22, align 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %49 = load i32*, i32** %21, align 8
  %50 = ptrtoint i32* %49 to i64
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %51, align 8
  %56 = load i32, i32* @B_FALSE, align 4
  store i32 %56, i32* %31, align 4
  %57 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %58 = call i64 @nvlist_alloc(i32** %19, i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %4
  %61 = call i32 (...) @nomem()
  br label %62

62:                                               ; preds = %60, %4
  %63 = call %struct.TYPE_12__* @safe_malloc(i32 16)
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %15, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @uu_avl_node_init(%struct.TYPE_12__* %64, i32* %66, i32* %67)
  %69 = load i32*, i32** %19, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %62
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = load i32*, i32** %19, align 8
  %82 = call i32 @nvlist_free(i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %84 = call i32 @free(%struct.TYPE_12__* %83)
  store i32 -1, i32* %5, align 4
  br label %420

85:                                               ; preds = %74, %62
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %143

99:                                               ; preds = %93, %90, %85
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @zfs_prop_is_group(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* @USTYPE_PSX_GRP, align 4
  store i32 %104, i32* %22, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %8, align 4
  %111 = call %struct.group* @getgrgid(i32 %110)
  store %struct.group* %111, %struct.group** %32, align 8
  %112 = icmp ne %struct.group* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.group*, %struct.group** %32, align 8
  %115 = getelementptr inbounds %struct.group, %struct.group* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  store i8* %116, i8** %12, align 8
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %103
  br label %142

119:                                              ; preds = %99
  %120 = load i64, i64* %11, align 8
  %121 = call i64 @zfs_prop_is_user(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load i32, i32* @USTYPE_PSX_USR, align 4
  store i32 %124, i32* %22, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = call %struct.passwd* @getpwuid(i32 %130)
  store %struct.passwd* %131, %struct.passwd** %33, align 8
  %132 = icmp ne %struct.passwd* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load %struct.passwd*, %struct.passwd** %33, align 8
  %135 = getelementptr inbounds %struct.passwd, %struct.passwd* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %12, align 8
  br label %137

137:                                              ; preds = %133, %129
  br label %138

138:                                              ; preds = %137, %123
  br label %141

139:                                              ; preds = %119
  %140 = load i32, i32* @USTYPE_PROJ, align 4
  store i32 %140, i32* %22, align 4
  br label %141

141:                                              ; preds = %139, %138
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %93
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i32*, i32** %19, align 8
  %150 = load i32, i32* %31, align 4
  %151 = call i64 @nvlist_add_boolean_value(i32* %149, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (...) @nomem()
  br label %155

155:                                              ; preds = %153, %148, %143
  %156 = load i32, i32* %22, align 4
  %157 = call i8* @us_type2str(i32 %156)
  store i8* %157, i8** %23, align 8
  %158 = load i8*, i8** %23, align 8
  %159 = call i8* @gettext(i8* %158)
  %160 = call i64 @strlen(i8* %159)
  store i64 %160, i64* %25, align 8
  %161 = call i32 @us_field_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %161, i32* %27, align 4
  %162 = load i64, i64* %25, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %27, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ugt i64 %162, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %155
  %172 = load i64, i64* %25, align 8
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  store i64 %172, i64* %178, align 8
  br label %179

179:                                              ; preds = %171, %155
  %180 = load i32*, i32** %19, align 8
  %181 = load i32, i32* %22, align 4
  %182 = call i64 @nvlist_add_uint32(i32* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 (...) @nomem()
  br label %186

186:                                              ; preds = %184, %179
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %191, %186
  %197 = load i8*, i8** %12, align 8
  %198 = icmp eq i8* %197, null
  br i1 %198, label %199, label %209

199:                                              ; preds = %196, %191
  %200 = load i32*, i32** %19, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i64 @nvlist_add_uint64(i32* %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = call i32 (...) @nomem()
  br label %206

206:                                              ; preds = %204, %199
  %207 = load i32, i32* %8, align 4
  %208 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* null, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store i64 %208, i64* %24, align 8
  br label %219

209:                                              ; preds = %196
  %210 = load i32*, i32** %19, align 8
  %211 = load i8*, i8** %12, align 8
  %212 = call i64 @nvlist_add_string(i32* %210, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = call i32 (...) @nomem()
  br label %216

216:                                              ; preds = %214, %209
  %217 = load i8*, i8** %12, align 8
  %218 = call i64 @strlen(i8* %217)
  store i64 %218, i64* %24, align 8
  br label %219

219:                                              ; preds = %216, %206
  %220 = call i32 @us_field_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %220, i32* %28, align 4
  %221 = load i32, i32* %28, align 4
  %222 = icmp sge i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %219
  %224 = load i64, i64* %24, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %28, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = icmp ugt i64 %224, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %223
  %234 = load i64, i64* %24, align 8
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i64*, i64** %236, align 8
  %238 = load i32, i32* %28, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i64, i64* %237, i64 %239
  store i64 %234, i64* %240, align 8
  br label %241

241:                                              ; preds = %233, %223, %219
  %242 = load i32*, i32** %17, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %244 = call %struct.TYPE_12__* @uu_avl_find(i32* %242, %struct.TYPE_12__* %243, %struct.TYPE_11__* %30, i32* %18)
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %20, align 8
  %245 = icmp eq %struct.TYPE_12__* %244, null
  br i1 %245, label %246, label %251

246:                                              ; preds = %241
  %247 = load i32*, i32** %17, align 8
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @uu_avl_insert(i32* %247, %struct.TYPE_12__* %248, i32 %249)
  br label %260

251:                                              ; preds = %241
  %252 = load i32*, i32** %19, align 8
  %253 = call i32 @nvlist_free(i32* %252)
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %255 = call i32 @free(%struct.TYPE_12__* %254)
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %256, %struct.TYPE_12__** %15, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  store i32* %259, i32** %19, align 8
  br label %260

260:                                              ; preds = %251, %246
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %298

265:                                              ; preds = %260
  %266 = load i64, i64* %11, align 8
  %267 = load i64, i64* @ZFS_PROP_USERUSED, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %289, label %269

269:                                              ; preds = %265
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %289, label %273

273:                                              ; preds = %269
  %274 = load i64, i64* %11, align 8
  %275 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %289, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %11, align 8
  %279 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %289, label %281

281:                                              ; preds = %277
  %282 = load i64, i64* %11, align 8
  %283 = load i64, i64* @ZFS_PROP_PROJECTUSED, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %11, align 8
  %287 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %288 = icmp eq i64 %286, %287
  br i1 %288, label %289, label %293

289:                                              ; preds = %285, %281, %277, %273, %269, %265
  %290 = load i32, i32* %9, align 4
  %291 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %292 = call i32 @zfs_nicebytes(i32 %290, i8* %291, i32 32)
  br label %297

293:                                              ; preds = %285
  %294 = load i32, i32* %9, align 4
  %295 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %296 = call i32 @zfs_nicenum(i32 %294, i8* %295, i32 32)
  br label %297

297:                                              ; preds = %293, %289
  br label %302

298:                                              ; preds = %260
  %299 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %300 = load i32, i32* %9, align 4
  %301 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %299, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %298, %297
  %303 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %304 = call i64 @strlen(i8* %303)
  store i64 %304, i64* %26, align 8
  %305 = load i64, i64* %11, align 8
  %306 = load i64, i64* @ZFS_PROP_USERUSED, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %316, label %308

308:                                              ; preds = %302
  %309 = load i64, i64* %11, align 8
  %310 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = load i64, i64* %11, align 8
  %314 = load i64, i64* @ZFS_PROP_PROJECTUSED, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %324

316:                                              ; preds = %312, %308, %302
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  %317 = load i32*, i32** %19, align 8
  %318 = call i32 @nvlist_exists(i32* %317, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = load i32*, i32** %19, align 8
  %322 = call i64 @nvlist_add_uint64(i32* %321, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %323

323:                                              ; preds = %320, %316
  br label %388

324:                                              ; preds = %312
  %325 = load i64, i64* %11, align 8
  %326 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %336, label %328

328:                                              ; preds = %324
  %329 = load i64, i64* %11, align 8
  %330 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %336, label %332

332:                                              ; preds = %328
  %333 = load i64, i64* %11, align 8
  %334 = load i64, i64* @ZFS_PROP_PROJECTQUOTA, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %332, %328, %324
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  %337 = load i32*, i32** %19, align 8
  %338 = call i32 @nvlist_exists(i32* %337, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %343, label %340

340:                                              ; preds = %336
  %341 = load i32*, i32** %19, align 8
  %342 = call i64 @nvlist_add_uint64(i32* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  br label %343

343:                                              ; preds = %340, %336
  br label %387

344:                                              ; preds = %332
  %345 = load i64, i64* %11, align 8
  %346 = load i64, i64* @ZFS_PROP_USEROBJUSED, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %356, label %348

348:                                              ; preds = %344
  %349 = load i64, i64* %11, align 8
  %350 = load i64, i64* @ZFS_PROP_GROUPOBJUSED, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %356, label %352

352:                                              ; preds = %348
  %353 = load i64, i64* %11, align 8
  %354 = load i64, i64* @ZFS_PROP_PROJECTOBJUSED, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %364

356:                                              ; preds = %352, %348, %344
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  %357 = load i32*, i32** %19, align 8
  %358 = call i32 @nvlist_exists(i32* %357, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %356
  %361 = load i32*, i32** %19, align 8
  %362 = call i64 @nvlist_add_uint64(i32* %361, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %363

363:                                              ; preds = %360, %356
  br label %386

364:                                              ; preds = %352
  %365 = load i64, i64* %11, align 8
  %366 = load i64, i64* @ZFS_PROP_USEROBJQUOTA, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %376, label %368

368:                                              ; preds = %364
  %369 = load i64, i64* %11, align 8
  %370 = load i64, i64* @ZFS_PROP_GROUPOBJQUOTA, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %376, label %372

372:                                              ; preds = %368
  %373 = load i64, i64* %11, align 8
  %374 = load i64, i64* @ZFS_PROP_PROJECTOBJQUOTA, align 8
  %375 = icmp eq i64 %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %372, %368, %364
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  %377 = load i32*, i32** %19, align 8
  %378 = call i32 @nvlist_exists(i32* %377, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %383, label %380

380:                                              ; preds = %376
  %381 = load i32*, i32** %19, align 8
  %382 = call i64 @nvlist_add_uint64(i32* %381, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %383

383:                                              ; preds = %380, %376
  br label %385

384:                                              ; preds = %372
  store i32 -1, i32* %5, align 4
  br label %420

385:                                              ; preds = %383
  br label %386

386:                                              ; preds = %385, %363
  br label %387

387:                                              ; preds = %386, %343
  br label %388

388:                                              ; preds = %387, %323
  %389 = load i8*, i8** %13, align 8
  %390 = call i32 @us_field_index(i8* %389)
  store i32 %390, i32* %29, align 4
  %391 = load i32, i32* %29, align 4
  %392 = icmp sge i32 %391, 0
  br i1 %392, label %393, label %411

393:                                              ; preds = %388
  %394 = load i64, i64* %26, align 8
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 1
  %397 = load i64*, i64** %396, align 8
  %398 = load i32, i32* %29, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = icmp ugt i64 %394, %401
  br i1 %402, label %403, label %411

403:                                              ; preds = %393
  %404 = load i64, i64* %26, align 8
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 1
  %407 = load i64*, i64** %406, align 8
  %408 = load i32, i32* %29, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64, i64* %407, i64 %409
  store i64 %404, i64* %410, align 8
  br label %411

411:                                              ; preds = %403, %393, %388
  %412 = load i32*, i32** %19, align 8
  %413 = load i8*, i8** %13, align 8
  %414 = load i32, i32* %9, align 4
  %415 = call i64 @nvlist_add_uint64(i32* %412, i8* %413, i32 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %419

417:                                              ; preds = %411
  %418 = call i32 (...) @nomem()
  br label %419

419:                                              ; preds = %417, %411
  store i32 0, i32* %5, align 4
  br label %420

420:                                              ; preds = %419, %384, %80
  %421 = load i32, i32* %5, align 4
  ret i32 %421
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local %struct.TYPE_12__* @safe_malloc(i32) #1

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i64 @zfs_prop_is_group(i64) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i64 @zfs_prop_is_user(i64) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @nvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i8* @us_type2str(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @us_field_index(i8*) #1

declare dso_local i64 @nvlist_add_uint32(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @uu_avl_find(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @uu_avl_insert(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @zfs_nicebytes(i32, i8*, i32) #1

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
