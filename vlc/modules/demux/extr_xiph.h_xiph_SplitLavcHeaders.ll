; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph.h_xiph_SplitLavcHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph.h_xiph_SplitLavcHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32, i8*)* @xiph_SplitLavcHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_SplitLavcHeaders(i32* %0, i8** %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %25, i32* %6, align 4
  br label %87

26:                                               ; preds = %5
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @xiph_CountLavcHeaders(i32* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %33, i32* %6, align 4
  br label %87

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %14, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load i32*, i32** %12, align 8
  %47 = call i32 @GetWBE(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %15, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add i32 2, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %52, i64 %59
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ugt i32* %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %64, i32* %6, align 4
  br label %87

65:                                               ; preds = %45
  %66 = load i32*, i32** %12, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = bitcast i32* %67 to i8*
  %69 = load i8**, i8*** %8, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %68, i8** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, 2
  %79 = load i32*, i32** %12, align 8
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %12, align 8
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %41

85:                                               ; preds = %41
  %86 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %63, %32, %24
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @xiph_CountLavcHeaders(i32*, i32) #1

declare dso_local i32 @GetWBE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
