; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleEditBoxKey.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_HandleEditBoxKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8*, i8* }

@BOX_SEARCH = common dso_local global i32 0, align 4
@BOX_OPEN = common dso_local global i32 0, align 4
@BOX_PLAYLIST = common dso_local global i8* null, align 8
@ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32)* @HandleEditBoxKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleEditBoxKey(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BOX_SEARCH, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i8* [ %23, %20 ], [ %27, %24 ]
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BOX_SEARCH, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BOX_OPEN, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i1 [ true, %28 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %72 [
    i32 12, label %44
    i32 129, label %44
    i32 128, label %46
    i32 13, label %46
    i32 10, label %46
    i32 27, label %59
    i32 130, label %68
    i32 127, label %68
  ]

44:                                               ; preds = %39, %39
  %45 = call i32 (...) @clear()
  br label %98

46:                                               ; preds = %39, %39, %39
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = call i32 @SearchPlaylist(%struct.TYPE_7__* %50)
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = call i32 @OpenSelection(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** @BOX_PLAYLIST, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %98

59:                                               ; preds = %39
  %60 = call i32 (...) @getch()
  %61 = load i32, i32* @ERR, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** @BOX_PLAYLIST, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  br label %98

68:                                               ; preds = %39, %39
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @RemoveLastUTF8Entity(i8* %69, i64 %70)
  br label %92

72:                                               ; preds = %39
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i64 8, i64 8
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 0
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  %87 = load i8*, i8** %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 0, i8* %90, align 1
  br label %91

91:                                               ; preds = %80, %72
  br label %92

92:                                               ; preds = %91, %68
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = call i32 @SearchPlaylist(%struct.TYPE_7__* %96)
  br label %98

98:                                               ; preds = %44, %55, %67, %95, %92
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @SearchPlaylist(%struct.TYPE_7__*) #1

declare dso_local i32 @OpenSelection(%struct.TYPE_6__*) #1

declare dso_local i32 @getch(...) #1

declare dso_local i32 @RemoveLastUTF8Entity(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
