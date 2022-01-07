; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseDKS.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseDKS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"[%d:%d:%d]%[^\0D\0A]\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"[%d:%d:%d]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[br]\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseDKS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseDKS(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
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

29:                                               ; preds = %89, %5
  %30 = load i32*, i32** %9, align 8
  %31 = call i8* @TextGetLine(i32* %30)
  store i8* %31, i8** %19, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %6, align 4
  br label %113

36:                                               ; preds = %29
  %37 = load i8*, i8** %19, align 8
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
  br label %113

45:                                               ; preds = %36
  %46 = load i8*, i8** %19, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %13, i32* %14, i32* %15, i8* %47)
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %89

50:                                               ; preds = %45
  %51 = load i32, i32* %13, align 4
  %52 = mul nsw i32 %51, 3600
  %53 = load i32, i32* %14, align 4
  %54 = mul nsw i32 %53, 60
  %55 = add nsw i32 %52, %54
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i8* @vlc_tick_from_sec(i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i8* @TextGetLine(i32* %61)
  store i8* %62, i8** %19, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %68, i32* %6, align 4
  br label %113

69:                                               ; preds = %50
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %16, i32* %17, i32* %18)
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 %74, 3600
  %76 = load i32, i32* %17, align 4
  %77 = mul nsw i32 %76, 60
  %78 = add nsw i32 %75, %77
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i8* @vlc_tick_from_sec(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %88

85:                                               ; preds = %69
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %73
  br label %92

89:                                               ; preds = %45
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @free(i8* %90)
  br label %29

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %97, %92
  %94 = load i8*, i8** %12, align 8
  %95 = call i8* @strstr(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %95, i8** %20, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i8*, i8** %20, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %20, align 8
  store i8 10, i8* %98, align 1
  %100 = load i8*, i8** %20, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 3
  %103 = load i8*, i8** %20, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = call i64 @strlen(i8* %104)
  %106 = add nsw i64 %105, 1
  %107 = call i32 @memmove(i8* %100, i8* %102, i64 %106)
  br label %93

108:                                              ; preds = %93
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %108, %65, %43, %34
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i8* @vlc_tick_from_sec(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
