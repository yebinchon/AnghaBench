; ModuleID = '/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_readLong.c'
source_filename = "/home/carl/AnghaBench/torch7/lib/TH/extr_THDiskFile.c_THDiskFile_readLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"attempt to use a closed file\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"attempt to read in a write-only file\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"read error: read %d blocks instead of %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*, i64)* @THDiskFile_readLong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @THDiskFile_readLong(i32* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %7, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @THArgCheck(i32 %22, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @THArgCheck(i32 %27, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %164

34:                                               ; preds = %3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 8
  br i1 %44, label %45, label %65

45:                                               ; preds = %39, %34
  %46 = load i64*, i64** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @fread__(i64* %46, i32 8, i64 %47, i32* %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i64*, i64** %5, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @THDiskFile_reverseMemory(i64* %60, i64* %61, i32 8, i64 %62)
  br label %64

64:                                               ; preds = %59, %56, %45
  br label %163

65:                                               ; preds = %39
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 4
  br i1 %69, label %70, label %110

70:                                               ; preds = %65
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @fread__(i64* %71, i32 4, i64 %72, i32* %75)
  store i64 %76, i64* %8, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %70
  %82 = load i64, i64* %8, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i64*, i64** %5, align 8
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @THDiskFile_reverseMemory(i64* %85, i64* %86, i32 4, i64 %87)
  br label %89

89:                                               ; preds = %84, %81, %70
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %106, %89
  %92 = load i64, i64* %9, align 8
  %93 = icmp ugt i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i64*, i64** %5, align 8
  %96 = bitcast i64* %95 to i32*
  %97 = load i64, i64* %9, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64*, i64** %5, align 8
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %103, 1
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %94
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %9, align 8
  br label %91

109:                                              ; preds = %91
  br label %162

110:                                              ; preds = %65
  %111 = call i32 (...) @THDiskFile_isLittleEndianCPU()
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = load i64, i64* %6, align 8
  %116 = mul i64 8, %115
  %117 = trunc i64 %116 to i32
  %118 = call i64* @THAlloc(i32 %117)
  store i64* %118, i64** %11, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @fread__(i64* %119, i32 8, i64 %120, i32* %123)
  store i64 %124, i64* %8, align 8
  %125 = load i64, i64* %8, align 8
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %143, %110
  %127 = load i64, i64* %12, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %126
  %130 = load i64*, i64** %11, align 8
  %131 = load i64, i64* %12, align 8
  %132 = sub i64 %131, 1
  %133 = mul i64 2, %132
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %133, %135
  %137 = getelementptr inbounds i64, i64* %130, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %5, align 8
  %140 = load i64, i64* %12, align 8
  %141 = sub i64 %140, 1
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %129
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, -1
  store i64 %145, i64* %12, align 8
  br label %126

146:                                              ; preds = %126
  %147 = load i64*, i64** %11, align 8
  %148 = call i32 @THFree(i64* %147)
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %146
  %154 = load i64, i64* %8, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i64*, i64** %5, align 8
  %158 = load i64*, i64** %5, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @THDiskFile_reverseMemory(i64* %157, i64* %158, i32 4, i64 %159)
  br label %161

161:                                              ; preds = %156, %153, %146
  br label %162

162:                                              ; preds = %161, %109
  br label %163

163:                                              ; preds = %162, %64
  br label %215

164:                                              ; preds = %3
  store i64 0, i64* %13, align 8
  br label %165

165:                                              ; preds = %184, %164
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* %6, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %165
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i64*, i64** %5, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds i64, i64* %173, i64 %174
  %176 = call i32 @fscanf(i32* %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %187

180:                                              ; preds = %169
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %8, align 8
  br label %183

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %13, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %13, align 8
  br label %165

187:                                              ; preds = %179, %165
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %187
  %194 = load i64, i64* %6, align 8
  %195 = icmp ugt i64 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %193
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @fgetc(i32* %199)
  store i32 %200, i32* %15, align 4
  %201 = load i32, i32* %15, align 4
  %202 = icmp ne i32 %201, 10
  br i1 %202, label %203, label %213

203:                                              ; preds = %196
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @EOF, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* %15, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @ungetc(i32 %208, i32* %211)
  br label %213

213:                                              ; preds = %207, %203, %196
  br label %214

214:                                              ; preds = %213, %193, %187
  br label %215

215:                                              ; preds = %214, %163
  %216 = load i64, i64* %8, align 8
  %217 = load i64, i64* %6, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %219
  %229 = load i64, i64* %8, align 8
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @THError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %229, i64 %230)
  br label %232

232:                                              ; preds = %228, %219
  br label %233

233:                                              ; preds = %232, %215
  %234 = load i64, i64* %8, align 8
  ret i64 %234
}

declare dso_local i32 @THArgCheck(i32, i32, i8*) #1

declare dso_local i64 @fread__(i64*, i32, i64, i32*) #1

declare dso_local i32 @THDiskFile_reverseMemory(i64*, i64*, i32, i64) #1

declare dso_local i32 @THDiskFile_isLittleEndianCPU(...) #1

declare dso_local i64* @THAlloc(i32) #1

declare dso_local i32 @THFree(i64*) #1

declare dso_local i32 @fscanf(i32*, i8*, i64*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @THError(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
