; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/sha1/extr_sha1.c_SHA1Update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/sha1/extr_sha1.c_SHA1Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1Update(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %130

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 3
  %24 = and i32 %23, 63
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %6, align 8
  %26 = shl i64 %25, 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %26
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = shl i64 %36, 3
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %17
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %17
  %47 = load i64, i64* %6, align 8
  %48 = lshr i64 %47, 29
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, %48
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 64, %57
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %113

63:                                               ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = call i32 @bcopy(i32* %67, i32* %74, i64 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @SHA1_TRANSFORM(%struct.TYPE_7__* %78, i32* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %66, %63
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %86, %88
  %90 = lshr i64 %89, 6
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @SHA1_TRANSFORM_BLOCKS(%struct.TYPE_7__* %95, i32* %99, i32 %100)
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 %102, 6
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %94, %85
  %107 = load i64, i64* %6, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %130

112:                                              ; preds = %106
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %46
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 %125, %127
  %129 = call i32 @bcopy(i32* %117, i32* %124, i64 %128)
  br label %130

130:                                              ; preds = %113, %111, %16
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @SHA1_TRANSFORM(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @SHA1_TRANSFORM_BLOCKS(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
