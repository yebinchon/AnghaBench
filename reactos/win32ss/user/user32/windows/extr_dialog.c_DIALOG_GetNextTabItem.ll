; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_GetNextTabItem.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_GetNextTabItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GW_HWNDPREV = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@GW_CHILD = common dso_local global i32 0, align 4
@GW_HWNDLAST = common dso_local global i32 0, align 4
@GW_HWNDFIRST = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_CONTROLPARENT = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@WS_TABSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32)* @DIALOG_GetNextTabItem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DIALOG_GetNextTabItem(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @GW_HWNDPREV, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @GW_HWNDNEXT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @GW_CHILD, align 4
  %30 = call i64 @GetWindow(i64 %28, i32 %29)
  store i64 %30, i64* %14, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %14, align 8
  %35 = load i32, i32* @GW_HWNDLAST, align 4
  %36 = call i64 @GetWindow(i64 %34, i32 %35)
  store i64 %36, i64* %14, align 8
  br label %37

37:                                               ; preds = %33, %27
  br label %73

38:                                               ; preds = %23
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @IsChild(i64 %39, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @GetWindow(i64 %44, i32 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %43
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @GetParent(i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @GetParent(i64 %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i64 @GetWindow(i64 %56, i32 %57)
  store i64 %58, i64* %14, align 8
  br label %70

59:                                               ; preds = %49
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @GW_HWNDLAST, align 4
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @GW_HWNDFIRST, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i64 @GetWindow(i64 %60, i32 %68)
  store i64 %69, i64* %14, align 8
  br label %70

70:                                               ; preds = %67, %54
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %38
  br label %73

73:                                               ; preds = %72, %37
  br label %74

74:                                               ; preds = %126, %73
  %75 = load i64, i64* %14, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %130

77:                                               ; preds = %74
  %78 = load i64, i64* %14, align 8
  %79 = load i32, i32* @GWL_STYLE, align 4
  %80 = call i32 @GetWindowLongPtrA(i64 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* @GWL_EXSTYLE, align 4
  %83 = call i32 @GetWindowLongPtrA(i64 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @WS_EX_CONTROLPARENT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @WS_VISIBLE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @WS_DISABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @DIALOG_GetNextTabItem(i64 %99, i64 %100, i64 0, i32 %101)
  store i64 %102, i64* %15, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %98
  %106 = load i64, i64* %15, align 8
  store i64 %106, i64* %5, align 8
  br label %175

107:                                              ; preds = %98
  br label %126

108:                                              ; preds = %93, %88, %77
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @WS_TABSTOP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @WS_VISIBLE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @WS_DISABLED, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* %14, align 8
  store i64 %124, i64* %5, align 8
  br label %175

125:                                              ; preds = %118, %113, %108
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i64, i64* %14, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @GetWindow(i64 %127, i32 %128)
  store i64 %129, i64* %14, align 8
  br label %74

130:                                              ; preds = %74
  %131 = load i64, i64* %8, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %130
  %134 = load i64, i64* %8, align 8
  %135 = call i64 @GetParent(i64 %134)
  store i64 %135, i64* %16, align 8
  br label %136

136:                                              ; preds = %154, %133
  %137 = load i64, i64* %16, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = load i64, i64* %16, align 8
  %141 = load i64, i64* %6, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %157

144:                                              ; preds = %139
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i64 @GetParent(i64 %146)
  %148 = load i64, i64* %16, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i64 @DIALOG_GetNextTabItem(i64 %145, i64 %147, i64 %148, i32 %149)
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %13, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %157

154:                                              ; preds = %144
  %155 = load i64, i64* %16, align 8
  %156 = call i64 @GetParent(i64 %155)
  store i64 %156, i64* %16, align 8
  br label %136

157:                                              ; preds = %153, %143, %136
  %158 = load i64, i64* %13, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load i64, i64* %6, align 8
  %162 = load i64, i64* %6, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i64 @DIALOG_GetNextTabItem(i64 %161, i64 %162, i64 0, i32 %163)
  store i64 %164, i64* %13, align 8
  br label %165

165:                                              ; preds = %160, %157
  br label %166

166:                                              ; preds = %165, %130
  %167 = load i64, i64* %13, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i64, i64* %13, align 8
  br label %173

171:                                              ; preds = %166
  %172 = load i64, i64* %8, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i64 [ %170, %169 ], [ %172, %171 ]
  store i64 %174, i64* %5, align 8
  br label %175

175:                                              ; preds = %173, %123, %105
  %176 = load i64, i64* %5, align 8
  ret i64 %176
}

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i64 @IsChild(i64, i64) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i32 @GetWindowLongPtrA(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
