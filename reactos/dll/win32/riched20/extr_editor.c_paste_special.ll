; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_paste_special.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_paste_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.paste_format = type { i64 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*)*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@ES_READONLY = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DVASPECT_CONTENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Ignoring aspect %x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@CF_TEXT = common dso_local global i64 0, align 8
@CF_UNICODETEXT = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@paste_formats = common dso_local global %struct.paste_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, %struct.TYPE_9__*, i32)* @paste_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @paste_special(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_9__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.paste_format*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ES_READONLY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @MB_ICONERROR, align 4
  %25 = call i32 @MessageBeep(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %5, align 4
  br label %117

28:                                               ; preds = %4
  %29 = call i32 (...) @init_paste_formats()
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DVASPECT_CONTENT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %38, %32, %28
  %44 = call i64 @OleGetClipboard(i32** %13)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %5, align 4
  br label %117

50:                                               ; preds = %43
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @CF_TEXT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* @CF_UNICODETEXT, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* @S_FALSE, align 8
  store i64 %57, i64* %10, align 8
  %58 = load %struct.paste_format*, %struct.paste_format** @paste_formats, align 8
  store %struct.paste_format* %58, %struct.paste_format** %12, align 8
  br label %59

59:                                               ; preds = %106, %56
  %60 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %61 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %109

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %71 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %106

76:                                               ; preds = %68, %65
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %79 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %78, i32 0, i32 1
  %80 = call i64 @IDataObject_QueryGetData(i32* %77, %struct.TYPE_11__* %79)
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %84
  %88 = load i32*, i32** %13, align 8
  %89 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %90 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %89, i32 0, i32 1
  %91 = call i64 @IDataObject_GetData(i32* %88, %struct.TYPE_11__* %90, i32* %11)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @S_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %110

96:                                               ; preds = %87
  %97 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %98 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %97, i32 0, i32 0
  %99 = load i64 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*)*, i64 (%struct.TYPE_10__*, %struct.TYPE_11__*, i32*)** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %102 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %101, i32 0, i32 1
  %103 = call i64 %99(%struct.TYPE_10__* %100, %struct.TYPE_11__* %102, i32* %11)
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %96, %84
  br label %109

105:                                              ; preds = %76
  br label %106

106:                                              ; preds = %105, %75
  %107 = load %struct.paste_format*, %struct.paste_format** %12, align 8
  %108 = getelementptr inbounds %struct.paste_format, %struct.paste_format* %107, i32 1
  store %struct.paste_format* %108, %struct.paste_format** %12, align 8
  br label %59

109:                                              ; preds = %104, %59
  br label %110

110:                                              ; preds = %109, %95
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @IDataObject_Release(i32* %111)
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @S_OK, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %110, %48, %26
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @MessageBeep(i32) #1

declare dso_local i32 @init_paste_formats(...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i64 @OleGetClipboard(i32**) #1

declare dso_local i64 @IDataObject_QueryGetData(i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @IDataObject_GetData(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
