; ModuleID = '/home/carl/AnghaBench/systemd/src/boot/efi/extr_console.c_console_key_read.c'
source_filename = "/home/carl/AnghaBench/systemd/src/boot/efi/extr_console.c_console_key_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID = common dso_local global i32 0, align 4
@console_key_read.TextInputEx = internal global %struct.TYPE_10__* null, align 8
@console_key_read.checked = internal global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BS = common dso_local global %struct.TYPE_13__* null, align 8
@ST = common dso_local global %struct.TYPE_12__* null, align 8
@EFI_SHIFT_STATE_VALID = common dso_local global i32 0, align 4
@EFI_RIGHT_CONTROL_PRESSED = common dso_local global i32 0, align 4
@EFI_LEFT_CONTROL_PRESSED = common dso_local global i32 0, align 4
@EFI_CONTROL_PRESSED = common dso_local global i32 0, align 4
@EFI_RIGHT_ALT_PRESSED = common dso_local global i32 0, align 4
@EFI_LEFT_ALT_PRESSED = common dso_local global i32 0, align 4
@EFI_ALT_PRESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @console_key_read(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* @console_key_read.checked, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = call i32 @LibLocateProtocol(i32* %6, i32** bitcast (%struct.TYPE_10__** @console_key_read.TextInputEx to i32**))
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @EFI_ERROR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.TYPE_10__* null, %struct.TYPE_10__** @console_key_read.TextInputEx, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i64, i64* @TRUE, align 8
  store i64 %23, i64* @console_key_read.checked, align 8
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @BS, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ST, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = call i32 (i32, i32, ...) @uefi_call_wrapper(i32 %30, i32 3, i32 1, i32* %34, i32* %7)
  br label %36

36:                                               ; preds = %27, %24
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_key_read.TextInputEx, align 8
  %38 = icmp ne %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_key_read.TextInputEx, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @console_key_read.TextInputEx, align 8
  %44 = call i32 (i32, i32, ...) @uefi_call_wrapper(i32 %42, i32 2, %struct.TYPE_10__* %43, %struct.TYPE_11__* %10)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @EFI_ERROR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %97, label %48

48:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EFI_SHIFT_STATE_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EFI_RIGHT_CONTROL_PRESSED, align 4
  %60 = load i32, i32* @EFI_LEFT_CONTROL_PRESSED, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* @EFI_CONTROL_PRESSED, align 4
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %64, %55
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @EFI_RIGHT_ALT_PRESSED, align 4
  %73 = load i32, i32* @EFI_LEFT_ALT_PRESSED, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @EFI_ALT_PRESSED, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81, %48
  %83 = load i32, i32* %12, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @KEYPRESS(i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %82
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %4, align 8
  store i32 %94, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %120

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %36
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ST, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ST, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = call i32 (i32, i32, ...) @uefi_call_wrapper(i32 %103, i32 2, %struct.TYPE_10__* %106, %struct.TYPE_11__* %8)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @EFI_ERROR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %120

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @KEYPRESS(i32 0, i32 %115, i32 %117)
  %119 = load i32*, i32** %4, align 8
  store i32 %118, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %113, %111, %93
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @LibLocateProtocol(i32*, i32**) #1

declare dso_local i64 @EFI_ERROR(i32) #1

declare dso_local i32 @uefi_call_wrapper(i32, i32, ...) #1

declare dso_local i32 @KEYPRESS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
