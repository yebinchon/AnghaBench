; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_render_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_clipboard.c_render_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }

@embed_source_clipboard_format = common dso_local global i64 0, align 8
@TYMED_ISTORAGE = common dso_local global i32 0, align 4
@TYMED_ISTREAM = common dso_local global i32 0, align 4
@TYMED_HGLOBAL = common dso_local global i32 0, align 4
@TYMED_ENHMF = common dso_local global i32 0, align 4
@TYMED_MFPICT = common dso_local global i32 0, align 4
@TYMED_GDI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Unhandled tymed %x\0A\00", align 1
@DV_E_FORMATETC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"() : Failed to set rendered clipboard data into clipboard!\0A\00", align 1
@CLIPBRD_E_CANT_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @render_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @render_format(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @embed_source_clipboard_format, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @render_embed_source_hack(i32* %14, %struct.TYPE_10__* %15)
  store i32 %16, i32* %3, align 4
  br label %136

17:                                               ; preds = %2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TYMED_ISTORAGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @get_data_from_storage(i32* %25, %struct.TYPE_10__* %26, i32** %6)
  store i32 %27, i32* %7, align 4
  br label %95

28:                                               ; preds = %17
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @TYMED_ISTREAM, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @get_data_from_stream(i32* %36, %struct.TYPE_10__* %37, i32** %6)
  store i32 %38, i32* %7, align 4
  br label %94

39:                                               ; preds = %28
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TYMED_HGLOBAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = call i32 @get_data_from_global(i32* %47, %struct.TYPE_10__* %48, i32** %6)
  store i32 %49, i32* %7, align 4
  br label %93

50:                                               ; preds = %39
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TYMED_ENHMF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32*, i32** %4, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i32 @get_data_from_enhmetafile(i32* %58, %struct.TYPE_10__* %59, i32** %6)
  store i32 %60, i32* %7, align 4
  br label %92

61:                                               ; preds = %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TYMED_MFPICT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %4, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i32 @get_data_from_metafilepict(i32* %69, %struct.TYPE_10__* %70, i32** %6)
  store i32 %71, i32* %7, align 4
  br label %91

72:                                               ; preds = %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TYMED_GDI, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = bitcast i32** %6 to i32*
  %83 = call i32 @get_data_from_bitmap(i32* %80, %struct.TYPE_10__* %81, i32* %82)
  store i32 %83, i32* %7, align 4
  br label %90

84:                                               ; preds = %72
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @DV_E_FORMATETC, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %68
  br label %92

92:                                               ; preds = %91, %57
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93, %35
  br label %95

95:                                               ; preds = %94, %24
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @SUCCEEDED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %95
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = call i32 @SetClipboardData(i64 %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %133, label %106

106:                                              ; preds = %99
  %107 = call i32 @WARN(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @TYMED_MFPICT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @free_metafilepict(i32* %115)
  br label %131

117:                                              ; preds = %106
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @TYMED_GDI, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i32*, i32** %6, align 8
  %126 = call i32 @DeleteObject(i32* %125)
  br label %130

127:                                              ; preds = %117
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @GlobalFree(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* @CLIPBRD_E_CANT_SET, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %99
  br label %134

134:                                              ; preds = %133, %95
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %13
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @render_embed_source_hack(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @get_data_from_storage(i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @get_data_from_stream(i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @get_data_from_global(i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @get_data_from_enhmetafile(i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @get_data_from_metafilepict(i32*, %struct.TYPE_10__*, i32**) #1

declare dso_local i32 @get_data_from_bitmap(i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @SetClipboardData(i64, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @free_metafilepict(i32*) #1

declare dso_local i32 @DeleteObject(i32*) #1

declare dso_local i32 @GlobalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
