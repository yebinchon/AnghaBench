; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_EnumClientServiceProtocol.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netcfgx/extr_netcfg_iface.c_EnumClientServiceProtocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i8*, i8*, i8*, i8*, i64, i32, i32 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i32] [i32 67, i32 104, i32 97, i32 114, i32 97, i32 99, i32 116, i32 101, i32 114, i32 105, i32 115, i32 116, i32 105, i32 99, i32 115, i32 0], align 4
@REG_DWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i32] [i32 67, i32 111, i32 109, i32 112, i32 111, i32 110, i32 101, i32 110, i32 116, i32 73, i32 100, i32 0], align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i32] [i32 68, i32 101, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.3 = private unnamed_addr constant [4 x i32] [i32 78, i32 68, i32 73, i32 0], align 4
@.str.4 = private unnamed_addr constant [9 x i32] [i32 72, i32 101, i32 108, i32 112, i32 84, i32 101, i32 120, i32 116, i32 0], align 4
@.str.5 = private unnamed_addr constant [8 x i32] [i32 83, i32 101, i32 114, i32 118, i32 105, i32 99, i32 101, i32 0], align 4
@TRUE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnumClientServiceProtocol(i32 %0, i32* %1, %struct.TYPE_5__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %17, align 8
  br label %18

18:                                               ; preds = %231, %3
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %19, align 16
  store i32 100, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %24 = call i64 @RegEnumKeyExW(i32 %20, i32 %21, i8* %23, i32* %9, i32* null, i32* null, i32* null, i32* null)
  %25 = load i64, i64* @ERROR_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %229

27:                                               ; preds = %18
  %28 = call i8* @CoTaskMemAlloc(i32 56)
  %29 = bitcast i8* %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %16, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %33, i32* %4, align 4
  br label %236

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = call i32 @ZeroMemory(%struct.TYPE_5__* %35, i32 56)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 7
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @CopyMemory(i32* %38, i32* %39, i32 4)
  %41 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = call i32 @CLSIDFromString(i8* %41, i32* %43)
  %45 = call i64 @FAILED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %34
  %49 = load i32, i32* %5, align 4
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %51 = load i32, i32* @KEY_READ, align 4
  %52 = call i64 @RegOpenKeyExW(i32 %49, i8* %50, i32 0, i32 %51, i32* %13)
  %53 = load i64, i64* @ERROR_SUCCESS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %228

55:                                               ; preds = %48
  store i32 4, i32* %9, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 5
  %59 = ptrtoint i64* %58 to i32
  %60 = call i64 @RegQueryValueExW(i32 %56, i8* bitcast ([16 x i32]* @.str to i8*), i32* null, i32* %10, i32 %59, i32* %9)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @REG_DWORD, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 5
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %55
  store i32 100, i32* %9, align 4
  %68 = load i32, i32* %13, align 4
  %69 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %70 = ptrtoint i8* %69 to i32
  %71 = call i64 @RegQueryValueExW(i32 %68, i8* bitcast ([12 x i32]* @.str.1 to i8*), i32* null, i32* %10, i32 %70, i32* %9)
  %72 = load i64, i64* @ERROR_SUCCESS, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @REG_SZ, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 99
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %81 = call i32 @wcslen(i8* %80)
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = call i8* @CoTaskMemAlloc(i32 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %78
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %98 = call i32 @wcscpy(i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %93, %78
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %100, %67
  store i32 100, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %104 = ptrtoint i8* %103 to i32
  %105 = call i64 @RegQueryValueExW(i32 %102, i8* bitcast ([12 x i32]* @.str.2 to i8*), i32* null, i32* %10, i32 %104, i32* %9)
  %106 = load i64, i64* @ERROR_SUCCESS, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @REG_SZ, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 99
  store i8 0, i8* %113, align 1
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %115 = call i32 @wcslen(i8* %114)
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 1
  %119 = trunc i64 %118 to i32
  %120 = call i8* @CoTaskMemAlloc(i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %112
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %132 = call i32 @wcscpy(i8* %130, i8* %131)
  br label %133

133:                                              ; preds = %127, %112
  br label %134

134:                                              ; preds = %133, %108
  br label %135

135:                                              ; preds = %134, %101
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @KEY_READ, align 4
  %138 = call i64 @RegOpenKeyExW(i32 %136, i8* bitcast ([4 x i32]* @.str.3 to i8*), i32 0, i32 %137, i32* %14)
  %139 = load i64, i64* @ERROR_SUCCESS, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %212

141:                                              ; preds = %135
  store i32 100, i32* %9, align 4
  %142 = load i32, i32* %14, align 4
  %143 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %144 = ptrtoint i8* %143 to i32
  %145 = call i64 @RegQueryValueExW(i32 %142, i8* bitcast ([9 x i32]* @.str.4 to i8*), i32* null, i32* %10, i32 %144, i32* %9)
  %146 = load i64, i64* @ERROR_SUCCESS, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %175

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* @REG_SZ, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %148
  %153 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 99
  store i8 0, i8* %153, align 1
  %154 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %155 = call i32 @wcslen(i8* %154)
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 1
  %159 = trunc i64 %158 to i32
  %160 = call i8* @CoTaskMemAlloc(i32 %159)
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %173

167:                                              ; preds = %152
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %172 = call i32 @wcscpy(i8* %170, i8* %171)
  br label %173

173:                                              ; preds = %167, %152
  br label %174

174:                                              ; preds = %173, %148
  br label %175

175:                                              ; preds = %174, %141
  store i32 100, i32* %9, align 4
  %176 = load i32, i32* %14, align 4
  %177 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %178 = ptrtoint i8* %177 to i32
  %179 = call i64 @RegQueryValueExW(i32 %176, i8* bitcast ([8 x i32]* @.str.5 to i8*), i32* null, i32* %10, i32 %178, i32* %9)
  %180 = load i64, i64* @ERROR_SUCCESS, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %175
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @REG_SZ, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %208

186:                                              ; preds = %182
  %187 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 99
  store i8 0, i8* %187, align 1
  %188 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %189 = call i32 @wcslen(i8* %188)
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 1
  %193 = trunc i64 %192 to i32
  %194 = call i8* @CoTaskMemAlloc(i32 %193)
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %207

201:                                              ; preds = %186
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %206 = call i32 @wcscpy(i8* %204, i8* %205)
  br label %207

207:                                              ; preds = %201, %186
  br label %208

208:                                              ; preds = %207, %182
  br label %209

209:                                              ; preds = %208, %175
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @RegCloseKey(i32 %210)
  br label %212

212:                                              ; preds = %209, %135
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @RegCloseKey(i32 %213)
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %216 = call i32 @ReadBindingString(%struct.TYPE_5__* %215)
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %218 = icmp ne %struct.TYPE_5__* %217, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %221 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %220, %struct.TYPE_5__** %221, align 8
  br label %226

222:                                              ; preds = %212
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store %struct.TYPE_5__* %223, %struct.TYPE_5__** %225, align 8
  br label %226

226:                                              ; preds = %222, %219
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %227, %struct.TYPE_5__** %15, align 8
  br label %228

228:                                              ; preds = %226, %48
  br label %230

229:                                              ; preds = %18
  br label %234

230:                                              ; preds = %228
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* @TRUE, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %18, label %234

234:                                              ; preds = %231, %229
  %235 = load i32, i32* @S_OK, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %32
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i64 @RegEnumKeyExW(i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @CopyMemory(i32*, i32*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @CLSIDFromString(i8*, i32*) #1

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i64 @RegQueryValueExW(i32, i8*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @wcscpy(i8*, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @ReadBindingString(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
