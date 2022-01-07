; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_SZ = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Uneven byte count\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Data %i bytes(%i)\0A\00", align 1
@REG_DWORD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"DWORD %i\0A\00", align 1
@REG_EXPAND_SZ = common dso_local global i32 0, align 4
@REG_MULTI_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i8*, i32, i32*, i32*)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @parse_value(i32* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [5 x i8], align 1
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @REG_SZ, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64* @msi_alloc(i32 %28)
  store i64* %29, i64** %12, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i64*, i64** %12, align 8
  %33 = bitcast i64* %32 to i8*
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i64*, i64** %12, align 8
  store i64* %35, i64** %6, align 8
  br label %256

36:                                               ; preds = %5
  %37 = load i8*, i8** %8, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %207

42:                                               ; preds = %36
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 35
  br i1 %47, label %48, label %207

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 37
  br i1 %53, label %54, label %207

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 120
  br i1 %59, label %60, label %141

60:                                               ; preds = %54
  store i8* null, i8** %15, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = call i32 @deformat_string(i32* %61, i8* %63, i8** %15)
  %65 = load i8*, i8** %15, align 8
  store i8* %65, i8** %13, align 8
  %66 = load i32, i32* @REG_BINARY, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @strlenW(i8* %68)
  %70 = srem i32 %69, 2
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @strlenW(i8* %73)
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = load i32*, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  br label %83

78:                                               ; preds = %60
  %79 = load i8*, i8** %13, align 8
  %80 = call i32 @strlenW(i8* %79)
  %81 = sdiv i32 %80, 2
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = call i64* @msi_alloc(i32 %85)
  store i64* %86, i64** %12, align 8
  %87 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  store i8 48, i8* %87, align 1
  %88 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 1
  store i8 120, i8* %88, align 1
  %89 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 4
  store i8 0, i8* %89, align 1
  store i32 0, i32* %16, align 4
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @strlenW(i8* %90)
  %92 = srem i32 %91, 2
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %83
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 2
  store i8 48, i8* %95, align 1
  %96 = load i8*, i8** %13, align 8
  %97 = load i8, i8* %96, align 1
  %98 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 3
  store i8 %97, i8* %98, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  %101 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %102 = call i64 @strtol(i8* %101, i32* null, i32 0)
  %103 = load i64*, i64** %12, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %102, i64* %106, align 8
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %16, align 4
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %94, %83
  br label %111

111:                                              ; preds = %115, %110
  %112 = load i8*, i8** %13, align 8
  %113 = load i8, i8* %112, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load i8*, i8** %13, align 8
  %117 = load i8, i8* %116, align 1
  %118 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 2
  store i8 %117, i8* %118, align 1
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %13, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i8, i8* %121, align 1
  %123 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 3
  store i8 %122, i8* %123, align 1
  %124 = load i8*, i8** %13, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %13, align 8
  %126 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %127 = call i64 @strtol(i8* %126, i32* null, i32 0)
  %128 = load i64*, i64** %12, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  store i64 %127, i64* %131, align 8
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %111

134:                                              ; preds = %111
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @msi_free(i8* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %16, align 4
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139)
  br label %206

141:                                              ; preds = %54
  store i32 0, i32* %19, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = call i32 @deformat_string(i32* %142, i8* %144, i8** %17)
  %146 = load i32, i32* @REG_DWORD, align 4
  %147 = load i32*, i32** %10, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %11, align 8
  store i32 4, i32* %148, align 4
  %149 = load i32*, i32** %11, align 8
  %150 = load i32, i32* %149, align 4
  %151 = call i64* @msi_alloc(i32 %150)
  store i64* %151, i64** %12, align 8
  %152 = load i8*, i8** %17, align 8
  store i8* %152, i8** %18, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %157, label %160

157:                                              ; preds = %141
  %158 = load i8*, i8** %18, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %18, align 8
  br label %160

160:                                              ; preds = %157, %141
  br label %161

161:                                              ; preds = %176, %160
  %162 = load i8*, i8** %18, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %161
  %166 = load i8*, i8** %18, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp slt i32 %168, 48
  br i1 %169, label %175, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %18, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp sgt i32 %173, 57
  br i1 %174, label %175, label %176

175:                                              ; preds = %170, %165
  br label %187

176:                                              ; preds = %170
  %177 = load i32, i32* %19, align 4
  %178 = mul nsw i32 %177, 10
  store i32 %178, i32* %19, align 4
  %179 = load i8*, i8** %18, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = sub nsw i32 %181, 48
  %183 = load i32, i32* %19, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %19, align 4
  %185 = load i8*, i8** %18, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %18, align 8
  br label %161

187:                                              ; preds = %175, %161
  %188 = load i8*, i8** %17, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 0
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 45
  br i1 %192, label %193, label %196

193:                                              ; preds = %187
  %194 = load i32, i32* %19, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %19, align 4
  br label %196

196:                                              ; preds = %193, %187
  %197 = load i32, i32* %19, align 4
  %198 = load i64*, i64** %12, align 8
  %199 = bitcast i64* %198 to i32*
  store i32 %197, i32* %199, align 4
  %200 = load i64*, i64** %12, align 8
  %201 = bitcast i64* %200 to i32*
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @msi_free(i8* %204)
  br label %206

206:                                              ; preds = %196, %134
  br label %254

207:                                              ; preds = %48, %42, %36
  %208 = load i8*, i8** %8, align 8
  store i8* %208, i8** %20, align 8
  %209 = load i32, i32* @REG_SZ, align 4
  %210 = load i32*, i32** %10, align 8
  store i32 %209, i32* %210, align 4
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 35
  br i1 %215, label %216, label %234

216:                                              ; preds = %207
  %217 = load i8*, i8** %20, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %20, align 8
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %9, align 4
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 37
  br i1 %225, label %226, label %233

226:                                              ; preds = %216
  %227 = load i8*, i8** %20, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %20, align 8
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, -1
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* @REG_EXPAND_SZ, align 4
  %232 = load i32*, i32** %10, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %226, %216
  br label %234

234:                                              ; preds = %233, %207
  %235 = load i8*, i8** %20, align 8
  %236 = load i32, i32* %9, align 4
  %237 = call i64 @msi_strdupW(i8* %235, i32 %236)
  %238 = inttoptr i64 %237 to i64*
  store i64* %238, i64** %12, align 8
  %239 = load i32, i32* %9, align 4
  %240 = load i64*, i64** %12, align 8
  %241 = bitcast i64* %240 to i8*
  %242 = call i32 @strlenW(i8* %241)
  %243 = icmp sgt i32 %239, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %234
  %245 = load i32, i32* @REG_MULTI_SZ, align 4
  %246 = load i32*, i32** %10, align 8
  store i32 %245, i32* %246, align 4
  br label %247

247:                                              ; preds = %244, %234
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 1
  %252 = trunc i64 %251 to i32
  %253 = load i32*, i32** %11, align 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %247, %206
  %255 = load i64*, i64** %12, align 8
  store i64* %255, i64** %6, align 8
  br label %256

256:                                              ; preds = %254, %34
  %257 = load i64*, i64** %6, align 8
  ret i64* %257
}

declare dso_local i64* @msi_alloc(i32) #1

declare dso_local i32 @deformat_string(i32*, i8*, i8**) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i64 @msi_strdupW(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
