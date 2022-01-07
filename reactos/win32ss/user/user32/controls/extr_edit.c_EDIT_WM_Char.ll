; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_Char.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_Char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@VK_CONTROL = common dso_local global i32 0, align 4
@ES_MULTILINE = common dso_local global i32 0, align 4
@ES_WANTRETURN = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EDIT_WM_Char.cr_lfW = internal constant [3 x i32] [i32 13, i32 10, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@EDIT_WM_Char.tabW = internal constant [2 x i32] [i32 9, i32 0], align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@WM_COPY = common dso_local global i32 0, align 4
@WM_PASTE = common dso_local global i32 0, align 4
@WM_CUT = common dso_local global i32 0, align 4
@WM_UNDO = common dso_local global i32 0, align 4
@ES_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @EDIT_WM_Char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EDIT_WM_Char(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @VK_CONTROL, align 4
  %8 = call i32 @GetKeyState(i32 %7)
  %9 = and i32 %8, 32768
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %183 [
    i32 13, label %11
    i32 10, label %32
    i32 9, label %62
    i32 128, label %88
    i32 3, label %120
    i32 22, label %134
    i32 24, label %148
    i32 26, label %169
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ES_MULTILINE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ES_WANTRETURN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_10__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %221

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %18, %11
  br label %32

32:                                               ; preds = %2, %31
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ES_MULTILINE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %32
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ES_READONLY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @EDIT_MoveHome(%struct.TYPE_10__* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = load i32, i32* @FALSE, align 4
  %53 = call i32 @EDIT_MoveDown_ML(%struct.TYPE_10__* %51, i32 %52)
  br label %60

54:                                               ; preds = %39
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %55, i32 %56, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @EDIT_WM_Char.cr_lfW, i64 0, i64 0), i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %46
  br label %61

61:                                               ; preds = %60, %32
  br label %221

62:                                               ; preds = %2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ES_MULTILINE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ES_READONLY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = call i32 @EDIT_IsInsideDialog(%struct.TYPE_10__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %221

81:                                               ; preds = %76
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = load i32, i32* @TRUE, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %82, i32 %83, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @EDIT_WM_Char.tabW, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %69, %62
  br label %221

88:                                               ; preds = %2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ES_READONLY, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %119, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = call i32 @EDIT_WM_Clear(%struct.TYPE_10__* %107)
  br label %118

109:                                              ; preds = %98
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = load i32, i32* @FALSE, align 4
  %112 = call i32 @EDIT_EM_SetSel(%struct.TYPE_10__* %110, i32 -1, i32 0, i32 %111)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = call i32 @EDIT_MoveBackward(%struct.TYPE_10__* %113, i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = call i32 @EDIT_WM_Clear(%struct.TYPE_10__* %116)
  br label %118

118:                                              ; preds = %109, %106
  br label %119

119:                                              ; preds = %118, %95, %88
  br label %221

120:                                              ; preds = %2
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ES_PASSWORD, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @WM_COPY, align 4
  %132 = call i32 @SendMessageW(i32 %130, i32 %131, i32 0, i32 0)
  br label %133

133:                                              ; preds = %127, %120
  br label %221

134:                                              ; preds = %2
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ES_READONLY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @WM_PASTE, align 4
  %146 = call i32 @SendMessageW(i32 %144, i32 %145, i32 0, i32 0)
  br label %147

147:                                              ; preds = %141, %134
  br label %221

148:                                              ; preds = %2
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ES_READONLY, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %148
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @ES_PASSWORD, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %155
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WM_CUT, align 4
  %167 = call i32 @SendMessageW(i32 %165, i32 %166, i32 0, i32 0)
  br label %168

168:                                              ; preds = %162, %155, %148
  br label %221

169:                                              ; preds = %2
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ES_READONLY, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %169
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @WM_UNDO, align 4
  %181 = call i32 @SendMessageW(i32 %179, i32 %180, i32 0, i32 0)
  br label %182

182:                                              ; preds = %176, %169
  br label %221

183:                                              ; preds = %2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @ES_NUMBER, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %183
  %191 = load i32, i32* %4, align 4
  %192 = icmp sge i32 %191, 48
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load i32, i32* %4, align 4
  %195 = icmp sle i32 %194, 57
  br i1 %195, label %197, label %196

196:                                              ; preds = %193, %190
  br label %221

197:                                              ; preds = %193, %183
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ES_READONLY, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %4, align 4
  %206 = icmp sge i32 %205, 32
  br i1 %206, label %207, label %220

207:                                              ; preds = %204
  %208 = load i32, i32* %4, align 4
  %209 = icmp ne i32 %208, 127
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load i32, i32* %4, align 4
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %211, i32* %212, align 4
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %213, align 4
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %215 = load i32, i32* @TRUE, align 4
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %217 = load i32, i32* @TRUE, align 4
  %218 = load i32, i32* @TRUE, align 4
  %219 = call i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__* %214, i32 %215, i32* %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %210, %207, %204, %197
  br label %221

221:                                              ; preds = %220, %196, %182, %168, %147, %133, %119, %87, %80, %61, %29
  ret i32 1
}

declare dso_local i32 @GetKeyState(i32) #1

declare dso_local i32 @EDIT_IsInsideDialog(%struct.TYPE_10__*) #1

declare dso_local i32 @EDIT_MoveHome(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @EDIT_MoveDown_ML(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @EDIT_EM_ReplaceSel(%struct.TYPE_10__*, i32, i32*, i32, i32) #1

declare dso_local i32 @EDIT_WM_Clear(%struct.TYPE_10__*) #1

declare dso_local i32 @EDIT_EM_SetSel(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @EDIT_MoveBackward(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
