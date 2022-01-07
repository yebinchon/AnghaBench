; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_metadata.c_xiph_ParseCueSheet.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_xiph_metadata.c_xiph_ParseCueSheet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*, i32, i32*, i32***)* @xiph_ParseCueSheet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xiph_ParseCueSheet(i32* %0, i32* %1, i8* %2, i32 %3, i32* %4, i32*** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32*** %5, i32**** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %15, align 8
  %19 = load i8*, i8** %15, align 8
  store i8* %19, i8** %16, align 8
  br label %20

20:                                               ; preds = %66, %6
  %21 = load i8*, i8** %16, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = icmp ult i8* %21, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %20
  %28 = load i8*, i8** %16, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 13
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @strndup(i8* %33, i32 %39)
  store i8* %40, i8** %17, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32***, i32**** %12, align 8
  %49 = call i32 @xiph_ParseCueSheetMeta(i32* %44, i32* %45, i8* %46, i32* %47, i32*** %48, i32** %13, i32* %14)
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %43, %32
  %53 = load i8*, i8** %16, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %16, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i8*, i8** %16, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %16, align 8
  br label %61

61:                                               ; preds = %58, %52
  %62 = load i8*, i8** %16, align 8
  store i8* %62, i8** %15, align 8
  br label %66

63:                                               ; preds = %27
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %16, align 8
  br label %66

66:                                               ; preds = %63, %61
  br label %20

67:                                               ; preds = %20
  %68 = load i32*, i32** %13, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32*, i32** %11, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32***, i32**** %12, align 8
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32 @TAB_APPEND(i32 %75, i32** %77, i32* %78)
  br label %83

80:                                               ; preds = %70
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @vlc_seekpoint_Delete(i32* %81)
  br label %83

83:                                               ; preds = %80, %73
  br label %84

84:                                               ; preds = %83, %67
  ret void
}

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i32 @xiph_ParseCueSheetMeta(i32*, i32*, i8*, i32*, i32***, i32**, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TAB_APPEND(i32, i32**, i32*) #1

declare dso_local i32 @vlc_seekpoint_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
