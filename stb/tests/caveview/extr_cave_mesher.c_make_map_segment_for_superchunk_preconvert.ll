; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_make_map_segment_for_superchunk_preconvert.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_mesher.c_make_map_segment_for_superchunk_preconvert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_map_segment_for_superchunk_preconvert(i32 %0, i32 %1, i32 %2, [4 x i32*]* %3, [34 x [18 x i32]]* %4, [34 x [18 x i32]]* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32*]*, align 8
  %11 = alloca [34 x [18 x i32]]*, align 8
  %12 = alloca [34 x [18 x i32]]*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store [4 x i32*]* %3, [4 x i32*]** %10, align 8
  store [34 x [18 x i32]]* %4, [34 x [18 x i32]]** %11, align 8
  store [34 x [18 x i32]]* %5, [34 x [18 x i32]]** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 -1, i32* %14, align 4
  br label %30

30:                                               ; preds = %124, %6
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 3
  br i1 %32, label %33, label %127

33:                                               ; preds = %30
  store i32 -1, i32* %13, align 4
  br label %34

34:                                               ; preds = %120, %33
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %123

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = mul nsw i32 %38, 16
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %41, 16
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %16, align 4
  %44 = load [4 x i32*]*, [4 x i32*]** %10, align 8
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32*], [4 x i32*]* %44, i64 %47
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32*], [4 x i32*]* %48, i64 0, i64 %51
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %19, align 8
  store i32 0, i32* %18, align 4
  br label %54

54:                                               ; preds = %116, %37
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %112, %57
  %59 = load i32, i32* %17, align 4
  %60 = icmp slt i32 %59, 16
  br i1 %60, label %61, label %115

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %111

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = add nsw i32 %67, %68
  %70 = icmp slt i32 %69, 34
  br i1 %70, label %71, label %111

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %18, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %71
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %77, %78
  %80 = icmp slt i32 %79, 34
  br i1 %80, label %81, label %111

81:                                               ; preds = %76
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load [34 x [18 x i32]]*, [34 x [18 x i32]]** %11, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [34 x [18 x i32]], [34 x [18 x i32]]* %86, i64 %90
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %18, align 4
  %94 = add nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [34 x [18 x i32]], [34 x [18 x i32]]* %91, i64 0, i64 %95
  %97 = getelementptr inbounds [18 x i32], [18 x i32]* %96, i64 0, i64 0
  %98 = load [34 x [18 x i32]]*, [34 x [18 x i32]]** %12, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [34 x [18 x i32]], [34 x [18 x i32]]* %98, i64 %102
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [34 x [18 x i32]], [34 x [18 x i32]]* %103, i64 0, i64 %107
  %109 = getelementptr inbounds [18 x i32], [18 x i32]* %108, i64 0, i64 0
  %110 = call i32 @make_converted_fastchunk(i32* %82, i32 %83, i32 %84, i32 %85, i32* %97, i32* %109)
  br label %111

111:                                              ; preds = %81, %76, %71, %66, %61
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %58

115:                                              ; preds = %58
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %18, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %54

119:                                              ; preds = %54
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %34

123:                                              ; preds = %34
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  br label %30

127:                                              ; preds = %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @make_converted_fastchunk(i32*, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
