; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_classify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@classify.dir_map = internal constant [16 x i32] [i32 134, i32 134, i32 130, i32 137, i32 136, i32 135, i32 141, i32 138, i32 140, i32 129, i32 128, i32 132, i32 142, i32 133, i32 139, i32 131], align 16
@NI = common dso_local global i32 0, align 4
@LRE = common dso_local global i32 0, align 4
@RLE = common dso_local global i32 0, align 4
@LRO = common dso_local global i32 0, align 4
@RLO = common dso_local global i32 0, align 4
@LRI = common dso_local global i32 0, align 4
@RLI = common dso_local global i32 0, align 4
@FSI = common dso_local global i32 0, align 4
@PDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, %struct.TYPE_3__*)* @classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @classify(i32* %0, i32* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %119, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %122

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_char_typeW(i32 %19)
  %21 = ashr i32 %20, 12
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* @classify.dir_map, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %118 [
    i32 136, label %34
    i32 131, label %58
  ]

34:                                               ; preds = %14
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %118

40:                                               ; preds = %34
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %57 [
    i32 45, label %46
    i32 43, label %46
    i32 47, label %52
  ]

46:                                               ; preds = %40, %40
  %47 = load i32, i32* @NI, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 138, i32* %56, align 4
  br label %57

57:                                               ; preds = %40, %52, %46
  br label %118

58:                                               ; preds = %14
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %117 [
    i32 8234, label %64
    i32 8235, label %70
    i32 8236, label %76
    i32 8237, label %81
    i32 8238, label %87
    i32 8294, label %93
    i32 8295, label %99
    i32 8296, label %105
    i32 8297, label %111
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* @LRE, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %117

70:                                               ; preds = %58
  %71 = load i32, i32* @RLE, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %117

76:                                               ; preds = %58
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 131, i32* %80, align 4
  br label %117

81:                                               ; preds = %58
  %82 = load i32, i32* @LRO, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %117

87:                                               ; preds = %58
  %88 = load i32, i32* @RLO, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  br label %117

93:                                               ; preds = %58
  %94 = load i32, i32* @LRI, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %117

99:                                               ; preds = %58
  %100 = load i32, i32* @RLI, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %117

105:                                              ; preds = %58
  %106 = load i32, i32* @FSI, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %106, i32* %110, align 4
  br label %117

111:                                              ; preds = %58
  %112 = load i32, i32* @PDI, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %58, %111, %105, %99, %93, %87, %81, %76, %70, %64
  br label %118

118:                                              ; preds = %14, %117, %57, %39
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %10

122:                                              ; preds = %10
  ret void
}

declare dso_local i32 @get_char_typeW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
