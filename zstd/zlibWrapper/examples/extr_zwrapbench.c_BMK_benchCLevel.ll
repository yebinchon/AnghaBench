; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_benchCLevel.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/examples/extr_zwrapbench.c_BMK_benchCLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET_REALTIME_PRIORITY = common dso_local global i32 0, align 4
@g_displayLevel = common dso_local global i32 0, align 4
@g_additionalParam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"bench %s %s: input %u bytes, %u seconds, %u KB blocks\0A\00", align 1
@ZSTD_VERSION_STRING = common dso_local global i32 0, align 4
@ZSTD_GIT_COMMIT_STRING = common dso_local global i32 0, align 4
@g_nbIterations = common dso_local global i32 0, align 4
@g_blockSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"benchmarking zstd %s (using ZSTD_CStream)\0A\00", align 1
@BMK_ZSTD_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"benchmarking zstd %s (using ZSTD_CCtx)\0A\00", align 1
@BMK_ZSTD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"benchmarking zstd %s (using zlibWrapper)\0A\00", align 1
@BMK_ZWRAP_ZSTD_REUSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"benchmarking zstd %s (zlibWrapper not reusing a context)\0A\00", align 1
@BMK_ZWRAP_ZSTD = common dso_local global i32 0, align 4
@Z_BEST_COMPRESSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"benchmarking zlib %s\0A\00", align 1
@ZLIB_VERSION = common dso_local global i32 0, align 4
@BMK_ZLIB_REUSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"benchmarking zlib %s (zlib not reusing a context)\0A\00", align 1
@BMK_ZLIB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"benchmarking zlib %s (using zlibWrapper)\0A\00", align 1
@BMK_ZWRAP_ZLIB_REUSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"benchmarking zlib %s (zlibWrapper not reusing a context)\0A\00", align 1
@BMK_ZWRAP_ZLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i32, i32, i64*, i32, i8*, i64)* @BMK_benchCLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_benchCLevel(i8* %0, i64 %1, i8* %2, i32 %3, i32 %4, i64* %5, i32 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i64 %8, i64* %18, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 92)
  store i8* %22, i8** %20, align 8
  %23 = load i8*, i8** %20, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %9
  %26 = load i8*, i8** %12, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %20, align 8
  br label %28

28:                                               ; preds = %25, %9
  %29 = load i8*, i8** %20, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** %20, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @SET_REALTIME_PRIORITY, align 4
  %36 = load i32, i32* @g_displayLevel, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32, i32* @g_additionalParam, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %43 = load i32, i32* @ZSTD_GIT_COMMIT_STRING, align 4
  %44 = load i64, i64* %11, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @g_nbIterations, align 4
  %47 = load i32, i32* @g_blockSize, align 4
  %48 = ashr i32 %47, 10
  %49 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %45, i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %41, %38, %34
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %58 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %19, align 4
  br label %60

60:                                               ; preds = %75, %56
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %19, align 4
  %69 = load i64*, i64** %15, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i8*, i8** %17, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i32, i32* @BMK_ZSTD_STREAM, align 4
  %74 = call i32 @BMK_benchMem(i8* %65, i64 %66, i8* %67, i32 %68, i64* %69, i32 %70, i8* %71, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  br label %60

78:                                               ; preds = %60
  %79 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %80 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %97, %78
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load i64*, i64** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %17, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load i32, i32* @BMK_ZSTD, align 4
  %96 = call i32 @BMK_benchMem(i8* %87, i64 %88, i8* %89, i32 %90, i64* %91, i32 %92, i8* %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  br label %82

100:                                              ; preds = %82
  %101 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %102 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %19, align 4
  br label %104

104:                                              ; preds = %119, %100
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %122

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i64*, i64** %15, align 8
  %114 = load i32, i32* %16, align 4
  %115 = load i8*, i8** %17, align 8
  %116 = load i64, i64* %18, align 8
  %117 = load i32, i32* @BMK_ZWRAP_ZSTD_REUSE, align 4
  %118 = call i32 @BMK_benchMem(i8* %109, i64 %110, i8* %111, i32 %112, i64* %113, i32 %114, i8* %115, i64 %116, i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %19, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load i32, i32* @ZSTD_VERSION_STRING, align 4
  %124 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %141, %122
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %14, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load i8*, i8** %10, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load i64*, i64** %15, align 8
  %136 = load i32, i32* %16, align 4
  %137 = load i8*, i8** %17, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load i32, i32* @BMK_ZWRAP_ZSTD, align 4
  %140 = call i32 @BMK_benchMem(i8* %131, i64 %132, i8* %133, i32 %134, i64* %135, i32 %136, i8* %137, i64 %138, i32 %139)
  br label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %126

144:                                              ; preds = %126
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  %147 = icmp sgt i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @Z_BEST_COMPRESSION, align 4
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %148, %144
  %151 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %152 = load i32, i32* @ZLIB_VERSION, align 4
  %153 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %13, align 4
  store i32 %154, i32* %19, align 4
  br label %155

155:                                              ; preds = %170, %150
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %155
  %160 = load i8*, i8** %10, align 8
  %161 = load i64, i64* %11, align 8
  %162 = load i8*, i8** %12, align 8
  %163 = load i32, i32* %19, align 4
  %164 = load i64*, i64** %15, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i8*, i8** %17, align 8
  %167 = load i64, i64* %18, align 8
  %168 = load i32, i32* @BMK_ZLIB_REUSE, align 4
  %169 = call i32 @BMK_benchMem(i8* %160, i64 %161, i8* %162, i32 %163, i64* %164, i32 %165, i8* %166, i64 %167, i32 %168)
  br label %170

170:                                              ; preds = %159
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %155

173:                                              ; preds = %155
  %174 = load i32, i32* @ZLIB_VERSION, align 4
  %175 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %19, align 4
  br label %177

177:                                              ; preds = %192, %173
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load i8*, i8** %10, align 8
  %183 = load i64, i64* %11, align 8
  %184 = load i8*, i8** %12, align 8
  %185 = load i32, i32* %19, align 4
  %186 = load i64*, i64** %15, align 8
  %187 = load i32, i32* %16, align 4
  %188 = load i8*, i8** %17, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load i32, i32* @BMK_ZLIB, align 4
  %191 = call i32 @BMK_benchMem(i8* %182, i64 %183, i8* %184, i32 %185, i64* %186, i32 %187, i8* %188, i64 %189, i32 %190)
  br label %192

192:                                              ; preds = %181
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %19, align 4
  br label %177

195:                                              ; preds = %177
  %196 = load i32, i32* @ZLIB_VERSION, align 4
  %197 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %19, align 4
  br label %199

199:                                              ; preds = %214, %195
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load i8*, i8** %10, align 8
  %205 = load i64, i64* %11, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = load i32, i32* %19, align 4
  %208 = load i64*, i64** %15, align 8
  %209 = load i32, i32* %16, align 4
  %210 = load i8*, i8** %17, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load i32, i32* @BMK_ZWRAP_ZLIB_REUSE, align 4
  %213 = call i32 @BMK_benchMem(i8* %204, i64 %205, i8* %206, i32 %207, i64* %208, i32 %209, i8* %210, i64 %211, i32 %212)
  br label %214

214:                                              ; preds = %203
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  br label %199

217:                                              ; preds = %199
  %218 = load i32, i32* @ZLIB_VERSION, align 4
  %219 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* %13, align 4
  store i32 %220, i32* %19, align 4
  br label %221

221:                                              ; preds = %236, %217
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %221
  %226 = load i8*, i8** %10, align 8
  %227 = load i64, i64* %11, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load i32, i32* %19, align 4
  %230 = load i64*, i64** %15, align 8
  %231 = load i32, i32* %16, align 4
  %232 = load i8*, i8** %17, align 8
  %233 = load i64, i64* %18, align 8
  %234 = load i32, i32* @BMK_ZWRAP_ZLIB, align 4
  %235 = call i32 @BMK_benchMem(i8* %226, i64 %227, i8* %228, i32 %229, i64* %230, i32 %231, i8* %232, i64 %233, i32 %234)
  br label %236

236:                                              ; preds = %225
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %19, align 4
  br label %221

239:                                              ; preds = %221
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i32 @BMK_benchMem(i8*, i64, i8*, i32, i64*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
