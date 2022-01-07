; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_pic_info.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_pic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi_pic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi_pic_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x %struct.TYPE_2__], align 16
  %14 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @skip(i32* %15, i32 92)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @get16(i32* %17)
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @get16(i32* %20)
  %22 = load i32*, i32** %8, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @at_eof(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 268435456, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @stbi_rewind(i32* %39)
  store i32 0, i32* %5, align 4
  br label %100

41:                                               ; preds = %31, %27
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @skip(i32* %42, i32 8)
  br label %44

44:                                               ; preds = %90, %41
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %100

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %13, i64 0, i64 %52
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %14, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @get8(i32* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @get8u(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @get8u(i32* %61)
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = call i8* @get8u(i32* %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @at_eof(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %49
  %79 = load i32*, i32** %6, align 8
  %80 = call i32 @stbi_rewind(i32* %79)
  store i32 0, i32* %5, align 4
  br label %100

81:                                               ; preds = %49
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 8
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @stbi_rewind(i32* %87)
  store i32 0, i32* %5, align 4
  br label %100

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %44, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 3
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %93, %86, %78, %48, %38, %26
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @skip(i32*, i32) #1

declare dso_local i32 @get16(i32*) #1

declare dso_local i64 @at_eof(i32*) #1

declare dso_local i32 @stbi_rewind(i32*) #1

declare dso_local i32 @get8(i32*) #1

declare dso_local i8* @get8u(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
