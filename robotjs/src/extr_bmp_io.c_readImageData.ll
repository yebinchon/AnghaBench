; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_readImageData.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_readImageData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64 }

@MMRGB_IS_BGR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32*, i64, i64, i64, i64)* @readImageData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @readImageData(i32* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %9, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i64* @calloc(i32 1, i64 %25)
  store i64* %26, i64** %13, align 8
  %27 = load i64, i64* @MMRGB_IS_BGR, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = urem i64 %30, 4
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load i64*, i64** %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @fread(i64* %34, i64 %35, i32 1, i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64*, i64** %13, align 8
  %41 = call i32 @free(i64* %40)
  store i64* null, i64** %6, align 8
  br label %124

42:                                               ; preds = %33
  br label %122

43:                                               ; preds = %29, %5
  %44 = load i64, i64* %11, align 8
  %45 = call i64* @malloc(i64 %44)
  store i64* %45, i64** %14, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  %48 = mul i64 %46, %47
  %49 = add i64 %48, 3
  %50 = and i64 %49, -4
  store i64 %50, i64* %16, align 8
  %51 = load i64*, i64** %14, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i64* null, i64** %6, align 8
  br label %124

54:                                               ; preds = %43
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ule i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  store i64 0, i64* %15, align 8
  br label %60

60:                                               ; preds = %116, %54
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %11, align 8
  %67 = mul i64 %65, %66
  store i64 %67, i64* %17, align 8
  %68 = load i64*, i64** %14, align 8
  store i64* %68, i64** %19, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @fread(i64* %69, i64 %70, i32 1, i32* %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load i64*, i64** %13, align 8
  %76 = call i32 @free(i64* %75)
  %77 = load i64*, i64** %14, align 8
  %78 = call i32 @free(i64* %77)
  store i64* null, i64** %6, align 8
  br label %124

79:                                               ; preds = %64
  store i64 0, i64* %18, align 8
  br label %80

80:                                               ; preds = %112, %79
  %81 = load i64, i64* %18, align 8
  %82 = load i64, i64* %8, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %80
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %10, align 8
  %87 = mul i64 %85, %86
  store i64 %87, i64* %20, align 8
  %88 = load i64*, i64** %13, align 8
  %89 = load i64, i64* %17, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %20, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = bitcast i64* %92 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %21, align 8
  %94 = load i64*, i64** %19, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i64*, i64** %19, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i64*, i64** %19, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64*, i64** %19, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 %109
  store i64* %111, i64** %19, align 8
  br label %112

112:                                              ; preds = %84
  %113 = load i64, i64* %18, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %18, align 8
  br label %80

115:                                              ; preds = %80
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %15, align 8
  br label %60

119:                                              ; preds = %60
  %120 = load i64*, i64** %14, align 8
  %121 = call i32 @free(i64* %120)
  br label %122

122:                                              ; preds = %119, %42
  %123 = load i64*, i64** %13, align 8
  store i64* %123, i64** %6, align 8
  br label %124

124:                                              ; preds = %122, %74, %53, %39
  %125 = load i64*, i64** %6, align 8
  ret i64* %125
}

declare dso_local i64* @calloc(i32, i64) #1

declare dso_local i64 @fread(i64*, i64, i32, i32*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
