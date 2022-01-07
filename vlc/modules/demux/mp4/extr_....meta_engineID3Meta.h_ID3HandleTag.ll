; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Meta.h_ID3HandleTag.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Meta.h_ID3HandleTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"REPLAYGAIN_\00", align 1
@ID3_tag_to_metatype = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i32*, i32*)* @ID3HandleTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ID3HandleTag(i32* %0, i64 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @VLC_FOURCC(i8 signext 87, i8 signext 88, i8 signext 88, i8 signext 88)
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @ID3LinkFrameTagHandler(i32* %22, i64 %23, i32* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %123

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @VLC_FOURCC(i8 signext 84, i8 signext 88, i8 signext 88, i8 signext 88)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i8* @ID3TextConvert(i32* %32, i64 %33, i8** %12)
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %78

37:                                               ; preds = %31
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strlen(i8* %38)
  %40 = add nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %37
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @strncasecmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %53, %54
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ID3TextConv(i32* %52, i64 %55, i32 %58, i8** %15)
  store i8* %59, i8** %16, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load i32*, i32** %10, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @vlc_meta_AddExtra(i32* %63, i8* %64, i8* %65)
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %62, %49
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %37
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32*, i32** %10, align 8
  %75 = call i64 @vlc_meta_GetExtraCount(i32* %74)
  %76 = icmp sgt i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %6, align 4
  br label %123

78:                                               ; preds = %31
  br label %121

79:                                               ; preds = %27
  %80 = bitcast i64* %9 to i8*
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 8
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 84
  br i1 %84, label %85, label %120

85:                                               ; preds = %79
  store i64 0, i64* %17, align 8
  br label %86

86:                                               ; preds = %116, %85
  %87 = load i64, i64* %17, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ID3_tag_to_metatype, align 8
  %89 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %88)
  %90 = icmp ult i64 %87, %89
  br i1 %90, label %91, label %119

91:                                               ; preds = %86
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ID3_tag_to_metatype, align 8
  %93 = load i64, i64* %17, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %91
  %100 = load i32*, i32** %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ID3_tag_to_metatype, align 8
  %103 = load i64, i64* %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ID3_tag_to_metatype, align 8
  %108 = load i64, i64* %17, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @ID3TextTagHandler(i32* %100, i64 %101, i32 %106, i32 %111, i32* %112, i32* %113)
  store i32 %114, i32* %6, align 4
  br label %123

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %17, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %17, align 8
  br label %86

119:                                              ; preds = %86
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %78
  br label %122

122:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %99, %71, %21
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @ID3LinkFrameTagHandler(i32*, i64, i32*, i32*) #1

declare dso_local i8* @ID3TextConvert(i32*, i64, i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @ID3TextConv(i32*, i64, i32, i8**) #1

declare dso_local i32 @vlc_meta_AddExtra(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_meta_GetExtraCount(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @ID3TextTagHandler(i32*, i64, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
