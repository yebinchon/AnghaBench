; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedReadData.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_sortedReadData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i8**, %struct.TYPE_4__*)* @sortedReadData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sortedReadData(i32* %0, i32* %1, i32 %2, i32 %3, i8** %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %25 = load i32, i32* @LSM_OK, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32* @fsPageData(i32* %26, i32* %16)
  store i32* %27, i32** %18, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @SEGMENT_NRECORD_OFFSET(i32 %29)
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @lsmGetU16(i32* %31)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @SEGMENT_EOF(i32 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %6
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %39, %40
  br label %42

42:                                               ; preds = %38, %6
  %43 = phi i1 [ false, %6 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32*, i32** %18, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = load i8**, i8*** %12, align 8
  store i8* %56, i8** %57, align 8
  br label %192

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %20, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @lsmPageEnv(i32* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @sortedBlobGrow(i32 %62, %struct.TYPE_4__* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @LSM_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %194

71:                                               ; preds = %58
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to i32*
  store i32* %78, i32** %21, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %12, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @lsmFsPageRef(i32* %83)
  br label %85

85:                                               ; preds = %185, %71
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @LSM_OK, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %189

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %20, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @LSM_MIN(i32 %90, i32 %93)
  store i32 %94, i32* %24, align 4
  %95 = load i32, i32* %24, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %89
  %98 = load i32*, i32** %21, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32*, i32** %18, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %24, align 4
  %109 = call i32 @memcpy(i32* %103, i32* %107, i32 %108)
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %19, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %20, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %19, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %97
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp eq i32 %119, %120
  br label %122

122:                                              ; preds = %118, %97
  %123 = phi i1 [ true, %97 ], [ %121, %118 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  br label %126

126:                                              ; preds = %122, %89
  %127 = load i32, i32* %19, align 4
  %128 = icmp sge i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @assert(i32 %129)
  %131 = load i32, i32* %19, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %189

134:                                              ; preds = %126
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %20, align 4
  %137 = sub nsw i32 %136, %135
  store i32 %137, i32* %20, align 4
  br label %138

138:                                              ; preds = %165, %134
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @lsmFsDbPageNext(i32* %139, i32* %140, i32 1, i32** %22)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @LSM_OK, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i32*, i32** %22, align 8
  %147 = icmp eq i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i32, i32* @LSM_CORRUPT_BKPT, align 4
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %148, %145, %138
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %170

154:                                              ; preds = %150
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @lsmFsPageRelease(i32* %155)
  %157 = load i32*, i32** %22, align 8
  store i32* %157, i32** %9, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = call i32* @fsPageData(i32* %158, i32* %16)
  store i32* %159, i32** %18, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = load i32, i32* %16, align 4
  %162 = call i64 @SEGMENT_FLAGS_OFFSET(i32 %161)
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = call i32 @lsmGetU16(i32* %163)
  store i32 %164, i32* %23, align 4
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %138, label %170

170:                                              ; preds = %165, %153
  %171 = load i32, i32* %16, align 4
  %172 = load i32*, i32** %18, align 8
  %173 = load i32, i32* %16, align 4
  %174 = sub nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = call i32 @lsmGetU16(i32* %176)
  %178 = call i32 @SEGMENT_EOF(i32 %171, i32 %177)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %170
  %182 = load i32, i32* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %182, %183
  br label %185

185:                                              ; preds = %181, %170
  %186 = phi i1 [ false, %170 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %85

189:                                              ; preds = %133, %85
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @lsmFsPageRelease(i32* %190)
  br label %192

192:                                              ; preds = %189, %51
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %69
  %195 = load i32, i32* %7, align 4
  ret i32 %195
}

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @lsmGetU16(i32*) #1

declare dso_local i64 @SEGMENT_NRECORD_OFFSET(i32) #1

declare dso_local i32 @SEGMENT_EOF(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sortedBlobGrow(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @lsmPageEnv(i32*) #1

declare dso_local i32 @lsmFsPageRef(i32*) #1

declare dso_local i32 @LSM_MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lsmFsDbPageNext(i32*, i32*, i32, i32**) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i64 @SEGMENT_FLAGS_OFFSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
