; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_jumpIfRequired.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_log.c_jumpIfRequired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_12__, i8*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64, i8* }

@LSM_LOG_JUMP = common dso_local global i64 0, align 8
@LSM_LOG_PAD1 = common dso_local global i64 0, align 8
@LSM_LOG_PAD2 = common dso_local global i64 0, align 8
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32*)* @jumpIfRequired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jumpIfRequired(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [10 x i64], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [7 x i64], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %22, %27
  %29 = icmp sgt i64 %19, %28
  br i1 %29, label %30, label %167

30:                                               ; preds = %4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %37, %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 17
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = icmp slt i64 %34, %47
  br i1 %48, label %49, label %167

49:                                               ; preds = %30
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i64 1
  store i8* %54, i8** %11, align 8
  %55 = load i64, i64* @LSM_LOG_JUMP, align 8
  %56 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  store i64 %55, i64* %56, align 16
  %57 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 1
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @lsmVarintPut64(i64* %57, i8* %58)
  %60 = add nsw i32 1, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = srem i32 %66, 8
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %49
  %71 = bitcast [7 x i64]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %71, i8 0, i64 56, i1 false)
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 8, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i64, i64* @LSM_LOG_PAD1, align 8
  %78 = getelementptr inbounds [7 x i64], [7 x i64]* %15, i64 0, i64 0
  store i64 %77, i64* %78, align 16
  br label %86

79:                                               ; preds = %70
  %80 = load i64, i64* @LSM_LOG_PAD2, align 8
  %81 = getelementptr inbounds [7 x i64], [7 x i64]* %15, i64 0, i64 0
  store i64 %80, i64* %81, align 16
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [7 x i64], [7 x i64]* %15, i64 0, i64 1
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %76
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = getelementptr inbounds [7 x i64], [7 x i64]* %15, i64 0, i64 0
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @lsmStringBinAppend(%struct.TYPE_12__* %88, i64* %89, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @LSM_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %5, align 4
  br label %169

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %49
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = getelementptr inbounds [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @lsmStringBinAppend(%struct.TYPE_12__* %100, i64* %101, i32 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @LSM_OK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %169

109:                                              ; preds = %98
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = srem i32 %113, 8
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = call i32 @lsmFsWriteLog(i32 %120, i64 %123, %struct.TYPE_12__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @LSM_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %109
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %169

132:                                              ; preds = %109
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @logUpdateCksum(%struct.TYPE_11__* %133, i32 %137)
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %141, %146
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 0, i32* %161, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %132
  %165 = load i32*, i32** %9, align 8
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %164, %132
  br label %167

167:                                              ; preds = %166, %30, %4
  %168 = load i32, i32* @LSM_OK, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %167, %130, %107, %95
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @lsmVarintPut64(i64*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lsmStringBinAppend(%struct.TYPE_12__*, i64*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lsmFsWriteLog(i32, i64, %struct.TYPE_12__*) #1

declare dso_local i32 @logUpdateCksum(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
