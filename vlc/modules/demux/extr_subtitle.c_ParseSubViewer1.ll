; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseSubViewer1.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseSubViewer1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"[%d:%d:%d]\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseSubViewer1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseSubViewer1(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
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
  %19 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @VLC_UNUSED(i64 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = call i32 @VLC_UNUSED(i64 %24)
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @VLC_UNUSED(i64 %26)
  br label %28

28:                                               ; preds = %92, %5
  %29 = load i32*, i32** %9, align 8
  %30 = call i8* @TextGetLine(i32* %29)
  store i8* %30, i8** %19, align 8
  %31 = load i8*, i8** %19, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %6, align 4
  br label %98

35:                                               ; preds = %28
  %36 = load i8*, i8** %19, align 8
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i32* %15)
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %92

39:                                               ; preds = %35
  %40 = load i32, i32* %13, align 4
  %41 = mul nsw i32 %40, 3600
  %42 = load i32, i32* %14, align 4
  %43 = mul nsw i32 %42, 60
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i8* @vlc_tick_from_sec(i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i8* @TextGetLine(i32* %50)
  store i8* %51, i8** %19, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %55, i32* %6, align 4
  br label %98

56:                                               ; preds = %39
  %57 = load i8*, i8** %19, align 8
  %58 = call i8* @strdup(i8* %57)
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %62, i32* %6, align 4
  br label %98

63:                                               ; preds = %56
  %64 = load i32*, i32** %9, align 8
  %65 = call i8* @TextGetLine(i32* %64)
  store i8* %65, i8** %19, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @free(i8* %69)
  %71 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %71, i32* %6, align 4
  br label %98

72:                                               ; preds = %63
  %73 = load i8*, i8** %19, align 8
  %74 = call i32 @sscanf(i8* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %16, i32* %17, i32* %18)
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %16, align 4
  %78 = mul nsw i32 %77, 3600
  %79 = load i32, i32* %17, align 4
  %80 = mul nsw i32 %79, 60
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %81, %82
  %84 = call i8* @vlc_tick_from_sec(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %91

88:                                               ; preds = %72
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %76
  br label %93

92:                                               ; preds = %35
  br label %28

93:                                               ; preds = %91
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %68, %61, %54, %33
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i8* @vlc_tick_from_sec(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
