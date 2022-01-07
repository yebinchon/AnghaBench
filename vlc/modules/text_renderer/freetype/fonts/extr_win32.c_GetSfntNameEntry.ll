; ModuleID = '/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetSfntNameEntry.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/text_renderer/freetype/fonts/extr_win32.c_GetSfntNameEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i8*, i8*, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*)* @GetSfntNameEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSfntNameEntry(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  %14 = call i8* @U16_AT(i32* %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 10
  %18 = call i8* @U16_AT(i32* %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32*, i32** %8, align 8
  %29 = icmp ugt i32* %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22, %4
  %31 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call i8* @U16_AT(i32* %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i8* @U16_AT(i32* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = call i8* @U16_AT(i32* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = call i8* @U16_AT(i32* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %32, %30
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i8* @U16_AT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
