; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Tag.h_ID3TAG_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Tag.h_ID3TAG_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32 (i64, i32*, i64, i8*)*, i8*)* @ID3TAG_Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ID3TAG_Parse(i32* %0, i64 %1, i32 (i64, i32*, i64, i8*)* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i64, i32*, i64, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i64, i32*, i64, i8*)* %2, i32 (i64, i32*, i64, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %16, 10
  br i1 %17, label %18, label %89

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @ID3TAG_IsTag(i32* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 6
  %29 = call i64 @ID3TAG_ReadSize(i32* %28, i32 1)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = sub i64 %31, 10
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %108

35:                                               ; preds = %22
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 10
  store i64 %37, i64* %10, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 10
  store i32* %39, i32** %13, align 8
  br label %40

40:                                               ; preds = %81, %35
  %41 = load i64, i64* %11, align 8
  %42 = icmp ugt i64 %41, 10
  br i1 %42, label %43, label %88

43:                                               ; preds = %40
  %44 = load i32*, i32** %13, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @VLC_FOURCC(i32 %46, i32 %49, i32 %52, i32 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @ID3TAG_ReadSize(i32* %58, i32 %59)
  %61 = add i64 %60, 10
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %43
  store i64 0, i64* %5, align 8
  br label %108

66:                                               ; preds = %43
  %67 = load i64, i64* %15, align 8
  %68 = icmp ugt i64 %67, 10
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32 (i64, i32*, i64, i8*)*, i32 (i64, i32*, i64, i8*)** %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = load i64, i64* %15, align 8
  %75 = sub i64 %74, 10
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 %70(i64 %71, i32* %73, i64 %75, i8* %76)
  %78 = load i32, i32* @VLC_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %88

81:                                               ; preds = %69, %66
  %82 = load i64, i64* %15, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %13, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %11, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %11, align 8
  br label %40

88:                                               ; preds = %80, %40
  br label %89

89:                                               ; preds = %88, %18, %4
  %90 = load i64, i64* %10, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %10, align 8
  %95 = sub i64 %93, %94
  %96 = icmp uge i64 %95, 10
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %10, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i64 @ID3TAG_IsTag(i32* %100, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 10
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %103, %97, %92, %89
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %5, align 8
  br label %108

108:                                              ; preds = %106, %65, %34
  %109 = load i64, i64* %5, align 8
  ret i64 %109
}

declare dso_local i64 @ID3TAG_IsTag(i32*, i32) #1

declare dso_local i64 @ID3TAG_ReadSize(i32*, i32) #1

declare dso_local i64 @VLC_FOURCC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
