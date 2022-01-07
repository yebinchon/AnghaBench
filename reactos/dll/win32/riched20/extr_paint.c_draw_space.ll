; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_draw_space.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_paint.c_draw_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@ES_NOHIDESEL = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@draw_space.space = internal constant [1 x i8] c" ", align 1
@ETO_OPAQUE = common dso_local global i32 0, align 4
@DSTINVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, i64, i64, i32, i32)* @draw_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_space(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i64 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %18, align 8
  store i32 0, i32* %20, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @SetRect(i32* %19, i32 %31, i32 %32, i64 %38, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @ES_NOHIDESEL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56, %8
  %66 = load i64, i64* @FALSE, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %65, %56, %49
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i64, i64* %13, align 8
  store i64 %75, i64* %18, align 8
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %13, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %87 = call i32 @ITextHost_TxGetSysColor(i32 %85, i32 %86)
  store i32 %87, i32* %20, align 4
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i64, i64* %14, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %157

91:                                               ; preds = %88
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @get_text_color(%struct.TYPE_14__* %92, i32 %95, i64 %96)
  store i32 %97, i32* %21, align 4
  store i32* null, i32** %24, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @calc_y_offset(%struct.TYPE_14__* %98, i32 %101)
  store i32 %102, i32* %25, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32* @ME_SelectStyleFont(%struct.TYPE_14__* %103, i32 %106)
  store i32* %107, i32** %24, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %21, align 4
  %110 = call i32 @SetTextColor(i32 %108, i32 %109)
  store i32 %110, i32* %22, align 4
  %111 = load i64, i64* %13, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %91
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %20, align 4
  %116 = call i32 @SetBkColor(i32 %114, i32 %115)
  store i32 %116, i32* %23, align 4
  br label %117

117:                                              ; preds = %113, %91
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %25, align 4
  %122 = sub nsw i32 %120, %121
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = load i32, i32* @ETO_OPAQUE, align 4
  br label %128

127:                                              ; preds = %117
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = call i32 @ExtTextOutW(i32 %118, i32 %119, i32 %122, i32 %129, i32* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @draw_space.space, i64 0, i64 0), i32 1, i64* %131)
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %23, align 4
  %138 = call i32 @SetBkColor(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %128
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @SetTextColor(i32 %140, i32 %141)
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %24, align 8
  %148 = call i32 @ME_UnselectStyleFont(%struct.TYPE_14__* %143, i32 %146, i32* %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %25, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @draw_underline(%struct.TYPE_14__* %149, %struct.TYPE_13__* %150, i32 %151, i32 %154, i32 %155)
  br label %169

157:                                              ; preds = %88
  %158 = load i64, i64* %13, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = load i32, i32* %20, align 4
  %162 = call i32 @CreateSolidBrush(i32 %161)
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %26, align 4
  %165 = call i32 @FillRect(i32 %163, i32* %19, i32 %164)
  %166 = load i32, i32* %26, align 4
  %167 = call i32 @DeleteObject(i32 %166)
  br label %168

168:                                              ; preds = %160, %157
  br label %169

169:                                              ; preds = %168, %139
  %170 = load i64, i64* %18, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %15, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @DSTINVERT, align 4
  %181 = call i32 @PatBlt(i32 %173, i32 %174, i32 %175, i64 %178, i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %172, %169
  ret void
}

declare dso_local i32 @SetRect(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @ITextHost_TxGetSysColor(i32, i32) #1

declare dso_local i32 @get_text_color(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @calc_y_offset(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @ME_SelectStyleFont(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, i32*, i8*, i32, i64*) #1

declare dso_local i32 @ME_UnselectStyleFont(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @draw_underline(%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, i32*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @PatBlt(i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
