; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpEncodeGetType.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpEncodeGetType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_ENCODING_13BIT_INT = common dso_local global i32 0, align 4
@LP_ENCODING_16BIT_INT = common dso_local global i8 0, align 1
@LP_ENCODING_24BIT_INT = common dso_local global i8 0, align 1
@LP_ENCODING_32BIT_INT = common dso_local global i8 0, align 1
@LP_ENCODING_64BIT_INT = common dso_local global i8 0, align 1
@LP_ENCODING_INT = common dso_local global i32 0, align 4
@LP_ENCODING_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpEncodeGetType(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @lpStringToInt64(i8* %12, i32 %13, i32* %10)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %212

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 127
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32*, i32** %9, align 8
  store i32 1, i32* %27, align 4
  br label %210

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %10, align 4
  %30 = icmp sge i32 %29, -4096
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp sle i32 %32, 4095
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 8192, %38
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32, i32* @LP_ENCODING_13BIT_INT, align 4
  %44 = or i32 %42, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8 %50, i8* %52, align 1
  %53 = load i32*, i32** %9, align 8
  store i32 2, i32* %53, align 4
  br label %209

54:                                               ; preds = %31, %28
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, -32768
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = icmp sle i32 %58, 32767
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 65536, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i8, i8* @LP_ENCODING_16BIT_INT, align 1
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 %67, i8* %69, align 1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 8
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 %77, i8* %79, align 1
  %80 = load i32*, i32** %9, align 8
  store i32 3, i32* %80, align 4
  br label %208

81:                                               ; preds = %57, %54
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, -8388608
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp sle i32 %85, 8388607
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 16777216, %91
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8, i8* @LP_ENCODING_24BIT_INT, align 1
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %10, align 4
  %98 = and i32 %97, 255
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  store i8 %99, i8* %101, align 1
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 8
  %104 = and i32 %103, 255
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 2
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %10, align 4
  %109 = ashr i32 %108, 16
  %110 = trunc i32 %109 to i8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 3
  store i8 %110, i8* %112, align 1
  %113 = load i32*, i32** %9, align 8
  store i32 4, i32* %113, align 4
  br label %207

114:                                              ; preds = %84, %81
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp sge i64 %116, -2147483648
  br i1 %117, label %118, label %154

118:                                              ; preds = %114
  %119 = load i32, i32* %10, align 4
  %120 = icmp sle i32 %119, 2147483647
  br i1 %120, label %121, label %154

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 undef, %125
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i8, i8* @LP_ENCODING_32BIT_INT, align 1
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  store i8 %128, i8* %130, align 1
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %133, i8* %135, align 1
  %136 = load i32, i32* %10, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 2
  store i8 %139, i8* %141, align 1
  %142 = load i32, i32* %10, align 4
  %143 = ashr i32 %142, 16
  %144 = and i32 %143, 255
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 3
  store i8 %145, i8* %147, align 1
  %148 = load i32, i32* %10, align 4
  %149 = ashr i32 %148, 24
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  store i8 %150, i8* %152, align 1
  %153 = load i32*, i32** %9, align 8
  store i32 5, i32* %153, align 4
  br label %206

154:                                              ; preds = %118, %114
  %155 = load i32, i32* %10, align 4
  store i32 %155, i32* %11, align 4
  %156 = load i8, i8* @LP_ENCODING_64BIT_INT, align 1
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  store i8 %156, i8* %158, align 1
  %159 = load i32, i32* %11, align 4
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %8, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 1
  store i8 %161, i8* %163, align 1
  %164 = load i32, i32* %11, align 4
  %165 = ashr i32 %164, 8
  %166 = and i32 %165, 255
  %167 = trunc i32 %166 to i8
  %168 = load i8*, i8** %8, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  store i8 %167, i8* %169, align 1
  %170 = load i32, i32* %11, align 4
  %171 = ashr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = trunc i32 %172 to i8
  %174 = load i8*, i8** %8, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 3
  store i8 %173, i8* %175, align 1
  %176 = load i32, i32* %11, align 4
  %177 = ashr i32 %176, 24
  %178 = and i32 %177, 255
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %8, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 4
  store i8 %179, i8* %181, align 1
  %182 = load i32, i32* %11, align 4
  %183 = ashr i32 %182, 32
  %184 = and i32 %183, 255
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %8, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 5
  store i8 %185, i8* %187, align 1
  %188 = load i32, i32* %11, align 4
  %189 = ashr i32 %188, 40
  %190 = and i32 %189, 255
  %191 = trunc i32 %190 to i8
  %192 = load i8*, i8** %8, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 6
  store i8 %191, i8* %193, align 1
  %194 = load i32, i32* %11, align 4
  %195 = ashr i32 %194, 48
  %196 = and i32 %195, 255
  %197 = trunc i32 %196 to i8
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 7
  store i8 %197, i8* %199, align 1
  %200 = load i32, i32* %11, align 4
  %201 = ashr i32 %200, 56
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %8, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 8
  store i8 %202, i8* %204, align 1
  %205 = load i32*, i32** %9, align 8
  store i32 9, i32* %205, align 4
  br label %206

206:                                              ; preds = %154, %127
  br label %207

207:                                              ; preds = %206, %93
  br label %208

208:                                              ; preds = %207, %66
  br label %209

209:                                              ; preds = %208, %40
  br label %210

210:                                              ; preds = %209, %22
  %211 = load i32, i32* @LP_ENCODING_INT, align 4
  store i32 %211, i32* %5, align 4
  br label %233

212:                                              ; preds = %4
  %213 = load i32, i32* %7, align 4
  %214 = icmp slt i32 %213, 64
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 1, %216
  %218 = load i32*, i32** %9, align 8
  store i32 %217, i32* %218, align 4
  br label %231

219:                                              ; preds = %212
  %220 = load i32, i32* %7, align 4
  %221 = icmp slt i32 %220, 4096
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = add nsw i32 2, %223
  %225 = load i32*, i32** %9, align 8
  store i32 %224, i32* %225, align 4
  br label %230

226:                                              ; preds = %219
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 5, %227
  %229 = load i32*, i32** %9, align 8
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %226, %222
  br label %231

231:                                              ; preds = %230, %215
  %232 = load i32, i32* @LP_ENCODING_STRING, align 4
  store i32 %232, i32* %5, align 4
  br label %233

233:                                              ; preds = %231, %210
  %234 = load i32, i32* %5, align 4
  ret i32 %234
}

declare dso_local i64 @lpStringToInt64(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
