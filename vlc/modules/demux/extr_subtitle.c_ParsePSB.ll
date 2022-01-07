; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParsePSB.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParsePSB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"{%d:%d:%d}{%d:%d:%d}%[^\0D\0A]\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParsePSB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParsePSB(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = call i32 @VLC_UNUSED(i64 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = ptrtoint i32* %24 to i64
  %26 = call i32 @VLC_UNUSED(i64 %25)
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @VLC_UNUSED(i64 %27)
  br label %29

29:                                               ; preds = %71, %5
  %30 = load i32*, i32** %9, align 8
  %31 = call i8* @TextGetLine(i32* %30)
  store i8* %31, i8** %20, align 8
  %32 = load i8*, i8** %20, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %6, align 4
  br label %105

36:                                               ; preds = %29
  %37 = load i8*, i8** %20, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 1
  %40 = call i8* @malloc(i64 %39)
  store i8* %40, i8** %12, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %44, i32* %6, align 4
  br label %105

45:                                               ; preds = %36
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @sscanf(i8* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i8* %47)
  %49 = icmp eq i32 %48, 7
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = mul nsw i32 %51, 3600
  %53 = load i32, i32* %15, align 4
  %54 = mul nsw i32 %53, 60
  %55 = add nsw i32 %52, %54
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i8* @vlc_tick_from_sec(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %17, align 4
  %62 = mul nsw i32 %61, 3600
  %63 = load i32, i32* %18, align 4
  %64 = mul nsw i32 %63, 60
  %65 = add nsw i32 %62, %64
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i8* @vlc_tick_from_sec(i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %74

71:                                               ; preds = %45
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  br label %29

74:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %97, %74
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 124
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i8*, i8** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 10, i8* %95, align 1
  br label %96

96:                                               ; preds = %91, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %75

100:                                              ; preds = %75
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %43, %34
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i8* @vlc_tick_from_sec(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
