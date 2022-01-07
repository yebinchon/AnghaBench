; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..xiph.h_xiph_SplitHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..xiph.h_xiph_SplitHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32, i8*)* @xiph_SplitHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_SplitHeaders(i32* %0, i8** %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %13, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ult i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %6, align 4
  br label %153

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @xiph_CountHeaders(i32* %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %6, align 4
  br label %153

36:                                               ; preds = %28
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %96, %42
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sub i32 %47, 1
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %99

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %16, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %75, %50
  %56 = load i32*, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = icmp uge i32* %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %6, align 4
  br label %153

61:                                               ; preds = %55
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %12, align 8
  %72 = load i32, i32* %70, align 4
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %75

74:                                               ; preds = %61
  br label %76

75:                                               ; preds = %61
  br label %55

76:                                               ; preds = %74
  %77 = load i32, i32* @UINT_MAX, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sub i32 %77, %78
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %87, i32* %6, align 4
  br label %153

88:                                               ; preds = %76
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %16, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %16, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %45

99:                                               ; preds = %45
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %15, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32*, i32** %13, align 8
  %105 = icmp ugt i32* %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %107, i32* %6, align 4
  br label %153

108:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub i32 %111, 1
  %113 = icmp ult i32 %110, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %109
  %115 = load i32*, i32** %12, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = load i8**, i8*** %8, align 8
  %118 = load i32, i32* %17, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %116, i8** %120, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %17, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %12, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32* %128, i32** %12, align 8
  br label %129

129:                                              ; preds = %114
  %130 = load i32, i32* %17, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %17, align 4
  br label %109

132:                                              ; preds = %109
  %133 = load i32*, i32** %13, align 8
  %134 = load i32*, i32** %12, align 8
  %135 = ptrtoint i32* %133 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = trunc i64 %138 to i32
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sub i32 %141, 1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  store i32 %139, i32* %144, align 4
  %145 = load i32*, i32** %12, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = load i8**, i8*** %8, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sub i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  store i8* %146, i8** %151, align 8
  %152 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %132, %106, %86, %59, %34, %26
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @xiph_CountHeaders(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
