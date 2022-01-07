; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptLoadLevels.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_ckptLoadLevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32*, i32, %struct.TYPE_9__*, i8*, i8* }

@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32, %struct.TYPE_9__**)* @ckptLoadLevels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ckptLoadLevels(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_9__** %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_9__** %4, %struct.TYPE_9__*** %10, align 8
  %19 = load i32, i32* @LSM_OK, align 4
  store i32 %19, i32* %12, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %14, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %136, %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @LSM_OK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %139

32:                                               ; preds = %30
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @lsmMallocZeroRc(i32 %35, i32 48, i32* %12)
  %37 = inttoptr i64 %36 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %17, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @LSM_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %135

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 65535
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 65535
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %41
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = mul i64 4, %81
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %18, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i64 @lsmMallocZeroRc(i32 %86, i32 %87, i32* %12)
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i32* %89, i32** %91, align 8
  br label %92

92:                                               ; preds = %77, %41
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @LSM_OK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %92
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %98 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %98, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store %struct.TYPE_9__** %100, %struct.TYPE_9__*** %14, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = call i32 @ckptNewSegment(i32* %101, i32* %15, i32* %103)
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %120, %96
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = call i32 @ckptNewSegment(i32* %112, i32* %15, i32* %118)
  br label %120

120:                                              ; preds = %111
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %105

123:                                              ; preds = %105
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = load i32*, i32** %7, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %132 = call i32 @ckptSetupMerge(%struct.TYPE_8__* %129, i32* %130, i32* %15, %struct.TYPE_9__* %131)
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133, %92
  br label %135

135:                                              ; preds = %134, %32
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %22

139:                                              ; preds = %30
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @LSM_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = call i32 @lsmSortedFreeLevel(i32 %146, %struct.TYPE_9__* %147)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  br label %149

149:                                              ; preds = %143, %139
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %151 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  store %struct.TYPE_9__* %150, %struct.TYPE_9__** %151, align 8
  %152 = load i32, i32* %15, align 4
  %153 = load i32*, i32** %8, align 8
  store i32 %152, i32* %153, align 4
  %154 = load i32, i32* %12, align 4
  ret i32 %154
}

declare dso_local i64 @lsmMallocZeroRc(i32, i32, i32*) #1

declare dso_local i32 @ckptNewSegment(i32*, i32*, i32*) #1

declare dso_local i32 @ckptSetupMerge(%struct.TYPE_8__*, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lsmSortedFreeLevel(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
