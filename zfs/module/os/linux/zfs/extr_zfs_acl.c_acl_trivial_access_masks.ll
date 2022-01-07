; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_acl_trivial_access_masks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zfs_acl.c_acl_trivial_access_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@ACE_READ_DATA = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_WRITE_OWNER = common dso_local global i32 0, align 4
@ACE_WRITE_ACL = common dso_local global i32 0, align 4
@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_READ_ACL = common dso_local global i32 0, align 4
@ACE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@ACE_READ_NAMED_ATTRS = common dso_local global i32 0, align 4
@ACE_SYNCHRONIZE = common dso_local global i32 0, align 4
@ACE_APPEND_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32*, i32*)* @acl_trivial_access_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acl_trivial_access_masks(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %10, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @S_IRGRP, align 4
  %26 = load i32, i32* @S_IROTH, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i32, i32* @ACE_READ_DATA, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %30, %23, %7
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @S_IWUSR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @S_IWGRP, align 4
  %43 = load i32, i32* @S_IWOTH, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @ACE_WRITE_DATA, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %40, %35
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @S_IXUSR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @S_IXGRP, align 4
  %60 = load i32, i32* @S_IXOTH, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i32, i32* @ACE_EXECUTE, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %57, %52
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @S_IRGRP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @S_IROTH, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @ACE_READ_DATA, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %74, %69
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @S_IWGRP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @S_IWOTH, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @ACE_WRITE_DATA, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %92, %87, %82
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @S_IXGRP, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @S_IXOTH, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @ACE_EXECUTE, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %107, %102, %97
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @S_IRUSR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @S_IRGRP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @S_IROTH, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @ACE_READ_DATA, align 4
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %128
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %122, %117, %112
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @S_IWUSR, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* @S_IWGRP, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @S_IWOTH, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32, i32* @ACE_WRITE_DATA, align 4
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %147, %142, %137, %132
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @S_IXUSR, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* @S_IXGRP, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* @S_IXOTH, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @ACE_EXECUTE, align 4
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %167, %162, %157, %152
  %173 = load i32, i32* @ACE_WRITE_ATTRIBUTES, align 4
  %174 = load i32, i32* @ACE_WRITE_OWNER, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @ACE_WRITE_ACL, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @ACE_READ_ACL, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %187 = or i32 %185, %186
  %188 = load i32*, i32** %12, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @S_IRUSR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %172
  %194 = load i32, i32* @ACE_READ_DATA, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %194
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %193, %172
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @S_IWUSR, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, i32* @ACE_WRITE_DATA, align 4
  %205 = load i32, i32* @ACE_APPEND_DATA, align 4
  %206 = or i32 %204, %205
  %207 = load i32*, i32** %12, align 8
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %206
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %203, %198
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @S_IXUSR, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i32, i32* @ACE_EXECUTE, align 4
  %217 = load i32*, i32** %12, align 8
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %216
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %215, %210
  %221 = load i32, i32* @ACE_READ_ACL, align 4
  %222 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %227 = or i32 %225, %226
  %228 = load i32*, i32** %13, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @S_IRGRP, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %220
  %234 = load i32, i32* @ACE_READ_DATA, align 4
  %235 = load i32*, i32** %13, align 8
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %234
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %233, %220
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* @S_IWGRP, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i32, i32* @ACE_WRITE_DATA, align 4
  %245 = load i32, i32* @ACE_APPEND_DATA, align 4
  %246 = or i32 %244, %245
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %247, align 4
  %249 = or i32 %248, %246
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %243, %238
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @S_IXGRP, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i32, i32* @ACE_EXECUTE, align 4
  %257 = load i32*, i32** %13, align 8
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %256
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %255, %250
  %261 = load i32, i32* @ACE_READ_ACL, align 4
  %262 = load i32, i32* @ACE_READ_ATTRIBUTES, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* @ACE_READ_NAMED_ATTRS, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* @ACE_SYNCHRONIZE, align 4
  %267 = or i32 %265, %266
  %268 = load i32*, i32** %14, align 8
  store i32 %267, i32* %268, align 4
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @S_IROTH, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %260
  %274 = load i32, i32* @ACE_READ_DATA, align 4
  %275 = load i32*, i32** %14, align 8
  %276 = load i32, i32* %275, align 4
  %277 = or i32 %276, %274
  store i32 %277, i32* %275, align 4
  br label %278

278:                                              ; preds = %273, %260
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @S_IWOTH, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = load i32, i32* @ACE_WRITE_DATA, align 4
  %285 = load i32, i32* @ACE_APPEND_DATA, align 4
  %286 = or i32 %284, %285
  %287 = load i32*, i32** %14, align 8
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %286
  store i32 %289, i32* %287, align 4
  br label %290

290:                                              ; preds = %283, %278
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @S_IXOTH, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32, i32* @ACE_EXECUTE, align 4
  %297 = load i32*, i32** %14, align 8
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %296
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %295, %290
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
