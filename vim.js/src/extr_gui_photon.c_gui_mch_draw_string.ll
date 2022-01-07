; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_draw_string.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_photon.c_gui_mch_draw_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }

@gui_mch_draw_string.utf8_buffer = internal global i8* null, align 8
@gui_mch_draw_string.utf8_len = internal global i32 0, align 4
@is_ignore_draw = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@DRAW_START = common dso_local global i32 0, align 4
@DRAW_TRANSP = common dso_local global i32 0, align 4
@Pg_DRAW_FILL = common dso_local global i32 0, align 4
@DRAW_UNDERL = common dso_local global i32 0, align 4
@gui = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@Pg_TRANSPARENT = common dso_local global i32 0, align 4
@charset_translate = common dso_local global i32* null, align 8
@MB_LEN_MAX = common dso_local global i32 0, align 4
@DRAW_BOLD = common dso_local global i32 0, align 4
@p_linespace = common dso_local global i32 0, align 4
@Pg_TEXT_BOTTOM = common dso_local global i32 0, align 4
@DRAW_END = common dso_local global i32 0, align 4
@enc_utf8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gui_mch_draw_string(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @TEXT_X(i32 %16)
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @TEXT_Y(i32 %19)
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  store i32 0, i32* %21, align 4
  %22 = load i64, i64* @is_ignore_draw, align 8
  %23 = load i64, i64* @TRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %135

26:                                               ; preds = %5
  %27 = load i32, i32* @DRAW_START, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @DRAW_TRANSP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @FILL_X(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @FILL_Y(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = call i8* @FILL_X(i32 %39)
  %41 = getelementptr i8, i8* %40, i64 -1
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i8* @FILL_Y(i32 %43)
  %45 = getelementptr i8, i8* %44, i64 -1
  %46 = load i32, i32* @Pg_DRAW_FILL, align 4
  %47 = call i32 @PgDrawIRect(i8* %34, i8* %36, i8* %41, i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %32, %26
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DRAW_UNDERL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @gui, i32 0, i32 0), align 4
  %55 = load i32, i32* @Pg_TRANSPARENT, align 4
  %56 = call i32 @PgSetUnderline(i32 %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32*, i32** @charset_translate, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load i32, i32* @gui_mch_draw_string.utf8_len, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i8*, i8** @gui_mch_draw_string.utf8_buffer, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MB_LEN_MAX, align 4
  %68 = mul nsw i32 %66, %67
  %69 = call i8* @realloc(i8* %65, i32 %68)
  store i8* %69, i8** @gui_mch_draw_string.utf8_buffer, align 8
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* @gui_mch_draw_string.utf8_len, align 4
  br label %71

71:                                               ; preds = %64, %60
  %72 = load i32*, i32** @charset_translate, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** @gui_mch_draw_string.utf8_buffer, align 8
  %76 = load i32, i32* @gui_mch_draw_string.utf8_len, align 4
  %77 = call i32 @PxTranslateToUTF(i32* %72, i8* %73, i32 %74, i32* %13, i8* %75, i32 %76, i32* %14)
  %78 = load i8*, i8** @gui_mch_draw_string.utf8_buffer, align 8
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %71, %57
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @PgDrawText(i8* %81, i32 %82, %struct.TYPE_12__* %11, i32 0)
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @DRAW_BOLD, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = call i8* @FILL_X(i32 %89)
  %91 = getelementptr i8, i8* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i8* @FILL_Y(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %98, %99
  %101 = call i8* @FILL_X(i32 %100)
  %102 = getelementptr i8, i8* %101, i64 -1
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  %107 = call i8* @FILL_Y(i32 %106)
  %108 = getelementptr i8, i8* %107, i64 -1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* @p_linespace, align 4
  %112 = add nsw i32 %111, 1
  %113 = sdiv i32 %112, 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = sext i32 %113 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr i8, i8* %116, i64 %118
  store i8* %119, i8** %115, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @Pg_TEXT_BOTTOM, align 4
  %123 = call i32 @PgDrawTextArea(i8* %120, i32 %121, %struct.TYPE_11__* %12, i32 %122)
  br label %124

124:                                              ; preds = %88, %80
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @DRAW_UNDERL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i32, i32* @Pg_TRANSPARENT, align 4
  %131 = load i32, i32* @Pg_TRANSPARENT, align 4
  %132 = call i32 @PgSetUnderline(i32 %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %129, %124
  %134 = load i32, i32* @DRAW_END, align 4
  br label %135

135:                                              ; preds = %133, %25
  ret void
}

declare dso_local i32 @TEXT_X(i32) #1

declare dso_local i32 @TEXT_Y(i32) #1

declare dso_local i32 @PgDrawIRect(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @FILL_X(i32) #1

declare dso_local i8* @FILL_Y(i32) #1

declare dso_local i32 @PgSetUnderline(i32, i32, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @PxTranslateToUTF(i32*, i8*, i32, i32*, i8*, i32, i32*) #1

declare dso_local i32 @PgDrawText(i8*, i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @PgDrawTextArea(i8*, i32, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
