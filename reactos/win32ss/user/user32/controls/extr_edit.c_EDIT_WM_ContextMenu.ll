; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_ContextMenu.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_edit.c_EDIT_WM_ContextMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@user32_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"EDITMENU\00", align 1
@MF_BYPOSITION = common dso_local global i32 0, align 4
@ES_READONLY = common dso_local global i32 0, align 4
@MF_ENABLED = common dso_local global i32 0, align 4
@MF_GRAYED = common dso_local global i32 0, align 4
@ES_PASSWORD = common dso_local global i32 0, align 4
@CF_UNICODETEXT = common dso_local global i32 0, align 4
@COORDS_SCREEN = common dso_local global i32 0, align 4
@EF_FOCUSED = common dso_local global i32 0, align 4
@TPM_LEFTALIGN = common dso_local global i32 0, align 4
@TPM_RIGHTBUTTON = common dso_local global i32 0, align 4
@TPM_RETURNCMD = common dso_local global i32 0, align 4
@TPM_NONOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32, i32)* @EDIT_WM_ContextMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EDIT_WM_ContextMenu(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @user32_module, align 4
  %14 = call i32 @LoadMenuA(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @GetSubMenu(i32 %15, i32 0)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @ORDER_UINT(i64 %23, i64 %24)
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MF_BYPOSITION, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = call i64 @EDIT_EM_CanUndo(%struct.TYPE_10__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ES_READONLY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @MF_ENABLED, align 4
  br label %42

40:                                               ; preds = %31, %3
  %41 = load i32, i32* @MF_GRAYED, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = or i32 %27, %43
  %45 = call i32 @EnableMenuItem(i32 %26, i32 0, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @MF_BYPOSITION, align 4
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %42
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ES_PASSWORD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ES_READONLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @MF_ENABLED, align 4
  br label %70

68:                                               ; preds = %59, %52, %42
  %69 = load i32, i32* @MF_GRAYED, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = or i32 %47, %71
  %73 = call i32 @EnableMenuItem(i32 %46, i32 2, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MF_BYPOSITION, align 4
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ES_PASSWORD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @MF_ENABLED, align 4
  br label %91

89:                                               ; preds = %80, %70
  %90 = load i32, i32* @MF_GRAYED, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = or i32 %75, %92
  %94 = call i32 @EnableMenuItem(i32 %74, i32 3, i32 %93)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @MF_BYPOSITION, align 4
  %97 = load i32, i32* @CF_UNICODETEXT, align 4
  %98 = call i64 @IsClipboardFormatAvailable(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %91
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ES_READONLY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @MF_ENABLED, align 4
  br label %111

109:                                              ; preds = %100, %91
  %110 = load i32, i32* @MF_GRAYED, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = or i32 %96, %112
  %114 = call i32 @EnableMenuItem(i32 %95, i32 4, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @MF_BYPOSITION, align 4
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %9, align 8
  %119 = sub nsw i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %111
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @ES_READONLY, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* @MF_ENABLED, align 4
  br label %132

130:                                              ; preds = %121, %111
  %131 = load i32, i32* @MF_GRAYED, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = or i32 %116, %133
  %135 = call i32 @EnableMenuItem(i32 %115, i32 5, i32 %134)
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @MF_BYPOSITION, align 4
  %138 = load i64, i64* %9, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %132
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %143 = call i64 @get_text_length(%struct.TYPE_10__* %142)
  %144 = icmp ne i64 %141, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %140, %132
  %146 = load i32, i32* @MF_ENABLED, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @MF_GRAYED, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = or i32 %137, %150
  %152 = call i32 @EnableMenuItem(i32 %136, i32 7, i32 %151)
  %153 = load i32, i32* %5, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %182

155:                                              ; preds = %149
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @COORDS_SCREEN, align 4
  %163 = call i32 @WIN_GetRectangles(i32 %161, i32 %162, i32* null, %struct.TYPE_9__* %12)
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %167, %169
  %171 = sdiv i32 %170, 2
  %172 = add nsw i32 %165, %171
  store i32 %172, i32* %5, align 4
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %176, %178
  %180 = sdiv i32 %179, 2
  %181 = add nsw i32 %174, %180
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %158, %155, %149
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @EF_FOCUSED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %182
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @SetFocus(i32 %192)
  br label %194

194:                                              ; preds = %189, %182
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @TPM_LEFTALIGN, align 4
  %197 = load i32, i32* @TPM_RIGHTBUTTON, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @TPM_RETURNCMD, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @TPM_NONOTIFY, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i64 @TrackPopupMenu(i32 %195, i32 %202, i32 %203, i32 %204, i32 0, i32 %207, i32* null)
  store i64 %208, i64* %11, align 8
  %209 = load i64, i64* %11, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %194
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %213 = load i64, i64* %11, align 8
  %214 = call i32 @EDIT_ContextMenuCommand(%struct.TYPE_10__* %212, i64 %213)
  br label %215

215:                                              ; preds = %211, %194
  %216 = load i32, i32* %7, align 4
  %217 = call i32 @DestroyMenu(i32 %216)
  ret void
}

declare dso_local i32 @LoadMenuA(i32, i8*) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @ORDER_UINT(i64, i64) #1

declare dso_local i32 @EnableMenuItem(i32, i32, i32) #1

declare dso_local i64 @EDIT_EM_CanUndo(%struct.TYPE_10__*) #1

declare dso_local i64 @IsClipboardFormatAvailable(i32) #1

declare dso_local i64 @get_text_length(%struct.TYPE_10__*) #1

declare dso_local i32 @WIN_GetRectangles(i32, i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @SetFocus(i32) #1

declare dso_local i64 @TrackPopupMenu(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @EDIT_ContextMenuCommand(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @DestroyMenu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
