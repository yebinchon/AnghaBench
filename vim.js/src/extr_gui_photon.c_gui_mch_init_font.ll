; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_init_font.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_init_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i8*, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"PC Terminal\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@gui = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"pcterm12\00", align 1
@PHFONT_FIXED = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PF_STYLE_BOLD = common dso_local global i32 0, align 4
@PF_STYLE_ITALIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gui_mch_init_font(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 12, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @STRCMP(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 6), align 8
  %21 = load i32, i32* @PHFONT_FIXED, align 4
  %22 = call i8* @PtFontSelection(i32 %20, i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 %21, i32* null)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @FAIL, align 4
  store i32 %26, i32* %3, align 4
  br label %104

27:                                               ; preds = %19
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 0), align 8
  %29 = call i32 @gui_mch_free_font(i8* %28)
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 0), align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @PfQueryFontInfo(i8* %31, %struct.TYPE_11__* %10)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @vim_strsave(i32 %34)
  store i8* %35, i8** %7, align 8
  br label %58

36:                                               ; preds = %15
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @gui_ph_parse_font_name(i8* %37, i8** %7, i32* %8, i32* %9)
  %39 = load i64, i64* @FALSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @FAIL, align 4
  store i32 %42, i32* %3, align 4
  br label %104

43:                                               ; preds = %36
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @gui_ph_get_font(i8* %44, i32 %45, i32 %46, i32 0)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @vim_free(i8* %51)
  %53 = load i32, i32* @FAIL, align 4
  store i32 %53, i32* %3, align 4
  br label %104

54:                                               ; preds = %43
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 0), align 8
  %56 = call i32 @gui_mch_free_font(i8* %55)
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %54, %27
  %59 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 1), align 8
  %60 = call i32 @gui_mch_free_font(i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @PF_STYLE_BOLD, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @PF_STYLE_BOLD, align 4
  %67 = call i8* @gui_ph_get_font(i8* %61, i32 %64, i32 %65, i32 %66)
  store i8* %67, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 1), align 8
  %68 = load i8*, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 2), align 8
  %69 = call i32 @gui_mch_free_font(i8* %68)
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @PF_STYLE_ITALIC, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @PF_STYLE_ITALIC, align 4
  %76 = call i8* @gui_ph_get_font(i8* %70, i32 %73, i32 %74, i32 %75)
  store i8* %76, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 2), align 8
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @PfExtentText(%struct.TYPE_10__* %11, i32* null, i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 5), align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 0, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 4), align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gui, i32 0, i32 3), align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @vim_free(i8* %101)
  %103 = load i32, i32* @OK, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %58, %50, %41, %25
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @STRCMP(i8*, i8*) #1

declare dso_local i8* @PtFontSelection(i32, i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @gui_mch_free_font(i8*) #1

declare dso_local i32 @PfQueryFontInfo(i8*, %struct.TYPE_11__*) #1

declare dso_local i8* @vim_strsave(i32) #1

declare dso_local i64 @gui_ph_parse_font_name(i8*, i8**, i32*, i32*) #1

declare dso_local i8* @gui_ph_get_font(i8*, i32, i32, i32) #1

declare dso_local i32 @vim_free(i8*) #1

declare dso_local i32 @PfExtentText(%struct.TYPE_10__*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
