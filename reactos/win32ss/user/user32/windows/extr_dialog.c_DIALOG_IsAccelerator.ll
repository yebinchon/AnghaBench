; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_IsAccelerator.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_IsAccelerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GWL_STYLE = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@WS_DISABLED = common dso_local global i32 0, align 4
@WM_GETDLGCODE = common dso_local global i32 0, align 4
@DLGC_BUTTON = common dso_local global i32 0, align 4
@DLGC_STATIC = common dso_local global i32 0, align 4
@BS_GROUPBOX = common dso_local global i32 0, align 4
@WM_NEXTDLGCTL = common dso_local global i32 0, align 4
@BM_CLICK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GW_CHILD = common dso_local global i32 0, align 4
@GW_HWNDNEXT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8)* @DIALOG_IsAccelerator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DIALOG_IsAccelerator(i64 %0, i64 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %8, align 8
  br label %15

15:                                               ; preds = %153, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @GWL_STYLE, align 4
  %18 = call i32 @GetWindowLongPtrW(i64 %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @WS_VISIBLE, align 4
  %21 = load i32, i32* @WS_DISABLED, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = load i32, i32* @WS_VISIBLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %106

26:                                               ; preds = %15
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* @WM_GETDLGCODE, align 4
  %29 = call i32 @SendMessageW(i64 %27, i32 %28, i8 signext 0, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @DLGC_BUTTON, align 4
  %32 = load i32, i32* @DLGC_STATIC, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %26
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %39 = call i64 @GetWindowTextW(i64 %37, i8* %38, i32 128)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %102

41:                                               ; preds = %36
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 -2
  store i8* %43, i8** %13, align 8
  br label %44

44:                                               ; preds = %57, %41
  %45 = load i8*, i8** %13, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = call i8* @strchrW(i8* %46, i8 signext 38)
  store i8* %47, i8** %13, align 8
  br label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 38
  br label %57

57:                                               ; preds = %51, %48
  %58 = phi i1 [ false, %48 ], [ %56, %51 ]
  br i1 %58, label %44, label %59

59:                                               ; preds = %57
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %101

62:                                               ; preds = %59
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @toupperW(i8 signext %65)
  %67 = load i8, i8* %7, align 1
  %68 = call i64 @toupperW(i8 signext %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %62
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @DLGC_STATIC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, 15
  %78 = load i32, i32* @BS_GROUPBOX, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %75, %70
  %81 = load i64, i64* %6, align 8
  %82 = load i32, i32* @WM_NEXTDLGCTL, align 4
  %83 = load i64, i64* %8, align 8
  %84 = trunc i64 %83 to i8
  %85 = call i32 @SendMessageW(i64 %81, i32 %82, i8 signext %84, i32 1)
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @WM_NEXTDLGCTL, align 4
  %88 = call i32 @SendMessageW(i64 %86, i32 %87, i8 signext 0, i32 0)
  br label %99

89:                                               ; preds = %75
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @DLGC_BUTTON, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* @BM_CLICK, align 4
  %97 = call i32 @SendMessageW(i64 %95, i32 %96, i8 signext 0, i32 0)
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %98, %80
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %4, align 4
  br label %157

101:                                              ; preds = %62, %59
  br label %102

102:                                              ; preds = %101, %36, %26
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* @GW_CHILD, align 4
  %105 = call i64 @GetWindow(i64 %103, i32 %104)
  store i64 %105, i64* %9, align 8
  br label %107

106:                                              ; preds = %15
  store i64 0, i64* %9, align 8
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* @GW_HWNDNEXT, align 4
  %113 = call i64 @GetWindow(i64 %111, i32 %112)
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %143, %114
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br label %121

121:                                              ; preds = %118, %115
  %122 = phi i1 [ false, %115 ], [ %120, %118 ]
  br i1 %122, label %123, label %144

123:                                              ; preds = %121
  %124 = load i64, i64* %8, align 8
  %125 = call i64 @GetParent(i64 %124)
  store i64 %125, i64* %8, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i64, i64* %5, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i64, i64* %5, align 8
  store i64 %134, i64* %9, align 8
  br label %144

135:                                              ; preds = %129
  %136 = load i64, i64* %6, align 8
  %137 = load i32, i32* @GW_CHILD, align 4
  %138 = call i64 @GetWindow(i64 %136, i32 %137)
  store i64 %138, i64* %9, align 8
  br label %143

139:                                              ; preds = %123
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* @GW_HWNDNEXT, align 4
  %142 = call i64 @GetWindow(i64 %140, i32 %141)
  store i64 %142, i64* %9, align 8
  br label %143

143:                                              ; preds = %139, %135
  br label %115

144:                                              ; preds = %133, %121
  %145 = load i64, i64* %9, align 8
  store i64 %145, i64* %8, align 8
  br label %146

146:                                              ; preds = %144
  %147 = load i64, i64* %8, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %5, align 8
  %152 = icmp ne i64 %150, %151
  br label %153

153:                                              ; preds = %149, %146
  %154 = phi i1 [ false, %146 ], [ %152, %149 ]
  br i1 %154, label %15, label %155

155:                                              ; preds = %153
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %99
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @GetWindowLongPtrW(i64, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i8 signext, i32) #1

declare dso_local i64 @GetWindowTextW(i64, i8*, i32) #1

declare dso_local i8* @strchrW(i8*, i8 signext) #1

declare dso_local i64 @toupperW(i8 signext) #1

declare dso_local i64 @GetWindow(i64, i32) #1

declare dso_local i64 @GetParent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
