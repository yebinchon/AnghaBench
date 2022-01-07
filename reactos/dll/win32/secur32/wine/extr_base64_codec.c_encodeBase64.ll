; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_base64_codec.c_encodeBase64.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/secur32/wine/extr_base64_codec.c_encodeBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"bytes is %d, pad bytes is %d\0A\00", align 1
@SEC_E_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@b64 = common dso_local global i8* null, align 8
@SEC_E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @encodeBase64(i32* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 8
  %20 = add nsw i32 %19, 5
  %21 = sdiv i32 %20, 6
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = srem i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* %15, align 4
  %27 = srem i32 %26, 4
  %28 = sub nsw i32 4, %27
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32 [ %28, %25 ], [ 0, %29 ]
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32*, i32** %11, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @SEC_E_BUFFER_TOO_SMALL, align 4
  store i32 %46, i32* %6, align 4
  br label %239

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = sdiv i32 %48, 3
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %53, %47
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %127

53:                                               ; preds = %50
  %54 = load i8*, i8** @b64, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 2
  %59 = and i32 %58, 63
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %54, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 %62, i8* %67, align 1
  %68 = load i8*, i8** @b64, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 4
  %73 = and i32 %72, 48
  %74 = load i32*, i32** %14, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = or i32 %73, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %68, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  store i8 %82, i8* %87, align 1
  %88 = load i8*, i8** @b64, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 2
  %93 = and i32 %92, 60
  %94 = load i32*, i32** %14, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 6
  %98 = and i32 %97, 3
  %99 = or i32 %93, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %88, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  %108 = load i8*, i8** @b64, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 63
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %108, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = load i8*, i8** %9, align 8
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %116, i64 %119
  store i8 %115, i8* %120, align 1
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %13, align 4
  %123 = load i32*, i32** %14, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32* %124, i32** %14, align 8
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %12, align 4
  br label %50

127:                                              ; preds = %50
  %128 = load i32, i32* %16, align 4
  switch i32 %128, label %232 [
    i32 1, label %129
    i32 2, label %188
  ]

129:                                              ; preds = %127
  %130 = load i8*, i8** @b64, align 8
  %131 = load i32*, i32** %14, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 2
  %135 = and i32 %134, 63
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %130, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %9, align 8
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 0
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %139, i64 %142
  store i8 %138, i8* %143, align 1
  %144 = load i8*, i8** @b64, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 4
  %149 = and i32 %148, 48
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 4
  %154 = and i32 %153, 15
  %155 = or i32 %149, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %144, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %159, i64 %162
  store i8 %158, i8* %163, align 1
  %164 = load i8*, i8** @b64, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 2
  %169 = and i32 %168, 60
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %164, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = load i8*, i8** %9, align 8
  %174 = load i32, i32* %13, align 4
  %175 = add nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 %172, i8* %177, align 1
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 3
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %178, i64 %181
  store i8 61, i8* %182, align 1
  %183 = load i8*, i8** %9, align 8
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  store i8 0, i8* %187, align 1
  br label %237

188:                                              ; preds = %127
  %189 = load i8*, i8** @b64, align 8
  %190 = load i32*, i32** %14, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = ashr i32 %192, 2
  %194 = and i32 %193, 63
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %189, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = load i8*, i8** %9, align 8
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 0
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  store i8 %197, i8* %202, align 1
  %203 = load i8*, i8** @b64, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 48
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %203, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = load i8*, i8** %9, align 8
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %212, i64 %215
  store i8 %211, i8* %216, align 1
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 61, i8* %221, align 1
  %222 = load i8*, i8** %9, align 8
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %222, i64 %225
  store i8 61, i8* %226, align 1
  %227 = load i8*, i8** %9, align 8
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  store i8 0, i8* %231, align 1
  br label %237

232:                                              ; preds = %127
  %233 = load i8*, i8** %9, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  store i8 0, i8* %236, align 1
  br label %237

237:                                              ; preds = %232, %188, %129
  %238 = load i32, i32* @SEC_E_OK, align 4
  store i32 %238, i32* %6, align 4
  br label %239

239:                                              ; preds = %237, %45
  %240 = load i32, i32* %6, align 4
  ret i32 %240
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
