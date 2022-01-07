; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsmd5.c_MD5add.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsmd5.c_MD5add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32)* @MD5add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MD5add(i64 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 3
  %20 = add nsw i32 %17, %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %3
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 29
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %36
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 3
  %45 = and i32 %44, 63
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %34
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %9, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 64, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @memmove(i32* %61, i32* %62, i32 %63)
  br label %120

65:                                               ; preds = %48
  %66 = load i32*, i32** %9, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @memmove(i32* %66, i32* %67, i32 %68)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @byteReverse(i32* %72, i32 16)
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @MD5_Transform(i32 %76, i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32* %84, i32** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %65, %34
  br label %89

89:                                               ; preds = %92, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp sge i32 %90, 64
  br i1 %91, label %92, label %113

92:                                               ; preds = %89
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @memmove(i32* %95, i32* %96, i32 64)
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @byteReverse(i32* %100, i32 16)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @MD5_Transform(i32 %104, i32* %107)
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 64
  store i32* %110, i32** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 64
  store i32 %112, i32* %6, align 4
  br label %89

113:                                              ; preds = %89
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @memmove(i32* %116, i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %113, %60
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @byteReverse(i32*, i32) #1

declare dso_local i32 @MD5_Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
