; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_CheckForFileInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_CheckForFileInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PropertiesDialog = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.LANGANDCODEPAGE = type { i32, i32 }

@CheckForFileInfo.sBackSlash = internal constant [2 x i8] c"\\\00", align 1
@CheckForFileInfo.sTranslation = internal constant [25 x i8] c"\\VarFileInfo\\Translation\00", align 16
@CheckForFileInfo.sStringFileInfo = internal constant [28 x i8] c"\\StringFileInfo\\%04x%04x\\%s\00", align 16
@CheckForFileInfo.sFmt = internal constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@BUFFER_LEN = common dso_local global i32 0, align 4
@IDC_STATIC_PROP_VERSION = common dso_local global i32 0, align 4
@IDC_LIST_PROP_VERSION_TYPES = common dso_local global i32 0, align 4
@InfoStrings = common dso_local global i64* null, align 8
@CP_ACP = common dso_local global i32 0, align 4
@LB_ADDSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@IDC_LIST_PROP_VERSION_VALUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PropertiesDialog*, i32, i64)* @CheckForFileInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckForFileInfo(%struct.PropertiesDialog* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.PropertiesDialog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.LANGANDCODEPAGE*, align 8
  %14 = alloca %struct.LANGANDCODEPAGE*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca [200 x i8], align 16
  %18 = alloca [100 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.PropertiesDialog* %0, %struct.PropertiesDialog** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @GetFileVersionInfoSizeW(i64 %23, i32* null)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %159

27:                                               ; preds = %3
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @HeapAlloc(i32 %28, i32 0, i64 %29)
  %31 = load %struct.PropertiesDialog*, %struct.PropertiesDialog** %4, align 8
  %32 = getelementptr inbounds %struct.PropertiesDialog, %struct.PropertiesDialog* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.PropertiesDialog*, %struct.PropertiesDialog** %4, align 8
  %36 = getelementptr inbounds %struct.PropertiesDialog, %struct.PropertiesDialog* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @GetFileVersionInfoW(i64 %33, i32 0, i64 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %158

40:                                               ; preds = %27
  %41 = load %struct.PropertiesDialog*, %struct.PropertiesDialog** %4, align 8
  %42 = getelementptr inbounds %struct.PropertiesDialog, %struct.PropertiesDialog* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @VerQueryValueW(i32 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @CheckForFileInfo.sBackSlash, i64 0, i64 0), i64* %8, i32* %9)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 8
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = inttoptr i64 %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %10, align 8
  %53 = load i32, i32* @BUFFER_LEN, align 4
  %54 = zext i32 %53 to i64
  %55 = call i8* @llvm.stacksave()
  store i8* %55, i8** %11, align 8
  %56 = alloca i8, i64 %54, align 16
  store i64 %54, i64* %12, align 8
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @HIWORD(i32 %59)
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LOWORD(i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @HIWORD(i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @LOWORD(i32 %71)
  %73 = call i32 @sprintfW(i8* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @CheckForFileInfo.sFmt, i64 0, i64 0), i32 %60, i32 %64, i32 %68, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @IDC_STATIC_PROP_VERSION, align 4
  %76 = call i32 @SetDlgItemTextW(i32 %74, i32 %75, i8* %56)
  %77 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %77)
  br label %78

78:                                               ; preds = %50, %46
  br label %79

79:                                               ; preds = %78, %40
  %80 = load %struct.PropertiesDialog*, %struct.PropertiesDialog** %4, align 8
  %81 = getelementptr inbounds %struct.PropertiesDialog, %struct.PropertiesDialog* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @VerQueryValueW(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @CheckForFileInfo.sTranslation, i64 0, i64 0), i64* %8, i32* %9)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %157

85:                                               ; preds = %79
  %86 = load i64, i64* %8, align 8
  %87 = inttoptr i64 %86 to %struct.LANGANDCODEPAGE*
  store %struct.LANGANDCODEPAGE* %87, %struct.LANGANDCODEPAGE** %13, align 8
  %88 = load i64, i64* %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = inttoptr i64 %91 to %struct.LANGANDCODEPAGE*
  store %struct.LANGANDCODEPAGE* %92, %struct.LANGANDCODEPAGE** %14, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @IDC_LIST_PROP_VERSION_TYPES, align 4
  %95 = call i32 @GetDlgItem(i32 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %145, %85
  %97 = load %struct.LANGANDCODEPAGE*, %struct.LANGANDCODEPAGE** %13, align 8
  %98 = load %struct.LANGANDCODEPAGE*, %struct.LANGANDCODEPAGE** %14, align 8
  %99 = icmp ult %struct.LANGANDCODEPAGE* %97, %98
  br i1 %99, label %100, label %148

100:                                              ; preds = %96
  %101 = load i64*, i64** @InfoStrings, align 8
  store i64* %101, i64** %16, align 8
  br label %102

102:                                              ; preds = %141, %100
  %103 = load i64*, i64** %16, align 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %102
  %107 = load i64*, i64** %16, align 8
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %21, align 8
  %109 = load i32, i32* @CP_ACP, align 4
  %110 = load i64, i64* %21, align 8
  %111 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %112 = call i32 @MultiByteToWideChar(i32 %109, i32 0, i64 %110, i32 -1, i8* %111, i32 100)
  %113 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %114 = load %struct.LANGANDCODEPAGE*, %struct.LANGANDCODEPAGE** %13, align 8
  %115 = getelementptr inbounds %struct.LANGANDCODEPAGE, %struct.LANGANDCODEPAGE* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.LANGANDCODEPAGE*, %struct.LANGANDCODEPAGE** %13, align 8
  %118 = getelementptr inbounds %struct.LANGANDCODEPAGE, %struct.LANGANDCODEPAGE* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %121 = call i32 @wsprintfW(i8* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @CheckForFileInfo.sStringFileInfo, i64 0, i64 0), i32 %116, i32 %119, i8* %120)
  %122 = load %struct.PropertiesDialog*, %struct.PropertiesDialog** %4, align 8
  %123 = getelementptr inbounds %struct.PropertiesDialog, %struct.PropertiesDialog* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %126 = call i64 @VerQueryValueW(i32 %124, i8* %125, i64* %19, i32* %20)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %106
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @LB_ADDSTRING, align 4
  %131 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %132 = ptrtoint i8* %131 to i32
  %133 = call i32 @SendMessageW(i32 %129, i32 %130, i32 0, i32 %132)
  store i32 %133, i32* %22, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @LB_SETITEMDATA, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i64, i64* %19, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @SendMessageW(i32 %134, i32 %135, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %128, %106
  br label %141

141:                                              ; preds = %140
  %142 = load i64*, i64** %16, align 8
  %143 = getelementptr inbounds i64, i64* %142, i32 1
  store i64* %143, i64** %16, align 8
  br label %102

144:                                              ; preds = %102
  br label %145

145:                                              ; preds = %144
  %146 = load %struct.LANGANDCODEPAGE*, %struct.LANGANDCODEPAGE** %13, align 8
  %147 = getelementptr inbounds %struct.LANGANDCODEPAGE, %struct.LANGANDCODEPAGE* %146, i32 1
  store %struct.LANGANDCODEPAGE* %147, %struct.LANGANDCODEPAGE** %13, align 8
  br label %96

148:                                              ; preds = %96
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @LB_SETCURSEL, align 4
  %151 = call i32 @SendMessageW(i32 %149, i32 %150, i32 0, i32 0)
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @IDC_LIST_PROP_VERSION_VALUES, align 4
  %155 = call i32 @GetDlgItem(i32 %153, i32 %154)
  %156 = call i32 @PropDlg_DisplayValue(i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %148, %79
  br label %158

158:                                              ; preds = %157, %27
  br label %159

159:                                              ; preds = %158, %3
  ret void
}

declare dso_local i64 @GetFileVersionInfoSizeW(i64, i32*) #1

declare dso_local i32 @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @GetFileVersionInfoW(i64, i32, i64, i32) #1

declare dso_local i64 @VerQueryValueW(i32, i8*, i64*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @HIWORD(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i8*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @PropDlg_DisplayValue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
