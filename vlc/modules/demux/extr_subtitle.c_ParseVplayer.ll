; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseVplayer.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseVplayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d:%d:%d%*c%[^\0D\0A]\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseVplayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseVplayer(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
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
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %18 to i64
  %20 = call i32 @VLC_UNUSED(i64 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = call i32 @VLC_UNUSED(i64 %22)
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @VLC_UNUSED(i64 %24)
  br label %26

26:                                               ; preds = %60, %5
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @TextGetLine(i32* %27)
  store i8* %28, i8** %13, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %6, align 4
  br label %91

33:                                               ; preds = %26
  %34 = load i8*, i8** %13, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %35, 1
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %41, i32* %6, align 4
  br label %91

42:                                               ; preds = %33
  %43 = load i8*, i8** %13, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @sscanf(i8* %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %14, i32* %15, i32* %16, i8* %44)
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load i32, i32* %14, align 4
  %49 = mul nsw i32 %48, 3600
  %50 = load i32, i32* %15, align 4
  %51 = mul nsw i32 %50, 60
  %52 = add nsw i32 %49, %51
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @vlc_tick_from_sec(i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  br label %63

60:                                               ; preds = %42
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @free(i8* %61)
  br label %26

63:                                               ; preds = %47
  store i64 0, i64* %17, align 8
  br label %64

64:                                               ; preds = %83, %63
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %17, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 124
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** %12, align 8
  %80 = load i64, i64* %17, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 10, i8* %81, align 1
  br label %82

82:                                               ; preds = %78, %71
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %17, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %17, align 8
  br label %64

86:                                               ; preds = %64
  %87 = load i8*, i8** %12, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %86, %40, %31
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @vlc_tick_from_sec(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
