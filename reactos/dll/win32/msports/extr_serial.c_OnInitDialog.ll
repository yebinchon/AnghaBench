; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msports/extr_serial.c_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msports/extr_serial.c_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"OnInitDialog()\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pPortData is NULL\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DWLP_USER = common dso_local global i32 0, align 4
@IDC_SERIAL_BITSPERSECOND = common dso_local global i32 0, align 4
@BaudRates = common dso_local global i32***** null, align 8
@IDC_SERIAL_DATABITS = common dso_local global i32 0, align 4
@DataBits = common dso_local global i32***** null, align 8
@hInstance = common dso_local global i32 0, align 4
@IDS_PARITY = common dso_local global i32 0, align 4
@IDC_SERIAL_PARITY = common dso_local global i32 0, align 4
@IDS_STOPBITS = common dso_local global i32 0, align 4
@IDC_SERIAL_STOPBITS = common dso_local global i32 0, align 4
@IDS_FLOWCONTROL = common dso_local global i32 0, align 4
@IDC_SERIAL_FLOWCONTROL = common dso_local global i32 0, align 4
@IDC_SERIAL_ADVANCED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64)* @OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnInitDialog(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca [256 x i32****], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %7, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %165

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @DWLP_USER, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = ptrtoint %struct.TYPE_4__* %26 to i32
  %28 = call i32 @SetWindowLongPtr(i64 %24, i32 %25, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = call i32 @ReadPortSettings(%struct.TYPE_4__* %29)
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* @IDC_SERIAL_BITSPERSECOND, align 4
  %33 = call i64 @GetDlgItem(i64 %31, i32 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %23
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i64, i64* %10, align 8
  %39 = load i32*****, i32****** @BaudRates, align 8
  %40 = call i64 @ARRAYSIZE(i32***** %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32*****, i32****** @BaudRates, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i32****, i32***** %43, i64 %44
  %46 = load i32****, i32***** %45, align 8
  %47 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %48 = call i32 @_ultow(i32**** %46, i32***** %47, i32 10)
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %51 = bitcast i32***** %50 to i32****
  %52 = call i32 @ComboBox_AddString(i64 %49, i32**** %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %37

56:                                               ; preds = %37
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ComboBox_SetCurSel(i64 %57, i32 %60)
  br label %62

62:                                               ; preds = %56, %23
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* @IDC_SERIAL_DATABITS, align 4
  %65 = call i64 @GetDlgItem(i64 %63, i32 %64)
  store i64 %65, i64* %11, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i64, i64* %10, align 8
  %71 = load i32*****, i32****** @DataBits, align 8
  %72 = call i64 @ARRAYSIZE(i32***** %71)
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i64, i64* %11, align 8
  %76 = load i32*****, i32****** @DataBits, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds i32****, i32***** %76, i64 %77
  %79 = load i32****, i32***** %78, align 8
  %80 = call i32 @ComboBox_AddString(i64 %75, i32**** %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %10, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %10, align 8
  br label %69

84:                                               ; preds = %69
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ComboBox_SetCurSel(i64 %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %62
  %91 = load i32, i32* @hInstance, align 4
  %92 = load i32, i32* @IDS_PARITY, align 4
  %93 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %94 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %95 = call i64 @ARRAYSIZE(i32***** %94)
  %96 = call i32 @LoadStringW(i32 %91, i32 %92, i32***** %93, i64 %95)
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* @IDC_SERIAL_PARITY, align 4
  %99 = call i64 @GetDlgItem(i64 %97, i32 %98)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %90
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %105 = call i32 @FillComboBox(i64 %103, i32***** %104)
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ComboBox_SetCurSel(i64 %106, i32 %109)
  br label %111

111:                                              ; preds = %102, %90
  %112 = load i32, i32* @hInstance, align 4
  %113 = load i32, i32* @IDS_STOPBITS, align 4
  %114 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %115 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %116 = call i64 @ARRAYSIZE(i32***** %115)
  %117 = call i32 @LoadStringW(i32 %112, i32 %113, i32***** %114, i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @IDC_SERIAL_STOPBITS, align 4
  %120 = call i64 @GetDlgItem(i64 %118, i32 %119)
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %111
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %126 = call i32 @FillComboBox(i64 %124, i32***** %125)
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ComboBox_SetCurSel(i64 %127, i32 %130)
  br label %132

132:                                              ; preds = %123, %111
  %133 = load i32, i32* @hInstance, align 4
  %134 = load i32, i32* @IDS_FLOWCONTROL, align 4
  %135 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %136 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %137 = call i64 @ARRAYSIZE(i32***** %136)
  %138 = call i32 @LoadStringW(i32 %133, i32 %134, i32***** %135, i64 %137)
  %139 = load i64, i64* %5, align 8
  %140 = load i32, i32* @IDC_SERIAL_FLOWCONTROL, align 4
  %141 = call i64 @GetDlgItem(i64 %139, i32 %140)
  store i64 %141, i64* %11, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %132
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds [256 x i32****], [256 x i32****]* %9, i64 0, i64 0
  %147 = call i32 @FillComboBox(i64 %145, i32***** %146)
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @ComboBox_SetCurSel(i64 %148, i32 %151)
  br label %153

153:                                              ; preds = %144, %132
  %154 = load i64, i64* %5, align 8
  %155 = load i32, i32* @IDC_SERIAL_ADVANCED, align 4
  %156 = call i64 @GetDlgItem(i64 %154, i32 %155)
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %11, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i64, i64* %11, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = call i32 @EnableWindow(i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %153
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %20
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetWindowLongPtr(i64, i32, i32) #1

declare dso_local i32 @ReadPortSettings(%struct.TYPE_4__*) #1

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i64 @ARRAYSIZE(i32*****) #1

declare dso_local i32 @_ultow(i32****, i32*****, i32) #1

declare dso_local i32 @ComboBox_AddString(i64, i32****) #1

declare dso_local i32 @ComboBox_SetCurSel(i64, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*****, i64) #1

declare dso_local i32 @FillComboBox(i64, i32*****) #1

declare dso_local i32 @EnableWindow(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
