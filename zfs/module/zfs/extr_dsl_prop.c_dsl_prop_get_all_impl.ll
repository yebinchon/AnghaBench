; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_get_all_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_prop.c_dsl_prop_get_all_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@ZAP_MAXNAMELEN = common dso_local global i32 0, align 4
@DSL_PROP_GET_RECEIVED = common dso_local global i32 0, align 4
@ZPROP_INHERIT_SUFFIX = common dso_local global i32 0, align 4
@ZPROP_RECVD_SUFFIX = common dso_local global i32 0, align 4
@DSL_PROP_GET_LOCAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@DSL_PROP_GET_INHERITING = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i8* null, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@DSL_PROP_GET_SNAPSHOT = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32*)* @dsl_prop_get_all_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_prop_get_all_impl(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @zap_cursor_init(i32* %11, i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %247, %5
  %28 = call i32 @zap_cursor_retrieve(i32* %11, %struct.TYPE_3__* %12)
  store i32 %28, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %249

30:                                               ; preds = %27
  %31 = load i32, i32* @ZAP_MAXNAMELEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %16, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 36)
  store i8* %37, i8** %19, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DSL_PROP_GET_RECEIVED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 4, i32* %22, align 4
  br label %243

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %20, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %21, align 8
  br label %135

50:                                               ; preds = %30
  %51 = load i8*, i8** %19, align 8
  %52 = load i32, i32* @ZPROP_INHERIT_SUFFIX, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 4, i32* %22, align 4
  br label %243

56:                                               ; preds = %50
  %57 = load i8*, i8** %19, align 8
  %58 = load i32, i32* @ZPROP_RECVD_SUFFIX, align 4
  %59 = call i64 @strcmp(i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %132

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DSL_PROP_GET_LOCAL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 4, i32* %22, align 4
  br label %243

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %70 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @strncpy(i8* %34, i8* %69, i32 %76)
  %78 = load i8*, i8** %19, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = ptrtoint i8* %78 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = getelementptr inbounds i8, i8* %34, i64 %83
  store i8 0, i8* %84, align 1
  store i8* %34, i8** %20, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @DSL_PROP_GET_RECEIVED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %67
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 @zap_contains(i32* %90, i32 %91, i8* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 4, i32* %22, align 4
  br label %243

97:                                               ; preds = %89
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @ENOENT, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 2, i32* %22, align 4
  br label %243

102:                                              ; preds = %97
  %103 = load i8*, i8** %20, align 8
  %104 = load i32, i32* @ZPROP_INHERIT_SUFFIX, align 4
  %105 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %103, i32 %104)
  store i8* %105, i8** %18, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %18, align 8
  %109 = call i32 @zap_contains(i32* %106, i32 %107, i8* %108)
  store i32 %109, i32* %13, align 4
  %110 = load i8*, i8** %18, align 8
  %111 = call i32 @kmem_strfree(i8* %110)
  %112 = load i32, i32* %13, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i32 4, i32* %22, align 4
  br label %243

115:                                              ; preds = %102
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ENOENT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 2, i32* %22, align 4
  br label %243

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %67
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @DSL_PROP_GET_INHERITING, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i8*, i8** %8, align 8
  br label %130

128:                                              ; preds = %121
  %129 = load i8*, i8** @ZPROP_SOURCE_VAL_RECVD, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = phi i8* [ %127, %126 ], [ %129, %128 ]
  store i8* %131, i8** %21, align 8
  br label %133

132:                                              ; preds = %56
  store i32 4, i32* %22, align 4
  br label %243

133:                                              ; preds = %130
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %46
  %136 = load i8*, i8** %20, align 8
  %137 = call i64 @zfs_name_to_prop(i8* %136)
  store i64 %137, i64* %15, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @DSL_PROP_GET_INHERITING, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %135
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* @ZPROP_INVAL, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @zfs_prop_inheritable(i64 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  store i32 4, i32* %22, align 4
  br label %243

151:                                              ; preds = %146, %142, %135
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @DSL_PROP_GET_SNAPSHOT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* @ZPROP_INVAL, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %156
  %161 = load i64, i64* %15, align 8
  %162 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %163 = load i32, i32* @B_FALSE, align 4
  %164 = call i32 @zfs_prop_valid_for_type(i64 %161, i32 %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  store i32 4, i32* %22, align 4
  br label %243

167:                                              ; preds = %160, %156, %151
  %168 = load i32*, i32** %10, align 8
  %169 = load i8*, i8** %20, align 8
  %170 = call i64 @nvlist_exists(i32* %168, i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 4, i32* %22, align 4
  br label %243

173:                                              ; preds = %167
  %174 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %175 = load i32, i32* @KM_SLEEP, align 4
  %176 = call i64 @nvlist_alloc(i32** %14, i32 %174, i32 %175)
  %177 = icmp eq i64 %176, 0
  %178 = zext i1 %177 to i32
  %179 = call i32 @VERIFY(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %215

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @KM_SLEEP, align 4
  %187 = call i8* @kmem_alloc(i32 %185, i32 %186)
  store i8* %187, i8** %23, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = load i32, i32* %7, align 4
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %23, align 8
  %195 = call i32 @zap_lookup(i32* %188, i32 %189, i8* %191, i32 1, i32 %193, i8* %194)
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %183
  %199 = load i8*, i8** %23, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @kmem_free(i8* %199, i32 %201)
  store i32 2, i32* %22, align 4
  br label %243

203:                                              ; preds = %183
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* @ZPROP_VALUE, align 4
  %206 = load i8*, i8** %23, align 8
  %207 = call i64 @nvlist_add_string(i32* %204, i32 %205, i8* %206)
  %208 = icmp eq i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = call i32 @VERIFY(i32 %209)
  %211 = load i8*, i8** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @kmem_free(i8* %211, i32 %213)
  br label %226

215:                                              ; preds = %173
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %217, 8
  %219 = zext i1 %218 to i32
  %220 = call i32 @ASSERT(i32 %219)
  %221 = load i32*, i32** %14, align 8
  %222 = load i32, i32* @ZPROP_VALUE, align 4
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @nvlist_add_uint64(i32* %221, i32 %222, i32 %224)
  br label %226

226:                                              ; preds = %215, %203
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* @ZPROP_SOURCE, align 4
  %229 = load i8*, i8** %21, align 8
  %230 = call i64 @nvlist_add_string(i32* %227, i32 %228, i8* %229)
  %231 = icmp eq i64 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @VERIFY(i32 %232)
  %234 = load i32*, i32** %10, align 8
  %235 = load i8*, i8** %20, align 8
  %236 = load i32*, i32** %14, align 8
  %237 = call i64 @nvlist_add_nvlist(i32* %234, i8* %235, i32* %236)
  %238 = icmp eq i64 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @VERIFY(i32 %239)
  %241 = load i32*, i32** %14, align 8
  %242 = call i32 @nvlist_free(i32* %241)
  store i32 0, i32* %22, align 4
  br label %243

243:                                              ; preds = %226, %198, %172, %166, %150, %132, %119, %114, %101, %96, %66, %55, %45
  %244 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %22, align 4
  switch i32 %245, label %257 [
    i32 0, label %246
    i32 4, label %247
    i32 2, label %249
  ]

246:                                              ; preds = %243
  br label %247

247:                                              ; preds = %246, %243
  %248 = call i32 @zap_cursor_advance(i32* %11)
  br label %27

249:                                              ; preds = %243, %27
  %250 = call i32 @zap_cursor_fini(i32* %11)
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* @ENOENT, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 0, i32* %13, align 4
  br label %255

255:                                              ; preds = %254, %249
  %256 = load i32, i32* %13, align 4
  ret i32 %256

257:                                              ; preds = %243
  unreachable
}

declare dso_local i32 @zap_cursor_init(i32*, i32*, i32) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @zap_contains(i32*, i32, i8*) #1

declare dso_local i8* @kmem_asprintf(i8*, i8*, i32) #1

declare dso_local i32 @kmem_strfree(i8*) #1

declare dso_local i64 @zfs_name_to_prop(i8*) #1

declare dso_local i32 @zfs_prop_inheritable(i64) #1

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32, i32) #1

declare dso_local i64 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @zap_lookup(i32*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
