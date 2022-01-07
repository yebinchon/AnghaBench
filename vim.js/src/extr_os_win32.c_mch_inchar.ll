; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_inchar.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_os_win32.c_mch_inchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mch_inchar.typeahead = internal global [20 x i64] zeroinitializer, align 16
@mch_inchar.typeaheadlen = internal global i32 0, align 4
@p_ut = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@g_fCBrkPressed = common dso_local global i32 0, align 4
@NUL = common dso_local global i64 0, align 8
@Ctrl_C = common dso_local global i32 0, align 4
@ctrl_c_interrupts = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@got_int = common dso_local global i32 0, align 4
@MOD_MASK_ALT = common dso_local global i32 0, align 4
@K_SPECIAL = common dso_local global i64 0, align 8
@KS_MODIFIER = common dso_local global i64 0, align 8
@CONV_NONE = common dso_local global i64 0, align 8
@CSI = common dso_local global i64 0, align 8
@ESC = common dso_local global i64 0, align 8
@KE_CURSORHOLD = common dso_local global i64 0, align 8
@KE_SNIFF = common dso_local global i64 0, align 8
@KS_EXTRA = common dso_local global i64 0, align 8
@K_NUL = common dso_local global i32 0, align 4
@TYPEAHEADLEN = common dso_local global i32 0, align 4
@enc_dbcs = common dso_local global i32 0, align 4
@fdDump = common dso_local global i64 0, align 8
@g_nMouseClick = common dso_local global i32 0, align 4
@g_xMouse = common dso_local global i32 0, align 4
@g_yMouse = common dso_local global i32 0, align 4
@input_conv = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sniff_request_waiting = common dso_local global i64 0, align 8
@want_sniff_request = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mch_inchar(i64* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %146

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @WaitForChar(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %168

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %18
  %28 = call i32 (...) @mch_set_winsize_now()
  %29 = load i64, i64* @p_ut, align 8
  %30 = call i64 @WaitForChar(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call i32 (...) @before_blocking()
  br label %34

34:                                               ; preds = %32, %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* @g_fCBrkPressed, align 4
  br label %37

37:                                               ; preds = %141, %35
  %38 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i64 @WaitForChar(i64 0)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %45 = add nsw i32 %44, 5
  %46 = icmp sle i32 %45, 20
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br i1 %48, label %49, label %145

49:                                               ; preds = %47
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @typebuf_changed(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* @mch_inchar.typeaheadlen, align 4
  br label %145

54:                                               ; preds = %49
  %55 = load i64, i64* @NUL, align 8
  store i64 %55, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %56 = call i32 @tgetch(i32* %13, i64* %12)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @typebuf_changed(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* @mch_inchar.typeaheadlen, align 4
  br label %145

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @Ctrl_C, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* @ctrl_c_interrupts, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* @got_int, align 4
  br label %70

70:                                               ; preds = %68, %65, %61
  store i32 1, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %74
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @NUL, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %70
  %80 = load i64, i64* %12, align 8
  %81 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %83
  store i64 %80, i64* %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %79, %70
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @MOD_MASK_ALT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %87
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 128
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %95
  %103 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = or i64 %106, 128
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* @MOD_MASK_ALT, align 4
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %13, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %102, %95, %92, %87
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %141

115:                                              ; preds = %112
  %116 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 %117
  %119 = getelementptr inbounds i64, i64* %118, i64 3
  %120 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64 %121
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @mch_memmove(i64* %119, i64* %122, i32 %123)
  %125 = load i64, i64* @K_SPECIAL, align 8
  %126 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @mch_inchar.typeaheadlen, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %128
  store i64 %125, i64* %129, align 8
  %130 = load i64, i64* @KS_MODIFIER, align 8
  %131 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @mch_inchar.typeaheadlen, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %133
  store i64 %130, i64* %134, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @mch_inchar.typeaheadlen, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds [20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 %139
  store i64 %136, i64* %140, align 8
  br label %141

141:                                              ; preds = %115, %112
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* @mch_inchar.typeaheadlen, align 4
  br label %37

145:                                              ; preds = %60, %53, %47
  br label %146

146:                                              ; preds = %145, %17
  store i32 0, i32* %10, align 4
  br label %147

147:                                              ; preds = %156, %146
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %153 = icmp sgt i32 %152, 0
  br label %154

154:                                              ; preds = %151, %147
  %155 = phi i1 [ false, %147 ], [ %153, %151 ]
  br i1 %155, label %156, label %166

156:                                              ; preds = %154
  %157 = load i64, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), align 16
  %158 = load i64*, i64** %6, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  store i64 %157, i64* %162, align 8
  %163 = load i32, i32* @mch_inchar.typeaheadlen, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* @mch_inchar.typeaheadlen, align 4
  %165 = call i32 @mch_memmove(i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 0), i64* getelementptr inbounds ([20 x i64], [20 x i64]* @mch_inchar.typeahead, i64 0, i64 1), i32 %164)
  br label %147

166:                                              ; preds = %154
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %25
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i64 @WaitForChar(i64) #1

declare dso_local i32 @mch_set_winsize_now(...) #1

declare dso_local i32 @before_blocking(...) #1

declare dso_local i64 @typebuf_changed(i32) #1

declare dso_local i32 @tgetch(i32*, i64*) #1

declare dso_local i32 @mch_memmove(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
