; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_compress.c_FSE_normalizeCount.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_fse_compress.c_FSE_normalizeCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FSE_DEFAULT_TABLELOG = common dso_local global i32 0, align 4
@FSE_MIN_TABLELOG = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@FSE_MAX_TABLELOG = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@__const.FSE_normalizeCount.rtbTable = private unnamed_addr constant [8 x i32] [i32 0, i32 473195, i32 504333, i32 520860, i32 550000, i32 700000, i32 750000, i32 830000], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FSE_normalizeCount(i16* %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store i16* %0, i16** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @FSE_DEFAULT_TABLELOG, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FSE_MIN_TABLELOG, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @GENERIC, align 4
  %34 = call i64 @ERROR(i32 %33)
  store i64 %34, i64* %6, align 8
  br label %213

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @FSE_MAX_TABLELOG, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @tableLog_tooLarge, align 4
  %41 = call i64 @ERROR(i32 %40)
  store i64 %41, i64* %6, align 8
  br label %213

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @FSE_minTableLog(i64 %44, i32 %45)
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @GENERIC, align 4
  %50 = call i64 @ERROR(i32 %49)
  store i64 %50, i64* %6, align 8
  br label %213

51:                                               ; preds = %42
  %52 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 16 bitcast ([8 x i32]* @__const.FSE_normalizeCount.rtbTable to i8*), i64 32, i1 false)
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 62, %53
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %10, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @div_u64(i32 undef, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 20
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 1, %63
  store i32 %64, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i16 0, i16* %19, align 2
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = lshr i64 %65, %67
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %70

70:                                               ; preds = %171, %51
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ule i32 %71, %72
  br i1 %73, label %74, label %174

74:                                               ; preds = %70
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %17, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %10, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  store i64 0, i64* %6, align 8
  br label %213

84:                                               ; preds = %74
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %17, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load i16*, i16** %7, align 8
  %93 = load i32, i32* %17, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  store i16 0, i16* %95, align 2
  br label %171

96:                                               ; preds = %84
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %17, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp ule i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96
  %105 = load i16*, i16** %7, align 8
  %106 = load i32, i32* %17, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i16, i16* %105, i64 %107
  store i16 -1, i16* %108, align 2
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %16, align 4
  br label %170

111:                                              ; preds = %96
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %17, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %14, align 4
  %118 = mul i32 %116, %117
  %119 = load i32, i32* %13, align 4
  %120 = lshr i32 %118, %119
  %121 = trunc i32 %120 to i16
  store i16 %121, i16* %21, align 2
  %122 = load i16, i16* %21, align 2
  %123 = sext i16 %122 to i32
  %124 = icmp slt i32 %123, 8
  br i1 %124, label %125, label %151

125:                                              ; preds = %111
  %126 = load i32, i32* %15, align 4
  %127 = load i16, i16* %21, align 2
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %126, %130
  store i32 %131, i32* %22, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %17, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %14, align 4
  %138 = mul i32 %136, %137
  %139 = load i16, i16* %21, align 2
  %140 = sext i16 %139 to i32
  %141 = load i32, i32* %13, align 4
  %142 = shl i32 %140, %141
  %143 = sub i32 %138, %142
  %144 = load i32, i32* %22, align 4
  %145 = icmp ugt i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i16, i16* %21, align 2
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %148, %146
  %150 = trunc i32 %149 to i16
  store i16 %150, i16* %21, align 2
  br label %151

151:                                              ; preds = %125, %111
  %152 = load i16, i16* %21, align 2
  %153 = sext i16 %152 to i32
  %154 = load i16, i16* %19, align 2
  %155 = sext i16 %154 to i32
  %156 = icmp sgt i32 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i16, i16* %21, align 2
  store i16 %158, i16* %19, align 2
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i16, i16* %21, align 2
  %162 = load i16*, i16** %7, align 8
  %163 = load i32, i32* %17, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %162, i64 %164
  store i16 %161, i16* %165, align 2
  %166 = load i16, i16* %21, align 2
  %167 = sext i16 %166 to i32
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %16, align 4
  br label %170

170:                                              ; preds = %160, %104
  br label %171

171:                                              ; preds = %170, %91
  %172 = load i32, i32* %17, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %70

174:                                              ; preds = %70
  %175 = load i32, i32* %16, align 4
  %176 = sub nsw i32 0, %175
  %177 = load i16*, i16** %7, align 8
  %178 = load i32, i32* %18, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i16, i16* %177, i64 %179
  %181 = load i16, i16* %180, align 2
  %182 = sext i16 %181 to i32
  %183 = ashr i32 %182, 1
  %184 = icmp sge i32 %176, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %174
  %186 = load i16*, i16** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load i32*, i32** %9, align 8
  %189 = load i64, i64* %10, align 8
  %190 = load i32, i32* %11, align 4
  %191 = call i64 @FSE_normalizeM2(i16* %186, i32 %187, i32* %188, i64 %189, i32 %190)
  store i64 %191, i64* %23, align 8
  %192 = load i64, i64* %23, align 8
  %193 = call i64 @FSE_isError(i64 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = load i64, i64* %23, align 8
  store i64 %196, i64* %6, align 8
  br label %213

197:                                              ; preds = %185
  br label %210

198:                                              ; preds = %174
  %199 = load i32, i32* %16, align 4
  %200 = trunc i32 %199 to i16
  %201 = sext i16 %200 to i32
  %202 = load i16*, i16** %7, align 8
  %203 = load i32, i32* %18, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i16, i16* %202, i64 %204
  %206 = load i16, i16* %205, align 2
  %207 = sext i16 %206 to i32
  %208 = add nsw i32 %207, %201
  %209 = trunc i32 %208 to i16
  store i16 %209, i16* %205, align 2
  br label %210

210:                                              ; preds = %198, %197
  %211 = load i32, i32* %8, align 4
  %212 = zext i32 %211 to i64
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %210, %195, %83, %48, %39, %32
  %214 = load i64, i64* %6, align 8
  ret i64 %214
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_minTableLog(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @FSE_normalizeM2(i16*, i32, i32*, i64, i32) #1

declare dso_local i64 @FSE_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
