; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph.h_xiph_PackHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph.h_xiph_PackHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XIPH_MAX_HEADER_COUNT = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i8**, i32)* @xiph_PackHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_PackHeaders(i32* %0, i8** %1, i32* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ule i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @XIPH_MAX_HEADER_COUNT, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %5
  %26 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %26, i32* %6, align 4
  br label %158

27:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %55, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %14, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub i32 %41, 1
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %14, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = udiv i32 %49, 255
  %51 = add i32 1, %50
  %52 = load i32, i32* %13, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %44, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %59, %60
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @malloc(i32 %64)
  %66 = load i8**, i8*** %8, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %71, i32* %6, align 4
  br label %158

72:                                               ; preds = %58
  %73 = load i8**, i8*** %8, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** %15, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sub i32 %76, 1
  %78 = load i32*, i32** %15, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %15, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %105, %72
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub i32 %82, 1
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %16, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %103, %85
  %92 = load i32, i32* %17, align 4
  %93 = icmp uge i32 %92, 255
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32*, i32** %15, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %15, align 8
  store i32 255, i32* %95, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sub i32 %97, 255
  store i32 %98, i32* %17, align 4
  br label %103

99:                                               ; preds = %91
  %100 = load i32, i32* %17, align 4
  %101 = load i32*, i32** %15, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %15, align 8
  store i32 %100, i32* %101, align 4
  br label %104

103:                                              ; preds = %94
  br label %91

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %16, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %16, align 4
  br label %80

108:                                              ; preds = %80
  store i32 0, i32* %18, align 4
  br label %109

109:                                              ; preds = %142, %108
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %145

113:                                              ; preds = %109
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %18, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ugt i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %113
  %121 = load i32*, i32** %15, align 8
  %122 = load i8**, i8*** %10, align 8
  %123 = load i32, i32* %18, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %18, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @memcpy(i32* %121, i8* %126, i32 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %18, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %15, align 8
  br label %141

141:                                              ; preds = %120, %113
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %18, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %18, align 4
  br label %109

145:                                              ; preds = %109
  %146 = load i32*, i32** %15, align 8
  %147 = load i8**, i8*** %8, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = icmp eq i32* %146, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %145, %70, %25
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
