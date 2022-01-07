; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseDVDSubtitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseDVDSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"{T %d:%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseDVDSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDVDSubtitle(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
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

29:                                               ; preds = %57, %5
  %30 = load i32*, i32** %9, align 8
  %31 = call i8* @TextGetLine(i32* %30)
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %6, align 4
  br label %110

36:                                               ; preds = %29
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @sscanf(i8* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i32* %17)
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* %14, align 4
  %42 = mul nsw i32 %41, 3600
  %43 = load i32, i32* %15, align 4
  %44 = mul nsw i32 %43, 60
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i64 @vlc_tick_from_sec(i32 %47)
  %49 = load i32, i32* %17, align 4
  %50 = mul nsw i32 %49, 10
  %51 = call i64 @VLC_TICK_FROM_MS(i32 %50)
  %52 = add nsw i64 %48, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  br label %58

57:                                               ; preds = %36
  br label %29

58:                                               ; preds = %40
  %59 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %63, i32* %6, align 4
  br label %110

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i32*, i32** %9, align 8
  %67 = call i8* @TextGetLine(i32* %66)
  store i8* %67, i8** %18, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %12, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %73, i32* %6, align 4
  br label %110

74:                                               ; preds = %65
  %75 = load i8*, i8** %18, align 8
  %76 = call i32 @strlen(i8* %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** %18, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 125
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %89, i32* %6, align 4
  br label %110

90:                                               ; preds = %79, %74
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @strlen(i8* %91)
  store i32 %92, i32* %20, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %19, align 4
  %96 = add nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = add nsw i32 %97, 1
  %99 = call i8* @realloc_or_free(i8* %93, i32 %98)
  store i8* %99, i8** %12, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %103, i32* %6, align 4
  br label %110

104:                                              ; preds = %90
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = call i32 @strcat(i8* %105, i8* %106)
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %65

110:                                              ; preds = %102, %85, %70, %62, %34
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @vlc_tick_from_sec(i32) #1

declare dso_local i64 @VLC_TICK_FROM_MS(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc_or_free(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
