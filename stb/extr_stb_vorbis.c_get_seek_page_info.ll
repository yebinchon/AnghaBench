; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_get_seek_page_info.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_get_seek_page_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @get_seek_page_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_seek_page_info(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [27 x i8], align 16
  %7 = alloca [255 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @stb_vorbis_get_file_offset(i32* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %16 = call i32 @getn(i32* %14, i8* %15, i8 signext 27)
  %17 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 0
  %18 = load i8, i8* %17, align 16
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 79
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 103
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 2
  %28 = load i8, i8* %27, align 2
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 103
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 83
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26, %21, %2
  store i32 0, i32* %3, align 4
  br label %100

37:                                               ; preds = %31
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 0
  %40 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 26
  %41 = load i8, i8* %40, align 2
  %42 = call i32 @getn(i32* %38, i8* %39, i8 signext %41)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %57, %37
  %44 = load i32, i32* %8, align 4
  %45 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 26
  %46 = load i8, i8* %45, align 2
  %47 = sext i8 %46 to i32
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %43

60:                                               ; preds = %43
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 27
  %65 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 26
  %66 = load i8, i8* %65, align 2
  %67 = sext i8 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 6
  %75 = load i8, i8* %74, align 2
  %76 = sext i8 %75 to i32
  %77 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 7
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = add nsw i32 %76, %80
  %82 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 8
  %83 = load i8, i8* %82, align 8
  %84 = sext i8 %83 to i32
  %85 = shl i32 %84, 16
  %86 = add nsw i32 %81, %85
  %87 = getelementptr inbounds [27 x i8], [27 x i8]* %6, i64 0, i64 9
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = shl i32 %89, 24
  %91 = add nsw i32 %86, %90
  %92 = trunc i32 %91 to i8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i8 %92, i8* %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @set_file_offset(i32* %95, i64 %98)
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %60, %36
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @stb_vorbis_get_file_offset(i32*) #1

declare dso_local i32 @getn(i32*, i8*, i8 signext) #1

declare dso_local i32 @set_file_offset(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
