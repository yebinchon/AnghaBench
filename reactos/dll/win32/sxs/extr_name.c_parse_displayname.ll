; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_name.c_parse_displayname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/sxs/extr_name.c_parse_displayname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i8*, i8*, i8*, i8*, i64* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@archW = common dso_local global i32 0, align 4
@tokenW = common dso_local global i32 0, align 4
@typeW = common dso_local global i32 0, align 4
@versionW = common dso_local global i32 0, align 4
@ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.name*, i8*)* @parse_displayname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_displayname(%struct.name* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.name*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.name* %0, %struct.name** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** %7, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 44
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %7, align 8
  br label %10

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 1
  %37 = trunc i64 %36 to i32
  %38 = call i64* @HeapAlloc(i32 %32, i32 0, i32 %37)
  %39 = load %struct.name*, %struct.name** %4, align 8
  %40 = getelementptr inbounds %struct.name, %struct.name* %39, i32 0, i32 4
  store i64* %38, i64** %40, align 8
  %41 = icmp ne i64* %38, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %25
  %43 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %43, i32* %3, align 4
  br label %246

44:                                               ; preds = %25
  %45 = load %struct.name*, %struct.name** %4, align 8
  %46 = getelementptr inbounds %struct.name, %struct.name* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = mul i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i64* %47, i8* %48, i32 %52)
  %54 = load %struct.name*, %struct.name** %4, align 8
  %55 = getelementptr inbounds %struct.name, %struct.name* %54, i32 0, i32 4
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %44
  %64 = load i32, i32* @S_OK, align 4
  store i32 %64, i32* %3, align 4
  br label %246

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %243, %65
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  store i8* %68, i8** %6, align 8
  br label %69

69:                                               ; preds = %81, %66
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 61
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  br label %69

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %89, i32* %3, align 4
  br label %246

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @archW, align 4
  %99 = call i32 @ARRAY_SIZE(i32 %98)
  %100 = sub nsw i32 %99, 1
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %126

102:                                              ; preds = %90
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* @archW, align 4
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = mul i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memcmp(i8* %103, i32 %104, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %102
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %7, align 8
  store i8* %113, i8** %6, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i8* @parse_value(i8* %114, i32* %8)
  %116 = load %struct.name*, %struct.name** %4, align 8
  %117 = getelementptr inbounds %struct.name, %struct.name* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = icmp ne i8* %115, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %120, i32* %3, align 4
  br label %246

121:                                              ; preds = %111
  %122 = load i32, i32* %8, align 4
  %123 = load i8*, i8** %7, align 8
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %7, align 8
  br label %222

126:                                              ; preds = %102, %90
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @tokenW, align 4
  %129 = call i32 @ARRAY_SIZE(i32 %128)
  %130 = sub nsw i32 %129, 1
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %156

132:                                              ; preds = %126
  %133 = load i8*, i8** %6, align 8
  %134 = load i32, i32* @tokenW, align 4
  %135 = load i32, i32* %8, align 4
  %136 = zext i32 %135 to i64
  %137 = mul i64 %136, 1
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcmp(i8* %133, i32 %134, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %156, label %141

141:                                              ; preds = %132
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  store i8* %143, i8** %6, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @parse_value(i8* %144, i32* %8)
  %146 = load %struct.name*, %struct.name** %4, align 8
  %147 = getelementptr inbounds %struct.name, %struct.name* %146, i32 0, i32 2
  store i8* %145, i8** %147, align 8
  %148 = icmp ne i8* %145, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %141
  %150 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %150, i32* %3, align 4
  br label %246

151:                                              ; preds = %141
  %152 = load i32, i32* %8, align 4
  %153 = load i8*, i8** %7, align 8
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8* %155, i8** %7, align 8
  br label %221

156:                                              ; preds = %132, %126
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @typeW, align 4
  %159 = call i32 @ARRAY_SIZE(i32 %158)
  %160 = sub nsw i32 %159, 1
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %186

162:                                              ; preds = %156
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* @typeW, align 4
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = mul i64 %166, 1
  %168 = trunc i64 %167 to i32
  %169 = call i32 @memcmp(i8* %163, i32 %164, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %186, label %171

171:                                              ; preds = %162
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %7, align 8
  store i8* %173, i8** %6, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = call i8* @parse_value(i8* %174, i32* %8)
  %176 = load %struct.name*, %struct.name** %4, align 8
  %177 = getelementptr inbounds %struct.name, %struct.name* %176, i32 0, i32 1
  store i8* %175, i8** %177, align 8
  %178 = icmp ne i8* %175, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %180, i32* %3, align 4
  br label %246

181:                                              ; preds = %171
  %182 = load i32, i32* %8, align 4
  %183 = load i8*, i8** %7, align 8
  %184 = zext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %7, align 8
  br label %220

186:                                              ; preds = %162, %156
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* @versionW, align 4
  %189 = call i32 @ARRAY_SIZE(i32 %188)
  %190 = sub nsw i32 %189, 1
  %191 = icmp eq i32 %187, %190
  br i1 %191, label %192, label %216

192:                                              ; preds = %186
  %193 = load i8*, i8** %6, align 8
  %194 = load i32, i32* @versionW, align 4
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = mul i64 %196, 1
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memcmp(i8* %193, i32 %194, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %216, label %201

201:                                              ; preds = %192
  %202 = load i8*, i8** %7, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %7, align 8
  store i8* %203, i8** %6, align 8
  %204 = load i8*, i8** %6, align 8
  %205 = call i8* @parse_value(i8* %204, i32* %8)
  %206 = load %struct.name*, %struct.name** %4, align 8
  %207 = getelementptr inbounds %struct.name, %struct.name* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = icmp ne i8* %205, null
  br i1 %208, label %211, label %209

209:                                              ; preds = %201
  %210 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %210, i32* %3, align 4
  br label %246

211:                                              ; preds = %201
  %212 = load i32, i32* %8, align 4
  %213 = load i8*, i8** %7, align 8
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %213, i64 %214
  store i8* %215, i8** %7, align 8
  br label %219

216:                                              ; preds = %192, %186
  %217 = load i32, i32* @ERROR_SXS_INVALID_ASSEMBLY_IDENTITY_ATTRIBUTE_NAME, align 4
  %218 = call i32 @HRESULT_FROM_WIN32(i32 %217)
  store i32 %218, i32* %3, align 4
  br label %246

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %181
  br label %221

221:                                              ; preds = %220, %151
  br label %222

222:                                              ; preds = %221, %121
  br label %223

223:                                              ; preds = %235, %222
  %224 = load i8*, i8** %7, align 8
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load i8*, i8** %7, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 44
  br label %233

233:                                              ; preds = %228, %223
  %234 = phi i1 [ false, %223 ], [ %232, %228 ]
  br i1 %234, label %235, label %238

235:                                              ; preds = %233
  %236 = load i8*, i8** %7, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %7, align 8
  br label %223

238:                                              ; preds = %233
  %239 = load i8*, i8** %7, align 8
  %240 = load i8, i8* %239, align 1
  %241 = icmp ne i8 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  br label %244

243:                                              ; preds = %238
  br label %66

244:                                              ; preds = %242
  %245 = load i32, i32* @S_OK, align 4
  store i32 %245, i32* %3, align 4
  br label %246

246:                                              ; preds = %244, %216, %209, %179, %149, %119, %88, %63, %42
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

declare dso_local i8* @parse_value(i8*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
