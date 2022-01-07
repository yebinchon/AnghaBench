; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_WmCreate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_editor.c_ME_WmCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@ES_DISABLENOSCROLL = common dso_local global i32 0, align 4
@WS_VSCROLL = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@WS_HSCROLL = common dso_local global i32 0, align 4
@SB_HORZ = common dso_local global i32 0, align 4
@ESB_DISABLE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i32)* @ME_WmCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_WmCreate(%struct.TYPE_11__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i8* [ %24, %20 ], [ %29, %25 ]
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %30, %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = call i32 @ME_SetDefaultFormatRect(%struct.TYPE_11__* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %10, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = xor i32 %45, -1
  %47 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %32
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WS_VSCROLL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50, %32
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SB_VERT, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @TRUE, align 4
  %64 = call i32 @ITextHost_TxSetScrollRange(i32 %60, i32 %61, i32 0, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %50
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = xor i32 %68, -1
  %70 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WS_HSCROLL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %73, %65
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SB_HORZ, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @ITextHost_TxSetScrollRange(i32 %83, i32 %84, i32 0, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %80, %73
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ES_DISABLENOSCROLL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %136

95:                                               ; preds = %88
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @WS_VSCROLL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SB_VERT, align 4
  %107 = load i32, i32* @ESB_DISABLE_BOTH, align 4
  %108 = call i32 @ITextHost_TxEnableScrollBar(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SB_VERT, align 4
  %113 = load i32, i32* @TRUE, align 4
  %114 = call i32 @ITextHost_TxShowScrollBar(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %102, %95
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @WS_HSCROLL, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @SB_HORZ, align 4
  %127 = load i32, i32* @ESB_DISABLE_BOTH, align 4
  %128 = call i32 @ITextHost_TxEnableScrollBar(i32 %125, i32 %126, i32 %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SB_HORZ, align 4
  %133 = load i32, i32* @TRUE, align 4
  %134 = call i32 @ITextHost_TxShowScrollBar(i32 %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %122, %115
  br label %136

136:                                              ; preds = %135, %88
  %137 = load i8*, i8** %9, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %156

139:                                              ; preds = %136
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @ME_SetText(%struct.TYPE_11__* %140, i8* %141, i32 %142)
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i32 @ME_SetCursorToStart(%struct.TYPE_11__* %144, i32* %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = call i32 @ME_SetCursorToStart(%struct.TYPE_11__* %150, i32* %154)
  br label %156

156:                                              ; preds = %139, %136
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = call i32 @ME_CommitUndo(%struct.TYPE_11__* %157)
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = call i32 @ME_WrapMarkedParagraphs(%struct.TYPE_11__* %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = call i32 @ME_MoveCaret(%struct.TYPE_11__* %161)
  ret i32 0
}

declare dso_local i32 @ME_SetDefaultFormatRect(%struct.TYPE_11__*) #1

declare dso_local i32 @ITextHost_TxSetScrollRange(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ITextHost_TxEnableScrollBar(i32, i32, i32) #1

declare dso_local i32 @ITextHost_TxShowScrollBar(i32, i32, i32) #1

declare dso_local i32 @ME_SetText(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @ME_SetCursorToStart(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ME_CommitUndo(%struct.TYPE_11__*) #1

declare dso_local i32 @ME_WrapMarkedParagraphs(%struct.TYPE_11__*) #1

declare dso_local i32 @ME_MoveCaret(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
