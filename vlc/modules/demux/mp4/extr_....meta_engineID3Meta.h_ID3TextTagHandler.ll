; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Meta.h_ID3TextTagHandler.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_....meta_engineID3Meta.h_ID3TextTagHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i8*, i32*, i32*)* @ID3TextTagHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ID3TextTagHandler(i32* %0, i64 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %77

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i8* @ID3TextConvert(i32* %21, i64 %22, i8** %14)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %71

26:                                               ; preds = %20
  %27 = load i8*, i8** %15, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = call i8* @vlc_meta_GetExtra(i32* %35, i8* %36)
  br label %42

38:                                               ; preds = %31
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i8* @vlc_meta_Get(i32* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i8* [ %37, %34 ], [ %41, %38 ]
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i8*, i8** %16, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i64 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46, %42
  %52 = load i32*, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32*, i32** %13, align 8
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i8*, i8** %11, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = call i32 @vlc_meta_AddExtra(i32* %60, i8* %61, i8* %62)
  br label %69

64:                                               ; preds = %56
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @vlc_meta_Set(i32* %65, i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %26, %20
  %72 = load i8*, i8** %14, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %15, align 8
  %75 = icmp ne i8* %74, null
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %19
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i8* @ID3TextConvert(i32*, i64, i8**) #1

declare dso_local i8* @vlc_meta_GetExtra(i32*, i8*) #1

declare dso_local i8* @vlc_meta_Get(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @vlc_meta_AddExtra(i32*, i8*, i8*) #1

declare dso_local i32 @vlc_meta_Set(i32*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
