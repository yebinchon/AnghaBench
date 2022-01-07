; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseAQT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseAQT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"-->> %d\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i64)* @ParseAQT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseAQT(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_8__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = call i32 @VLC_UNUSED(i64 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = call i32 @VLC_UNUSED(i64 %21)
  %23 = load i64, i64* %11, align 8
  %24 = call i32 @VLC_UNUSED(i64 %23)
  %25 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %26

26:                                               ; preds = %83, %5
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = call i8* @TextGetLine(%struct.TYPE_7__* %27)
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %34, i32* %6, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load i8*, i8** %16, align 8
  %37 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = call i32 @TextPreviousLine(%struct.TYPE_7__* %50)
  br label %84

52:                                               ; preds = %48
  br label %83

53:                                               ; preds = %35
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %16, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = add nsw i32 %58, %60
  %62 = add nsw i32 %61, 1
  %63 = call i8* @realloc_or_free(i8* %57, i32 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %53
  %67 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %67, i32* %6, align 4
  br label %89

68:                                               ; preds = %53
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = call i32 @strcat(i8* %69, i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @strcat(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %84

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %52
  br label %26

84:                                               ; preds = %81, %49
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %66, %31
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @TextGetLine(%struct.TYPE_7__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @TextPreviousLine(%struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc_or_free(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
