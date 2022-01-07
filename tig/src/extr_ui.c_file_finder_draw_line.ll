; ModuleID = '/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_draw_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_ui.c_file_finder_draw_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_finder = type { i8**, i32 }
%struct.file_finder_line = type { i8* }

@A_STANDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_finder*, %struct.file_finder_line*)* @file_finder_draw_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @file_finder_draw_line(%struct.file_finder* %0, %struct.file_finder_line* %1) #0 {
  %3 = alloca %struct.file_finder*, align 8
  %4 = alloca %struct.file_finder_line*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.file_finder* %0, %struct.file_finder** %3, align 8
  store %struct.file_finder_line* %1, %struct.file_finder_line** %4, align 8
  %8 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %9 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %5, align 8
  %11 = load %struct.file_finder_line*, %struct.file_finder_line** %4, align 8
  %12 = getelementptr inbounds %struct.file_finder_line, %struct.file_finder_line* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %68, %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i8**, i8*** %5, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strstr(i8* %27, i8* %29)
  store i8* %30, i8** %7, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %26, %22, %19, %14
  %33 = phi i1 [ false, %22 ], [ false, %19 ], [ false, %14 ], [ %31, %26 ]
  br i1 %33, label %34, label %71

34:                                               ; preds = %32
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ult i8* %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %40 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @waddnstr(i32 %41, i8* %42, i32 %48)
  br label %50

50:                                               ; preds = %38, %34
  %51 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %52 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @A_STANDOUT, align 4
  %55 = call i32 @wattron(i32 %53, i32 %54)
  %56 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %57 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @waddnstr(i32 %58, i8* %59, i32 1)
  %61 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %62 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @A_STANDOUT, align 4
  %65 = call i32 @wattroff(i32 %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %50
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %5, align 8
  br label %14

71:                                               ; preds = %32
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load %struct.file_finder*, %struct.file_finder** %3, align 8
  %77 = getelementptr inbounds %struct.file_finder, %struct.file_finder* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @waddstr(i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %75, %71
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @waddnstr(i32, i8*, i32) #1

declare dso_local i32 @wattron(i32, i32) #1

declare dso_local i32 @wattroff(i32, i32) #1

declare dso_local i32 @waddstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
