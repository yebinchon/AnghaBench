; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_move.c_cursor_correct.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_move.c_cursor_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@p_so = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_9__* null, align 8
@curbuf = common dso_local global %struct.TYPE_10__* null, align 8
@VALID_WROW = common dso_local global i32 0, align 4
@VALID_WCOL = common dso_local global i32 0, align 4
@VALID_CHEIGHT = common dso_local global i32 0, align 4
@VALID_CROW = common dso_local global i32 0, align 4
@VALID_TOPLINE = common dso_local global i32 0, align 4
@mouse_dragging = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_correct() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @p_so, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @p_so, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %15
  br label %26

26:                                               ; preds = %25, %0
  %27 = call i32 (...) @validate_botline()
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %37
  br label %49

49:                                               ; preds = %48, %26
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %57, %58
  %60 = icmp sge i32 %54, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %65, %66
  %68 = icmp slt i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %220

70:                                               ; preds = %61, %49
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %2, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %134, %70
  %79 = load i32, i32* %1, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82, %78
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %87, %88
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i1 [ false, %82 ], [ %89, %86 ]
  br i1 %91, label %92, label %135

92:                                               ; preds = %90
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %1, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %1, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %4, align 4
  %106 = call i64 @plines(i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %104, %100, %92
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i32, i32* %1, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %2, align 4
  %127 = call i64 @plines(i32 %126)
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %127
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %1, align 4
  %132 = load i32, i32* %2, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %125, %121, %113
  br label %78

135:                                              ; preds = %90
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139, %135
  %143 = load i32, i32* %2, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 4
  br label %214

147:                                              ; preds = %139
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* %4, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 4
  br label %213

156:                                              ; preds = %147
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* %2, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %156
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp sgt i32 %163, 1
  br i1 %164, label %165, label %182

165:                                              ; preds = %160
  %166 = load i32, i32* %2, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  %170 = load i32, i32* @VALID_WROW, align 4
  %171 = load i32, i32* @VALID_WCOL, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @VALID_CHEIGHT, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @VALID_CROW, align 4
  %176 = or i32 %174, %175
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %165, %160, %156
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %182
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curbuf, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %189, %193
  br i1 %194, label %195, label %212

195:                                              ; preds = %186
  %196 = load i32, i32* %4, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 6
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* @VALID_WROW, align 4
  %201 = load i32, i32* @VALID_WCOL, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @VALID_CHEIGHT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @VALID_CROW, align 4
  %206 = or i32 %204, %205
  %207 = xor i32 %206, -1
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = and i32 %210, %207
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %195, %186, %182
  br label %213

213:                                              ; preds = %212, %151
  br label %214

214:                                              ; preds = %213, %142
  %215 = load i32, i32* @VALID_TOPLINE, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curwin, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %214, %69
  ret void
}

declare dso_local i32 @validate_botline(...) #1

declare dso_local i64 @plines(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
