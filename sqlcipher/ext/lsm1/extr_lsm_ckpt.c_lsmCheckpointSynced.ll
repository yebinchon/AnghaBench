; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointSynced.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointSynced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_META_RW_PAGE_SIZE = common dso_local global i32 0, align 4
@CKPT_HDR_NCKPT = common dso_local global i32 0, align 4
@CKPT_HDR_NWRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmCheckpointSynced(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @LSM_OK, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %117

27:                                               ; preds = %24, %4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @lsmFsMetaPageGet(i32 %30, i32 0, i32 %31, i32** %10)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @LSM_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %116

36:                                               ; preds = %27
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @lsmFsMetaPageData(i32* %37, i32* %13)
  store i32* %38, i32** %14, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @LSM_META_RW_PAGE_SIZE, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @CKPT_HDR_NCKPT, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = call i32 @lsmGetU32(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = load i32, i32* @LSM_META_RW_PAGE_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = udiv i64 %53, 4
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %113

56:                                               ; preds = %36
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32* @lsmMallocRc(i32 %59, i32 %63, i32* %9)
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %112

67:                                               ; preds = %56
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32 @memcpy(i32* %68, i32* %69, i32 %73)
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @ckptChangeEndianness(i32* %75, i32 %76)
  %78 = load i32*, i32** %15, align 8
  %79 = call i64 @ckptChecksumOk(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %67
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32*, i32** %15, align 8
  %86 = call i32 @lsmCheckpointId(i32* %85, i32 0)
  %87 = load i32*, i32** %6, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32*, i32** %15, align 8
  %93 = call i32 @lsmCheckpointLogOffset(i32* %92)
  %94 = ashr i32 %93, 1
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %88
  %97 = load i32*, i32** %8, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32*, i32** %15, align 8
  %101 = load i64, i64* @CKPT_HDR_NWRITE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %8, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %96
  br label %106

106:                                              ; preds = %105, %67
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @lsmFree(i32 %109, i32* %110)
  br label %112

112:                                              ; preds = %106, %56
  br label %113

113:                                              ; preds = %112, %36
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @lsmFsMetaPageRelease(i32* %114)
  br label %116

116:                                              ; preds = %113, %27
  br label %117

117:                                              ; preds = %116, %24
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 2
  br i1 %122, label %135, label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* @LSM_OK, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %127, %123, %120
  %136 = load i32*, i32** %6, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32*, i32** %6, align 8
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32*, i32** %7, align 8
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i32*, i32** %8, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32*, i32** %8, align 8
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %148, %145
  br label %151

151:                                              ; preds = %150, %127
  %152 = load i32, i32* %9, align 4
  ret i32 %152
}

declare dso_local i32 @lsmFsMetaPageGet(i32, i32, i32, i32**) #1

declare dso_local i32* @lsmFsMetaPageData(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmGetU32(i32*) #1

declare dso_local i32* @lsmMallocRc(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ckptChangeEndianness(i32*, i32) #1

declare dso_local i64 @ckptChecksumOk(i32*) #1

declare dso_local i32 @lsmCheckpointId(i32*, i32) #1

declare dso_local i32 @lsmCheckpointLogOffset(i32*) #1

declare dso_local i32 @lsmFree(i32, i32*) #1

declare dso_local i32 @lsmFsMetaPageRelease(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
