; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dialog.c_promptdisk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.promptdisk_params = type { i32, i64, i64, i32*, i64 }

@DWLP_USER = common dso_local global i32 0, align 4
@IDC_PATH = common dso_local global i32 0, align 4
@IDF_OEMDISK = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_PROMPTDISK = common dso_local global i32 0, align 4
@IDS_UNKNOWN = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_STRING = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ARGUMENT_ARRAY = common dso_local global i32 0, align 4
@IDC_FILENEEDED = common dso_local global i32 0, align 4
@IDS_INFO = common dso_local global i32 0, align 4
@IDC_INFO = common dso_local global i32 0, align 4
@IDS_COPYFROM = common dso_local global i32 0, align 4
@IDC_COPYFROM = common dso_local global i32 0, align 4
@IDF_NOBROWSE = common dso_local global i32 0, align 4
@IDC_RUNDLG_BROWSE = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.promptdisk_params*)* @promptdisk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @promptdisk_init(i32 %0, %struct.promptdisk_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.promptdisk_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca [256 x i32], align 16
  %9 = alloca [2 x i64], align 16
  store i32 %0, i32* %3, align 4
  store %struct.promptdisk_params* %1, %struct.promptdisk_params** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DWLP_USER, align 4
  %12 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %13 = ptrtoint %struct.promptdisk_params* %12 to i32
  %14 = call i32 @SetWindowLongPtrW(i32 %10, i32 %11, i32 %13)
  %15 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %16 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %22 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @SetWindowTextW(i32 %20, i64 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %27 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IDC_PATH, align 4
  %33 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %34 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @SetDlgItemTextW(i32 %31, i32 %32, i32* %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %39 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @IDF_OEMDISK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %109, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @MAX_PATH, align 4
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 256, %46
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %5, align 8
  %50 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %6, align 8
  %51 = load i32, i32* @hInstance, align 4
  %52 = load i32, i32* @IDS_PROMPTDISK, align 4
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %54 = call i32 @LoadStringW(i32 %51, i32 %52, i32* %53, i32 256)
  %55 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %56 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %57, i64* %58, align 16
  %59 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %60 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %44
  %64 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %65 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %66, i64* %67, align 8
  br label %76

68:                                               ; preds = %44
  %69 = load i32, i32* @hInstance, align 4
  %70 = load i32, i32* @IDS_UNKNOWN, align 4
  %71 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %72 = call i32 @LoadStringW(i32 %69, i32 %70, i32* %71, i32 256)
  %73 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %74 = ptrtoint i32* %73 to i64
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %68, %63
  %77 = load i32, i32* @FORMAT_MESSAGE_FROM_STRING, align 4
  %78 = load i32, i32* @FORMAT_MESSAGE_ARGUMENT_ARRAY, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %81 = mul nuw i64 4, %48
  %82 = udiv i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %85 = bitcast i64* %84 to i32*
  %86 = call i32 @FormatMessageW(i32 %79, i32* %80, i32 0, i32 0, i32* %50, i32 %83, i32* %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @IDC_FILENEEDED, align 4
  %89 = call i32 @SetDlgItemTextW(i32 %87, i32 %88, i32* %50)
  %90 = load i32, i32* @hInstance, align 4
  %91 = load i32, i32* @IDS_INFO, align 4
  %92 = mul nuw i64 4, %48
  %93 = udiv i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @LoadStringW(i32 %90, i32 %91, i32* %50, i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @IDC_INFO, align 4
  %98 = call i32 @SetDlgItemTextW(i32 %96, i32 %97, i32* %50)
  %99 = load i32, i32* @hInstance, align 4
  %100 = load i32, i32* @IDS_COPYFROM, align 4
  %101 = mul nuw i64 4, %48
  %102 = udiv i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @LoadStringW(i32 %99, i32 %100, i32* %50, i32 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @IDC_COPYFROM, align 4
  %107 = call i32 @SetDlgItemTextW(i32 %105, i32 %106, i32* %50)
  %108 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %109

109:                                              ; preds = %76, %37
  %110 = load %struct.promptdisk_params*, %struct.promptdisk_params** %4, align 8
  %111 = getelementptr inbounds %struct.promptdisk_params, %struct.promptdisk_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IDF_NOBROWSE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @IDC_RUNDLG_BROWSE, align 4
  %119 = call i32 @GetDlgItem(i32 %117, i32 %118)
  %120 = load i32, i32* @SW_HIDE, align 4
  %121 = call i32 @ShowWindow(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %116, %109
  ret void
}

declare dso_local i32 @SetWindowLongPtrW(i32, i32, i32) #1

declare dso_local i32 @SetWindowTextW(i32, i64) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @FormatMessageW(i32, i32*, i32, i32, i32*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
