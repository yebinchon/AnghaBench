; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....meta_engineID3Meta.h_ID3LinkFrameTagHandler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_....meta_engineID3Meta.h_ID3LinkFrameTagHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"artworkURL_\00", align 1
@vlc_meta_ArtworkURL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32*)* @ID3LinkFrameTagHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ID3LinkFrameTagHandler(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 13
  br i1 %16, label %17, label %75

17:                                               ; preds = %4
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = bitcast i32* %22 to i8*
  store i8* %23, i8** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i64 @strnlen(i8* %26, i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %11, align 8
  %31 = sub i64 %30, 1
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %20
  %34 = load i64, i64* %12, align 8
  %35 = icmp ugt i64 %34, 11
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i8*, i8** %10, align 8
  %38 = call i64 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %37, i64 11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %74, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %43 = call i8* @vlc_meta_Get(i32* %41, i32 %42)
  store i8* %43, i8** %13, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = sub i64 %51, %52
  %54 = call i64 @strncmp(i8* %47, i8* %50, i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %46, %40
  %57 = load i8*, i8** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %61, %62
  %64 = sub i64 %63, 1
  %65 = call i8* @strndup(i8* %60, i64 %64)
  store i8* %65, i8** %14, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* @vlc_meta_ArtworkURL, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @vlc_meta_Set(i32* %66, i32 %67, i8* %68)
  %70 = load i8*, i8** %14, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %56, %46
  br label %74

74:                                               ; preds = %73, %36, %33, %20
  store i32 1, i32* %5, align 4
  br label %76

75:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @strnlen(i8*, i64) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @vlc_meta_Get(i32*, i32) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
