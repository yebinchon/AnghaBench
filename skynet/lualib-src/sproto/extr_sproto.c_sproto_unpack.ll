; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_unpack.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_sproto_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sproto_unpack(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %127, %4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %128

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 255
  br i1 %33, label %34, label %79

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %130

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %42, 8
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %130

49:                                               ; preds = %38
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @memcpy(i32* %60, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %49
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %10, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %127

79:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %123, %79
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 8
  br i1 %82, label %83, label %126

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %15, align 4
  %86 = ashr i32 %84, %85
  %87 = and i32 %86, 1
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 -1, i32* %5, align 4
  br label %130

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %9, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %11, align 8
  br label %105

105:                                              ; preds = %97, %94
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %7, align 4
  br label %120

110:                                              ; preds = %83
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32*, i32** %11, align 8
  store i32 0, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %9, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %11, align 8
  br label %119

119:                                              ; preds = %113, %110
  br label %120

120:                                              ; preds = %119, %105
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %80

126:                                              ; preds = %80
  br label %127

127:                                              ; preds = %126, %64
  br label %21

128:                                              ; preds = %21
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %93, %48, %37
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
