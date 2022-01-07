; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_resource.c_DisplayVoutTitle.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_resource.c_DisplayVoutTitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @DisplayVoutTitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DisplayVoutTitle(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %86

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32* @input_GetItem(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @input_item_GetNowPlayingFb(i32* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @vout_DisplayTitle(i32* %30, i8* %31)
  br label %83

33:                                               ; preds = %24, %15
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @input_item_GetArtist(i32* %34)
  store i8* %35, i8** %7, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i8* @input_item_GetTitle(i32* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %33
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @input_item_GetName(i32* %48)
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %60)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @vout_DisplayTitle(i32* %64, i8* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %63, %58
  br label %78

70:                                               ; preds = %53, %50
  %71 = load i8*, i8** %8, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %4, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @vout_DisplayTitle(i32* %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %70
  br label %78

78:                                               ; preds = %77, %69
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @free(i8* %81)
  br label %83

83:                                               ; preds = %78, %29
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %83, %14
  ret void
}

declare dso_local i32* @input_GetItem(i32*) #1

declare dso_local i8* @input_item_GetNowPlayingFb(i32*) #1

declare dso_local i32 @vout_DisplayTitle(i32*, i8*) #1

declare dso_local i8* @input_item_GetArtist(i32*) #1

declare dso_local i8* @input_item_GetTitle(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @input_item_GetName(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
