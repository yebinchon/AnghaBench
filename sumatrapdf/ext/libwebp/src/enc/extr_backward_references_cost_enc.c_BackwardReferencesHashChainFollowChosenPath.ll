; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_BackwardReferencesHashChainFollowChosenPath.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_backward_references_cost_enc.c_BackwardReferencesHashChainFollowChosenPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*, %struct.TYPE_5__*)* @BackwardReferencesHashChainFollowChosenPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BackwardReferencesHashChainFollowChosenPath(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_5__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @VP8LColorCacheInit(i32* %18, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %136

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %6
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = call i32 @VP8LClearBackwardRefs(%struct.TYPE_5__* %37)
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %126, %36
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %129

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %84

51:                                               ; preds = %43
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @VP8LHashChainFindOffset(i32* %52, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = load i32, i32* %21, align 4
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @PixOrCopyCreateCopy(i32 %56, i32 %57)
  %59 = call i32 @VP8LBackwardRefsCursorAdd(%struct.TYPE_5__* %55, i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %51
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @VP8LColorCacheInsert(i32* %18, i32 %74)
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %20, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %20, align 4
  br label %63

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79, %51
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %15, align 4
  br label %125

84:                                               ; preds = %43
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @VP8LColorCacheContains(i32* %18, i32 %92)
  br label %95

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %87
  %96 = phi i32 [ %93, %87 ], [ -1, %94 ]
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %23, align 4
  %101 = call i32 @PixOrCopyCreateCacheIdx(i32 %100)
  store i32 %101, i32* %22, align 4
  br label %119

102:                                              ; preds = %95
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @VP8LColorCacheInsert(i32* %18, i32 %110)
  br label %112

112:                                              ; preds = %105, %102
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PixOrCopyCreateLiteral(i32 %117)
  store i32 %118, i32* %22, align 4
  br label %119

119:                                              ; preds = %112, %99
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @VP8LBackwardRefsCursorAdd(%struct.TYPE_5__* %120, i32 %121)
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %119, %80
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %39

129:                                              ; preds = %39
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %129, %34
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @VP8LColorCacheClear(i32* %18)
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %16, align 4
  ret i32 %142
}

declare dso_local i32 @VP8LColorCacheInit(i32*, i32) #1

declare dso_local i32 @VP8LClearBackwardRefs(%struct.TYPE_5__*) #1

declare dso_local i32 @VP8LHashChainFindOffset(i32*, i32) #1

declare dso_local i32 @VP8LBackwardRefsCursorAdd(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @PixOrCopyCreateCopy(i32, i32) #1

declare dso_local i32 @VP8LColorCacheInsert(i32*, i32) #1

declare dso_local i32 @VP8LColorCacheContains(i32*, i32) #1

declare dso_local i32 @PixOrCopyCreateCacheIdx(i32) #1

declare dso_local i32 @PixOrCopyCreateLiteral(i32) #1

declare dso_local i32 @VP8LColorCacheClear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
