; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_KbdMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_KbdMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GETVKEY = common dso_local global i32* null, align 8
@GETSCAN = common dso_local global i32* null, align 8
@GETFLAGS = common dso_local global i32* null, align 8
@KEYEVENTF_EXTENDEDKEY = common dso_local global i32 0, align 4
@KF_EXTENDED = common dso_local global i32 0, align 4
@KEYEVENTF_KEYUP = common dso_local global i32 0, align 4
@WM_KEYUP = common dso_local global i32 0, align 4
@InputKeyStateTable = common dso_local global i32* null, align 8
@VK_MENU = common dso_local global i64 0, align 8
@VK_CONTROL = common dso_local global i32 0, align 4
@TrackSysKey = common dso_local global i64 0, align 8
@WM_SYSKEYUP = common dso_local global i32 0, align 4
@KF_REPEAT = common dso_local global i32 0, align 4
@KF_UP = common dso_local global i32 0, align 4
@AsyncKeyStateTable = common dso_local global i32* null, align 8
@WM_KEYDOWN = common dso_local global i32 0, align 4
@WM_SYSKEYDOWN = common dso_local global i32 0, align 4
@KF_ALTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*)* @KbdMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KbdMessage(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** @GETVKEY, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** @GETSCAN, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @LOBYTE(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32*, i32** @GETFLAGS, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @KEYEVENTF_EXTENDEDKEY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @KF_EXTENDED, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32*, i32** @GETFLAGS, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @KEYEVENTF_KEYUP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %87

38:                                               ; preds = %30
  %39 = load i32, i32* @WM_KEYUP, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** @InputKeyStateTable, align 8
  %41 = load i64, i64* @VK_MENU, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @VK_MENU, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @VK_CONTROL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** @InputKeyStateTable, align 8
  %57 = load i32, i32* @VK_CONTROL, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %55, %51, %46
  %64 = load i64, i64* @TrackSysKey, align 8
  %65 = load i64, i64* @VK_MENU, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @VK_MENU, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @WM_SYSKEYUP, align 4
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %72, %67
  store i64 0, i64* @TrackSysKey, align 8
  br label %75

75:                                               ; preds = %74, %55, %38
  %76 = load i32*, i32** @InputKeyStateTable, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, -129
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @KF_REPEAT, align 4
  %83 = load i32, i32* @KF_UP, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %9, align 4
  br label %147

87:                                               ; preds = %30
  %88 = load i32*, i32** @InputKeyStateTable, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @KF_REPEAT, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %95, %87
  %100 = load i32*, i32** @InputKeyStateTable, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %99
  %108 = load i32*, i32** @InputKeyStateTable, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %99
  %115 = load i32*, i32** @InputKeyStateTable, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, 128
  store i32 %120, i32* %118, align 4
  %121 = load i32*, i32** @AsyncKeyStateTable, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 128
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @WM_KEYDOWN, align 4
  store i32 %127, i32* %7, align 4
  %128 = load i32*, i32** @InputKeyStateTable, align 8
  %129 = load i64, i64* @VK_MENU, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 128
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %114
  %135 = load i32*, i32** @InputKeyStateTable, align 8
  %136 = load i32, i32* @VK_CONTROL, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 128
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @WM_SYSKEYDOWN, align 4
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* @TrackSysKey, align 8
  br label %146

146:                                              ; preds = %142, %134, %114
  br label %147

147:                                              ; preds = %146, %75
  %148 = load i32*, i32** @InputKeyStateTable, align 8
  %149 = load i64, i64* @VK_MENU, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 128
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %147
  %155 = load i32, i32* @KF_ALTDOWN, align 4
  %156 = load i32, i32* %9, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %9, align 4
  br label %158

158:                                              ; preds = %154, %147
  %159 = load i32*, i32** %6, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @MAKELPARAM(i32 1, i32 %162)
  %164 = load i32*, i32** %6, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %158
  %166 = load i32*, i32** %5, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %8, align 4
  %170 = load i32*, i32** %5, align 8
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %168, %165
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @LOBYTE(i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
