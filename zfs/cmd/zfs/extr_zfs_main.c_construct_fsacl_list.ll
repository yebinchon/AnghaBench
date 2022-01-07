; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_construct_fsacl_list.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_construct_fsacl_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allow_opts = type { i8*, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.passwd = type { i32 }
%struct.group = type { i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_DELEG_NAMED_SET = common dso_local global i32 0, align 4
@ZFS_DELEG_CREATE = common dso_local global i32 0, align 4
@ZFS_DELEG_EVERYONE = common dso_local global i32 0, align 4
@ZFS_DELEG_WHO_UNKNOWN = common dso_local global i32 0, align 4
@ZFS_DELEG_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"invalid user %s\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_DELEG_GROUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid group %s\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid user/group %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.allow_opts*, i32**)* @construct_fsacl_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @construct_fsacl_list(i32 %0, %struct.allow_opts* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.allow_opts*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca %struct.passwd*, align 8
  %16 = alloca %struct.group*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.allow_opts* %1, %struct.allow_opts** %5, align 8
  store i32** %2, i32*** %6, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %20 = call i64 @nvlist_alloc(i32** %18, i32 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i32 (...) @nomem()
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %26 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32, i32* @ZFS_DELEG_NAMED_SET, align 4
  %31 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %32 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %35 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %38 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %41 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @store_allow_perm(i32 %30, i32 %33, i32 %36, i8* %39, i32 %42, i32* %44)
  br label %256

46:                                               ; preds = %24
  %47 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %48 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, i32* @ZFS_DELEG_CREATE, align 4
  %53 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %54 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %57 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %60 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @store_allow_perm(i32 %52, i32 %55, i32 %58, i8* null, i32 %61, i32* %63)
  br label %255

65:                                               ; preds = %46
  %66 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %67 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load i32, i32* @ZFS_DELEG_EVERYONE, align 4
  %72 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %73 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %76 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %79 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32**, i32*** %6, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @store_allow_perm(i32 %71, i32 %74, i32 %77, i8* null, i32 %80, i32* %82)
  br label %254

84:                                               ; preds = %65
  %85 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %86 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %7, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @strlen(i8* %89)
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %232, %84
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp ult i8* %94, %95
  br i1 %96, label %97, label %253

97:                                               ; preds = %93
  %98 = load i32, i32* @ZFS_DELEG_WHO_UNKNOWN, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i8* @strchr(i8* %99, i8 signext 44)
  store i8* %100, i8** %12, align 8
  store %struct.passwd* null, %struct.passwd** %15, align 8
  store %struct.group* null, %struct.group** %16, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i8*, i8** %8, align 8
  store i8* %104, i8** %12, align 8
  br label %107

105:                                              ; preds = %97
  %106 = load i8*, i8** %12, align 8
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @strtol(i8* %108, i8** %11, i32 0)
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %112 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %107
  %116 = load i32, i32* @ZFS_DELEG_USER, align 4
  store i32 %116, i32* %10, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i8*, i8** %7, align 8
  %123 = call %struct.passwd* @getpwnam(i8* %122)
  store %struct.passwd* %123, %struct.passwd** %15, align 8
  br label %127

124:                                              ; preds = %115
  %125 = load i32, i32* %17, align 4
  %126 = call %struct.passwd* @getpwuid(i32 %125)
  store %struct.passwd* %126, %struct.passwd** %15, align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.passwd*, %struct.passwd** %15, align 8
  %129 = icmp ne %struct.passwd* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.passwd*, %struct.passwd** %15, align 8
  %132 = getelementptr inbounds %struct.passwd, %struct.passwd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %17, align 4
  br label %143

134:                                              ; preds = %127
  %135 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %136 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @snprintf(i8* %135, i32 256, i8* %136, i8* %137)
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @B_TRUE, align 4
  %141 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %142 = call i32 @allow_usage(i32 %139, i32 %140, i8* %141)
  br label %143

143:                                              ; preds = %134, %130
  br label %232

144:                                              ; preds = %107
  %145 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %146 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %178

149:                                              ; preds = %144
  %150 = load i32, i32* @ZFS_DELEG_GROUP, align 4
  store i32 %150, i32* %10, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i8*, i8** %7, align 8
  %157 = call %struct.group* @getgrnam(i8* %156)
  store %struct.group* %157, %struct.group** %16, align 8
  br label %161

158:                                              ; preds = %149
  %159 = load i32, i32* %17, align 4
  %160 = call %struct.group* @getgrgid(i32 %159)
  store %struct.group* %160, %struct.group** %16, align 8
  br label %161

161:                                              ; preds = %158, %155
  %162 = load %struct.group*, %struct.group** %16, align 8
  %163 = icmp ne %struct.group* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load %struct.group*, %struct.group** %16, align 8
  %166 = getelementptr inbounds %struct.group, %struct.group* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %17, align 4
  br label %177

168:                                              ; preds = %161
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %170 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @snprintf(i8* %169, i32 256, i8* %170, i8* %171)
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @B_TRUE, align 4
  %175 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %176 = call i32 @allow_usage(i32 %173, i32 %174, i8* %175)
  br label %177

177:                                              ; preds = %168, %164
  br label %231

178:                                              ; preds = %144
  %179 = load i8*, i8** %11, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i8*, i8** %7, align 8
  %185 = call %struct.passwd* @getpwnam(i8* %184)
  store %struct.passwd* %185, %struct.passwd** %15, align 8
  br label %189

186:                                              ; preds = %178
  %187 = load i32, i32* %17, align 4
  %188 = call %struct.passwd* @getpwuid(i32 %187)
  store %struct.passwd* %188, %struct.passwd** %15, align 8
  br label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.passwd*, %struct.passwd** %15, align 8
  %191 = icmp eq %struct.passwd* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load i8*, i8** %11, align 8
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load i8*, i8** %7, align 8
  %199 = call %struct.group* @getgrnam(i8* %198)
  store %struct.group* %199, %struct.group** %16, align 8
  br label %203

200:                                              ; preds = %192
  %201 = load i32, i32* %17, align 4
  %202 = call %struct.group* @getgrgid(i32 %201)
  store %struct.group* %202, %struct.group** %16, align 8
  br label %203

203:                                              ; preds = %200, %197
  br label %204

204:                                              ; preds = %203, %189
  %205 = load %struct.passwd*, %struct.passwd** %15, align 8
  %206 = icmp ne %struct.passwd* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i32, i32* @ZFS_DELEG_USER, align 4
  store i32 %208, i32* %10, align 4
  %209 = load %struct.passwd*, %struct.passwd** %15, align 8
  %210 = getelementptr inbounds %struct.passwd, %struct.passwd* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %17, align 4
  br label %230

212:                                              ; preds = %204
  %213 = load %struct.group*, %struct.group** %16, align 8
  %214 = icmp ne %struct.group* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %212
  %216 = load i32, i32* @ZFS_DELEG_GROUP, align 4
  store i32 %216, i32* %10, align 4
  %217 = load %struct.group*, %struct.group** %16, align 8
  %218 = getelementptr inbounds %struct.group, %struct.group* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %17, align 4
  br label %229

220:                                              ; preds = %212
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %222 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @snprintf(i8* %221, i32 256, i8* %222, i8* %223)
  %225 = load i32, i32* %4, align 4
  %226 = load i32, i32* @B_TRUE, align 4
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %228 = call i32 @allow_usage(i32 %225, i32 %226, i8* %227)
  br label %229

229:                                              ; preds = %220, %215
  br label %230

230:                                              ; preds = %229, %207
  br label %231

231:                                              ; preds = %230, %177
  br label %232

232:                                              ; preds = %231, %143
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %234 = load i32, i32* %17, align 4
  %235 = call i32 @sprintf(i8* %233, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %234)
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  store i8* %236, i8** %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %239 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %242 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i8*, i8** %9, align 8
  %245 = load %struct.allow_opts*, %struct.allow_opts** %5, align 8
  %246 = getelementptr inbounds %struct.allow_opts, %struct.allow_opts* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load i32**, i32*** %6, align 8
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @store_allow_perm(i32 %237, i32 %240, i32 %243, i8* %244, i32 %247, i32* %249)
  %251 = load i8*, i8** %12, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  store i8* %252, i8** %7, align 8
  br label %93

253:                                              ; preds = %93
  br label %254

254:                                              ; preds = %253, %70
  br label %255

255:                                              ; preds = %254, %51
  br label %256

256:                                              ; preds = %255, %29
  ret i32 0
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local i32 @store_allow_perm(i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @allow_usage(i32, i32, i8*) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
