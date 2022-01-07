; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_registry_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_install.c_registry_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.registry_callback_info = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@TRUE = common dso_local global i64 0, align 8
@DotSecurity = common dso_local global i32* null, align 8
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SDDL_REVISION_1 = common dso_local global i32 0, align 4
@MAX_INF_STRING_LENGTH = common dso_local global i32 0, align 4
@FLG_ADDREG_DELREG_BIT = common dso_local global i32 0, align 4
@FLG_ADDREG_OVERWRITEONLY = common dso_local global i32 0, align 4
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not create key %p %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"key %p %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i8*)* @registry_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @registry_callback(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.registry_callback_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.registry_callback_info*
  store %struct.registry_callback_info* %24, %struct.registry_callback_info** %8, align 8
  store i32* null, i32** %13, align 8
  %25 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 24, i1 false)
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @SetupFindFirstLineW(i32 %26, i32* %27, i32* null, i32* %11)
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %18, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* @TRUE, align 8
  store i64 %32, i64* %4, align 8
  br label %245

33:                                               ; preds = %3
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @strlenW(i32* %34)
  %36 = load i32*, i32** @DotSecurity, align 8
  %37 = call i32 @strlenW(i32* %36)
  %38 = add nsw i32 %35, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32* @MyMalloc(i32 %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %48 = call i32 @SetLastError(i32 %47)
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %4, align 8
  br label %245

50:                                               ; preds = %33
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @strcpyW(i32* %51, i32* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** @DotSecurity, align 8
  %56 = call i32 @strcatW(i32* %54, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @SetupFindFirstLineW(i32 %57, i32* %58, i32* null, i32* %12)
  store i64 %59, i64* %18, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @MyFree(i32* %60)
  %62 = load i64, i64* %18, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %102

64:                                               ; preds = %50
  %65 = call i32 @SetupGetLineTextW(i32* %12, i32* null, i32* null, i32* null, i32* null, i32 0, i32* %17)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %4, align 8
  br label %245

69:                                               ; preds = %64
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i32* @MyMalloc(i32 %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %79 = call i32 @SetLastError(i32 %78)
  %80 = load i64, i64* @FALSE, align 8
  store i64 %80, i64* %4, align 8
  br label %245

81:                                               ; preds = %69
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @SetupGetLineTextW(i32* %12, i32* null, i32* null, i32* null, i32* %82, i32 %83, i32* null)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %4, align 8
  br label %245

88:                                               ; preds = %81
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* @SDDL_REVISION_1, align 4
  %91 = call i64 @ConvertStringSecurityDescriptorToSecurityDescriptorW(i32* %89, i32 %90, i32** %13, i32* null)
  store i64 %91, i64* %18, align 8
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @MyFree(i32* %92)
  %94 = load i64, i64* %18, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %88
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %4, align 8
  br label %245

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 24, i32* %99, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32* %100, i32** %101, align 8
  br label %102

102:                                              ; preds = %98, %50
  %103 = load i64, i64* @TRUE, align 8
  store i64 %103, i64* %18, align 8
  br label %104

104:                                              ; preds = %235, %102
  %105 = load i64, i64* %18, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %237

107:                                              ; preds = %104
  %108 = load i32, i32* @MAX_INF_STRING_LENGTH, align 4
  %109 = zext i32 %108 to i64
  %110 = call i8* @llvm.stacksave()
  store i8* %110, i8** %19, align 8
  %111 = alloca i64, i64 %109, align 16
  store i64 %109, i64* %20, align 8
  %112 = mul nuw i64 8, %109
  %113 = udiv i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @SetupGetStringFieldW(i32* %11, i32 1, i64* %111, i32 %114, i32* null)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  store i32 4, i32* %22, align 4
  br label %231

118:                                              ; preds = %107
  %119 = load %struct.registry_callback_info*, %struct.registry_callback_info** %8, align 8
  %120 = getelementptr inbounds %struct.registry_callback_info, %struct.registry_callback_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @get_root_key(i64* %111, i32 %121)
  store i32 %122, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  store i32 4, i32* %22, align 4
  br label %231

125:                                              ; preds = %118
  %126 = mul nuw i64 8, %109
  %127 = udiv i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @SetupGetStringFieldW(i32* %11, i32 2, i64* %111, i32 %128, i32* null)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %125
  store i64 0, i64* %111, align 16
  br label %132

132:                                              ; preds = %131, %125
  %133 = call i32 @SetupGetIntField(i32* %11, i32 4, i32* %21)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  store i32 0, i32* %21, align 4
  br label %136

136:                                              ; preds = %135, %132
  %137 = load %struct.registry_callback_info*, %struct.registry_callback_info** %8, align 8
  %138 = getelementptr inbounds %struct.registry_callback_info, %struct.registry_callback_info* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %21, align 4
  %143 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 4, i32* %22, align 4
  br label %231

147:                                              ; preds = %141
  br label %161

148:                                              ; preds = %136
  %149 = load i32, i32* %21, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  store i32 %152, i32* %21, align 4
  br label %160

153:                                              ; preds = %148
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* @FLG_ADDREG_DELREG_BIT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  store i32 4, i32* %22, align 4
  br label %231

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %151
  br label %161

161:                                              ; preds = %160, %147
  %162 = load %struct.registry_callback_info*, %struct.registry_callback_info** %8, align 8
  %163 = getelementptr inbounds %struct.registry_callback_info, %struct.registry_callback_info* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %21, align 4
  %168 = load i32, i32* @FLG_ADDREG_OVERWRITEONLY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %15, align 4
  %173 = call i64 @RegOpenKeyW(i32 %172, i64* %111, i32* %16)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 4, i32* %22, align 4
  br label %231

176:                                              ; preds = %171
  br label %193

177:                                              ; preds = %166
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %180 = load i32*, i32** %13, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %184

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %182
  %185 = phi %struct.TYPE_3__* [ %14, %182 ], [ null, %183 ]
  %186 = call i64 @RegCreateKeyExW(i32 %178, i64* %111, i32 0, i32* null, i32 0, i32 %179, %struct.TYPE_3__* %185, i32* %16, i32* null)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @debugstr_w(i64* %111)
  %191 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %189, i32 %190)
  store i32 4, i32* %22, align 4
  br label %231

192:                                              ; preds = %184
  br label %193

193:                                              ; preds = %192, %176
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @debugstr_w(i64* %111)
  %196 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %194, i32 %195)
  %197 = mul nuw i64 8, %109
  %198 = udiv i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @SetupGetStringFieldW(i32* %11, i32 3, i64* %111, i32 %199, i32* null)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %193
  store i64 0, i64* %111, align 16
  br label %203

203:                                              ; preds = %202, %193
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %21, align 4
  %206 = call i32 @do_reg_operation(i32 %204, i64* %111, i32* %11, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %223, label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %208
  %213 = load i32, i32* %16, align 4
  %214 = call i32 @RegCloseKey(i32 %213)
  br label %215

215:                                              ; preds = %212, %208
  %216 = load i32*, i32** %13, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %13, align 8
  %220 = call i32 @LocalFree(i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i64, i64* @FALSE, align 8
  store i64 %222, i64* %4, align 8
  store i32 1, i32* %22, align 4
  br label %231

223:                                              ; preds = %203
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %15, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @RegCloseKey(i32 %228)
  br label %230

230:                                              ; preds = %227, %223
  store i32 0, i32* %22, align 4
  br label %231

231:                                              ; preds = %230, %221, %188, %175, %158, %146, %124, %117
  %232 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %22, align 4
  switch i32 %233, label %247 [
    i32 0, label %234
    i32 4, label %235
    i32 1, label %245
  ]

234:                                              ; preds = %231
  br label %235

235:                                              ; preds = %234, %231
  %236 = call i64 @SetupFindNextLine(i32* %11, i32* %11)
  store i64 %236, i64* %18, align 8
  br label %104

237:                                              ; preds = %104
  %238 = load i32*, i32** %13, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32*, i32** %13, align 8
  %242 = call i32 @LocalFree(i32* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i64, i64* @TRUE, align 8
  store i64 %244, i64* %4, align 8
  br label %245

245:                                              ; preds = %243, %231, %96, %86, %77, %67, %46, %31
  %246 = load i64, i64* %4, align 8
  ret i64 %246

247:                                              ; preds = %231
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @SetupFindFirstLineW(i32, i32*, i32*, i32*) #2

declare dso_local i32* @MyMalloc(i32) #2

declare dso_local i32 @strlenW(i32*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @strcpyW(i32*, i32*) #2

declare dso_local i32 @strcatW(i32*, i32*) #2

declare dso_local i32 @MyFree(i32*) #2

declare dso_local i32 @SetupGetLineTextW(i32*, i32*, i32*, i32*, i32*, i32, i32*) #2

declare dso_local i64 @ConvertStringSecurityDescriptorToSecurityDescriptorW(i32*, i32, i32**, i32*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @SetupGetStringFieldW(i32*, i32, i64*, i32, i32*) #2

declare dso_local i32 @get_root_key(i64*, i32) #2

declare dso_local i32 @SetupGetIntField(i32*, i32, i32*) #2

declare dso_local i64 @RegOpenKeyW(i32, i64*, i32*) #2

declare dso_local i64 @RegCreateKeyExW(i32, i64*, i32, i32*, i32, i32, %struct.TYPE_3__*, i32*, i32*) #2

declare dso_local i32 @ERR(i8*, i32, i32) #2

declare dso_local i32 @debugstr_w(i64*) #2

declare dso_local i32 @TRACE(i8*, i32, i32) #2

declare dso_local i32 @do_reg_operation(i32, i64*, i32*, i32) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @LocalFree(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @SetupFindNextLine(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
