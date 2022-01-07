; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_textfont_prop_for_pos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_richole.c_get_textfont_prop_for_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i8*, i32, i8* }

@textfont_prop_masks = common dso_local global i32** null, align 8
@FALSE = common dso_local global i32 0, align 4
@tomTrue = common dso_local global i8* null, align 8
@tomFalse = common dso_local global i8* null, align 8
@CFE_AUTOBACKCOLOR = common dso_local global i32 0, align 4
@COLOR_WINDOW = common dso_local global i32 0, align 4
@CFE_AUTOCOLOR = common dso_local global i32 0, align 4
@COLOR_WINDOWTEXT = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unhandled font property %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*)* @get_textfont_prop_for_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_textfont_prop_for_pos(%struct.TYPE_9__* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %13 = call i32 @memset(%struct.TYPE_10__* %12, i32 0, i32 88)
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 88, i32* %14, align 8
  %15 = load i32**, i32*** @textfont_prop_masks, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ME_CursorFromCharOfs(i32 %25, i32 %26, i32* %10)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @ME_MoveCursorChars(i32 %31, i32* %11, i32 1, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ME_GetCharFormat(i32 %36, i32* %10, i32* %11, %struct.TYPE_10__* %12)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %142 [
    i32 151, label %39
    i32 148, label %39
    i32 147, label %39
    i32 144, label %39
    i32 146, label %39
    i32 143, label %39
    i32 139, label %39
    i32 137, label %39
    i32 136, label %39
    i32 134, label %39
    i32 132, label %39
    i32 131, label %39
    i32 130, label %39
    i32 129, label %39
    i32 150, label %59
    i32 149, label %64
    i32 145, label %80
    i32 142, label %96
    i32 141, label %102
    i32 140, label %107
    i32 138, label %120
    i32 135, label %126
    i32 133, label %132
    i32 128, label %137
  ]

39:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32**, i32*** @textfont_prop_masks, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %41, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i8*, i8** @tomTrue, align 8
  br label %55

53:                                               ; preds = %39
  %54 = load i8*, i8** @tomFalse, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8* [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %146

59:                                               ; preds = %4
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 12
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %146

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CFE_AUTOBACKCOLOR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @COLOR_WINDOW, align 4
  %72 = call i8* @GetSysColor(i32 %71)
  br label %76

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i8* [ %72, %70 ], [ %75, %73 ]
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  br label %146

80:                                               ; preds = %4
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CFE_AUTOCOLOR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @COLOR_WINDOWTEXT, align 4
  %88 = call i8* @GetSysColor(i32 %87)
  br label %92

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %91 = load i8*, i8** %90, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i8* [ %88, %86 ], [ %91, %89 ]
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %146

96:                                               ; preds = %4
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 11
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @twips_to_points(i32 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  br label %146

102:                                              ; preds = %4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 10
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %146

107:                                              ; preds = %4
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @SysAllocString(i32 %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %107
  %118 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %118, i32* %5, align 4
  br label %148

119:                                              ; preds = %107
  br label %146

120:                                              ; preds = %4
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @twips_to_points(i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  br label %146

126:                                              ; preds = %4
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 7
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @twips_to_points(i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  br label %146

132:                                              ; preds = %4
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 6
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  br label %146

137:                                              ; preds = %4
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  br label %146

142:                                              ; preds = %4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @E_FAIL, align 4
  store i32 %145, i32* %5, align 4
  br label %148

146:                                              ; preds = %137, %132, %126, %120, %119, %102, %96, %92, %76, %59, %55
  %147 = load i32, i32* @S_OK, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %142, %117
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @ME_CursorFromCharOfs(i32, i32, i32*) #1

declare dso_local i32 @ME_MoveCursorChars(i32, i32*, i32, i32) #1

declare dso_local i32 @ME_GetCharFormat(i32, i32*, i32*, %struct.TYPE_10__*) #1

declare dso_local i8* @GetSysColor(i32) #1

declare dso_local i8* @twips_to_points(i32) #1

declare dso_local i32 @SysAllocString(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
