; ModuleID = '/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_input_FindArtInCacheUsingItemUID.c'
source_filename = "/home/carl/AnghaBench/vlc/src/preparser/extr_art.c_input_FindArtInCacheUsingItemUID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"arturl\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_FindArtInCacheUsingItemUID(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2049 x i8], align 16
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i8* @input_item_GetInfo(i32* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @free(i8* %16)
  %18 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @GetDirByItemUIDs(i8* %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @GetFileByItemUID(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = call i32* @vlc_fopen(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = getelementptr inbounds [2049 x i8], [2049 x i8]* %9, i64 0, i64 0
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @fgets(i8* %34, i32 2048, i32* %35)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds [2049 x i8], [2049 x i8]* %9, i64 0, i64 0
  %41 = call i32 @input_item_SetArtURL(i32* %39, i8* %40)
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @fclose(i32* %43)
  br label %45

45:                                               ; preds = %42, %28
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  br label %48

48:                                               ; preds = %45, %19
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %54, i32* %2, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %53, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @input_item_GetInfo(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @GetDirByItemUIDs(i8*) #1

declare dso_local i8* @GetFileByItemUID(i8*, i8*) #1

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @input_item_SetArtURL(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
