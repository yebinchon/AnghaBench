; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_HashData.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_url.c_test_HashData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_HashData.input = private unnamed_addr constant [16 x i32] [i32 81, i32 51, i32 79, i32 167, i32 69, i32 21, i32 240, i32 82, i32 144, i32 43, i32 231, i32 245, i32 253, i32 225, i32 166, i32 167], align 16
@test_HashData.expected = internal constant [16 x i32] [i32 84, i32 156, i32 146, i32 85, i32 205, i32 130, i32 255, i32 161, i32 142, i32 15, i32 207, i32 147, i32 20, i32 170, i32 227, i32 45], align 16
@test_HashData.expected2 = internal constant [32 x i32] [i32 84, i32 156, i32 146, i32 85, i32 205, i32 130, i32 255, i32 161, i32 142, i32 15, i32 207, i32 147, i32 20, i32 170, i32 227, i32 45, i32 71, i32 252, i32 128, i32 184, i32 208, i32 73, i32 230, i32 19, i32 42, i32 48, i32 81, i32 141, i32 249, i32 75, i32 7, i32 166], align 16
@test_HashData.expected3 = internal constant [16 x i32] [i32 43, i32 220, i32 154, i32 27, i32 240, i32 90, i32 249, i32 198, i32 190, i32 148, i32 109, i32 243, i32 51, i32 193, i32 54, i32 7], align 16
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Expected HashData to return S_OK, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Output buffer did not match expected contents\0A\00", align 1
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Expected HashData to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Expected the input buffer to be unchanged\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Expected the output buffer to be unchanged\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_HashData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_HashData() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [16 x i32], align 16
  %3 = alloca [32 x i32], align 16
  %4 = alloca i32, align 4
  %5 = bitcast [16 x i32]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([16 x i32]* @__const.test_HashData.input to i8*), i64 64, i1 false)
  %6 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %7 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %8 = call i64 @pHashData(i32* %6, i32 16, i32* %7, i32 16)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %1, align 8
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %1, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %20 = call i32 @memcmp(i32* %19, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_HashData.expected, i64 0, i64 0), i32 64)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %18, %0
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %28 = call i64 @pHashData(i32* %26, i32 16, i32* %27, i32 32)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %1, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %40 = call i32 @memcmp(i32* %39, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_HashData.expected2, i64 0, i64 0), i32 128)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %38, %25
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %48 = call i64 @pHashData(i32* %46, i32 8, i32* %47, i32 16)
  store i64 %48, i64* %1, align 8
  %49 = load i64, i64* %1, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %1, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i64, i64* %1, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %45
  %59 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %60 = call i32 @memcmp(i32* %59, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_HashData.expected3, i64 0, i64 0), i32 64)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %45
  %66 = call i64 @pHashData(i32* null, i32 0, i32* null, i32 0)
  store i64 %66, i64* %1, align 8
  %67 = load i64, i64* %1, align 8
  %68 = load i64, i64* @E_INVALIDARG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @broken(i32 %74)
  %76 = icmp ne i64 %75, 0
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi i1 [ true, %65 ], [ %76, %70 ]
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %1, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %83 = call i64 @pHashData(i32* %82, i32 0, i32* null, i32 0)
  store i64 %83, i64* %1, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* @E_INVALIDARG, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = load i64, i64* %1, align 8
  %89 = load i64, i64* @S_OK, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @broken(i32 %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %87, %77
  %95 = phi i1 [ true, %77 ], [ %93, %87 ]
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %1, align 8
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %100 = call i64 @pHashData(i32* null, i32 0, i32* %99, i32 0)
  store i64 %100, i64* %1, align 8
  %101 = load i64, i64* %1, align 8
  %102 = load i64, i64* @E_INVALIDARG, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = load i64, i64* %1, align 8
  %106 = load i64, i64* @S_OK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @broken(i32 %108)
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %104, %94
  %112 = phi i1 [ true, %94 ], [ %110, %104 ]
  %113 = zext i1 %112 to i32
  %114 = load i64, i64* %1, align 8
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %125, %111
  %117 = load i32, i32* %4, align 4
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(i32* %118)
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %123
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %116

128:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %138, %128
  %130 = load i32, i32* %4, align 4
  %131 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %132 = call i32 @ARRAY_SIZE(i32* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %136
  store i32 255, i32* %137, align 4
  br label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %129

141:                                              ; preds = %129
  %142 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %143 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %144 = call i64 @pHashData(i32* %142, i32 0, i32* %143, i32 0)
  store i64 %144, i64* %1, align 8
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @S_OK, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %1, align 8
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %149)
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %171, %141
  %152 = load i32, i32* %4, align 4
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 0
  %154 = call i32 @ARRAY_SIZE(i32* %153)
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %151
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  %162 = zext i1 %161 to i32
  %163 = call i32 (i32, i8*, ...) @ok(i32 %162, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [16 x i32], [16 x i32]* %2, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %174

170:                                              ; preds = %156
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %4, align 4
  br label %151

174:                                              ; preds = %169, %151
  store i32 0, i32* %4, align 4
  br label %175

175:                                              ; preds = %195, %174
  %176 = load i32, i32* %4, align 4
  %177 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 0
  %178 = call i32 @ARRAY_SIZE(i32* %177)
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %175
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %184, 255
  %186 = zext i1 %185 to i32
  %187 = call i32 (i32, i8*, ...) @ok(i32 %186, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [32 x i32], [32 x i32]* %3, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 255
  br i1 %192, label %193, label %194

193:                                              ; preds = %180
  br label %198

194:                                              ; preds = %180
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  br label %175

198:                                              ; preds = %193, %175
  %199 = call i64 @pHashData(i32* inttoptr (i64 3735928559 to i32*), i32 0, i32* inttoptr (i64 3735928559 to i32*), i32 0)
  store i64 %199, i64* %1, align 8
  %200 = load i64, i64* %1, align 8
  %201 = load i64, i64* @S_OK, align 8
  %202 = icmp eq i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i64, i64* %1, align 8
  %205 = call i32 (i32, i8*, ...) @ok(i32 %203, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %204)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @pHashData(i32*, i32, i32*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
