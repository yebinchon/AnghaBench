; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_parse_value.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_util.c_zprop_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_POOL = common dso_local global i64 0, align 8
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"'%s' must be a string\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"'%s' is invalid\00", align 1
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"'%s' is too long\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"'%s' must be a number\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i64 0, align 8
@ZFS_PROP_QUOTA = common dso_local global i32 0, align 4
@ZFS_PROP_REFQUOTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"use 'none' to disable quota/refquota\00", align 1
@ZFS_PROP_FILESYSTEM_LIMIT = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"'%s=auto' only allowed on volumes\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"'auto' is invalid value for '%s'\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"'%s' must be one of '%s'\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zprop_parse_value(i32* %0, i32* %1, i32 %2, i64 %3, i32* %4, i8** %5, i32* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @nvpair_type(i32* %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @B_FALSE, align 4
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* @B_FALSE, align 4
  store i32 %28, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @ZFS_TYPE_POOL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @zpool_prop_get_type(i32 %33)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i8* @zpool_prop_to_name(i32 %35)
  store i8* %36, i8** %20, align 8
  br label %42

37:                                               ; preds = %8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @zfs_prop_get_type(i32 %38)
  store i32 %39, i32* %19, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i8* @zfs_prop_to_name(i32 %40)
  store i8* %41, i8** %20, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load i8**, i8*** %15, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32*, i32** %16, align 8
  store i32 0, i32* %44, align 4
  %45 = load i32, i32* %19, align 4
  switch i32 %45, label %231 [
    i32 129, label %46
    i32 130, label %84
    i32 131, label %201
  ]

46:                                               ; preds = %42
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @DATA_TYPE_STRING, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i32 @dgettext(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @nvpair_name(i32* %54)
  %56 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %51, i32 %53, i32 %55)
  br label %260

57:                                               ; preds = %46
  %58 = load i32*, i32** %11, align 8
  %59 = load i8**, i8*** %15, align 8
  %60 = call i32 @nvpair_value_string(i32* %58, i8** %59)
  store i32 %60, i32* %24, align 4
  %61 = load i32, i32* %24, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @TEXT_DOMAIN, align 4
  %66 = call i32 @dgettext(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @nvpair_name(i32* %67)
  %69 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %64, i32 %66, i32 %68)
  br label %260

70:                                               ; preds = %57
  %71 = load i8**, i8*** %15, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @TEXT_DOMAIN, align 4
  %79 = call i32 @dgettext(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @nvpair_name(i32* %80)
  %82 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %77, i32 %79, i32 %81)
  br label %260

83:                                               ; preds = %70
  br label %233

84:                                               ; preds = %42
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @DATA_TYPE_STRING, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @nvpair_value_string(i32* %89, i8** %21)
  %91 = load i8*, i8** %21, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @B_TRUE, align 4
  store i32 %95, i32* %22, align 4
  br label %111

96:                                               ; preds = %88
  %97 = load i8*, i8** %21, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @B_TRUE, align 4
  store i32 %101, i32* %23, align 4
  br label %110

102:                                              ; preds = %96
  %103 = load i32*, i32** %10, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = load i32*, i32** %16, align 8
  %106 = call i32 @zfs_nicestrtonum(i32* %103, i8* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %260

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %100
  br label %111

111:                                              ; preds = %110, %94
  br label %128

112:                                              ; preds = %84
  %113 = load i32, i32* %18, align 4
  %114 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32*, i32** %11, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @nvpair_value_uint64(i32* %117, i32* %118)
  br label %127

120:                                              ; preds = %112
  %121 = load i32*, i32** %10, align 8
  %122 = load i32, i32* @TEXT_DOMAIN, align 4
  %123 = call i32 @dgettext(i32 %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @nvpair_name(i32* %124)
  %126 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %121, i32 %123, i32 %125)
  br label %260

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %111
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @ZFS_TYPE_DATASET, align 8
  %131 = and i64 %129, %130
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %153

133:                                              ; preds = %128
  %134 = load i32*, i32** %16, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load i32, i32* %22, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @ZFS_PROP_QUOTA, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @ZFS_PROP_REFQUOTA, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144, %140
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* @TEXT_DOMAIN, align 4
  %151 = call i32 @dgettext(i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %152 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %149, i32 %151)
  br label %260

153:                                              ; preds = %144, %137, %133, %128
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* @ZFS_TYPE_DATASET, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @ZFS_PROP_FILESYSTEM_LIMIT, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165, %161
  %170 = load i32, i32* @UINT64_MAX, align 4
  %171 = load i32*, i32** %16, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %165, %158, %153
  %173 = load i32, i32* %23, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %200

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  switch i32 %176, label %192 [
    i32 128, label %177
  ]

177:                                              ; preds = %175
  %178 = load i64, i64* %13, align 8
  %179 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %180 = and i64 %178, %179
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32*, i32** %10, align 8
  %184 = load i32, i32* @TEXT_DOMAIN, align 4
  %185 = call i32 @dgettext(i32 %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @nvpair_name(i32* %186)
  %188 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %183, i32 %185, i32 %187)
  br label %260

189:                                              ; preds = %177
  %190 = load i32, i32* @UINT64_MAX, align 4
  %191 = load i32*, i32** %16, align 8
  store i32 %190, i32* %191, align 4
  br label %199

192:                                              ; preds = %175
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* @TEXT_DOMAIN, align 4
  %195 = call i32 @dgettext(i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %196 = load i32*, i32** %11, align 8
  %197 = call i32 @nvpair_name(i32* %196)
  %198 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %193, i32 %195, i32 %197)
  br label %260

199:                                              ; preds = %189
  br label %200

200:                                              ; preds = %199, %172
  br label %233

201:                                              ; preds = %42
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* @DATA_TYPE_STRING, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* @TEXT_DOMAIN, align 4
  %208 = call i32 @dgettext(i32 %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %209 = load i32*, i32** %11, align 8
  %210 = call i32 @nvpair_name(i32* %209)
  %211 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %206, i32 %208, i32 %210)
  br label %260

212:                                              ; preds = %201
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @nvpair_value_string(i32* %213, i8** %21)
  %215 = load i32, i32* %12, align 4
  %216 = load i8*, i8** %21, align 8
  %217 = load i32*, i32** %16, align 8
  %218 = load i64, i64* %13, align 8
  %219 = call i32 @zprop_string_to_index(i32 %215, i8* %216, i32* %217, i64 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %212
  %222 = load i32*, i32** %10, align 8
  %223 = load i32, i32* @TEXT_DOMAIN, align 4
  %224 = call i32 @dgettext(i32 %223, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %225 = load i8*, i8** %20, align 8
  %226 = load i32, i32* %12, align 4
  %227 = load i64, i64* %13, align 8
  %228 = call i32 @zprop_values(i32 %226, i64 %227)
  %229 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %222, i32 %224, i8* %225, i32 %228)
  br label %260

230:                                              ; preds = %212
  br label %233

231:                                              ; preds = %42
  %232 = call i32 (...) @abort() #3
  unreachable

233:                                              ; preds = %230, %200, %83
  %234 = load i8**, i8*** %15, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load i32*, i32** %14, align 8
  %239 = load i8*, i8** %20, align 8
  %240 = load i8**, i8*** %15, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @nvlist_add_string(i32* %238, i8* %239, i8* %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32*, i32** %10, align 8
  %246 = call i32 @no_memory(i32* %245)
  store i32 -1, i32* %9, align 4
  br label %265

247:                                              ; preds = %237
  br label %259

248:                                              ; preds = %233
  %249 = load i32*, i32** %14, align 8
  %250 = load i8*, i8** %20, align 8
  %251 = load i32*, i32** %16, align 8
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @nvlist_add_uint64(i32* %249, i8* %250, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %248
  %256 = load i32*, i32** %10, align 8
  %257 = call i32 @no_memory(i32* %256)
  store i32 -1, i32* %9, align 4
  br label %265

258:                                              ; preds = %248
  br label %259

259:                                              ; preds = %258, %247
  store i32 0, i32* %9, align 4
  br label %265

260:                                              ; preds = %221, %205, %192, %182, %148, %120, %108, %76, %63, %50
  %261 = load i32*, i32** %10, align 8
  %262 = load i32, i32* @EZFS_BADPROP, align 4
  %263 = load i8*, i8** %17, align 8
  %264 = call i32 @zfs_error(i32* %261, i32 %262, i8* %263)
  store i32 -1, i32* %9, align 4
  br label %265

265:                                              ; preds = %260, %259, %255, %244
  %266 = load i32, i32* %9, align 4
  ret i32 %266
}

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @zpool_prop_get_type(i32) #1

declare dso_local i8* @zpool_prop_to_name(i32) #1

declare dso_local i32 @zfs_prop_get_type(i32) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_nicestrtonum(i32*, i8*, i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @zprop_string_to_index(i32, i8*, i32*, i64) #1

declare dso_local i32 @zprop_values(i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @no_memory(i32*) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
