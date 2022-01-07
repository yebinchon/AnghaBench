; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_update_result_text.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_update_result_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@update_result_text.percent_s = internal constant [3 x i8] c"%s\00", align 1
@IDC_PS_DISPLAYLIST = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@PSF_SELECTPASTE = common dso_local global i32 0, align 4
@PSF_CHECKDISPLAYASICON = common dso_local global i32 0, align 4
@IDS_PS_PASTE_OBJECT_AS_ICON = common dso_local global i32 0, align 4
@IDS_PS_PASTE_DATA = common dso_local global i32 0, align 4
@IDS_PS_PASTE_LINK_OBJECT_AS_ICON = common dso_local global i32 0, align 4
@IDS_PS_PASTE_LINK_DATA = common dso_local global i32 0, align 4
@OLEDLG_hInstance = common dso_local global i32 0, align 4
@IDC_PS_RESULTTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @update_result_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_result_text(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @IDC_PS_DISPLAYLIST, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  %16 = load i32, i32* @LB_GETCURSEL, align 4
  %17 = call i32 @SendMessageW(i32 %15, i32 %16, i32 0, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %137

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @IDC_PS_DISPLAYLIST, align 4
  %24 = call i32 @GetDlgItem(i32 %22, i32 %23)
  %25 = load i32, i32* @LB_GETITEMDATA, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SendMessageW(i32 %24, i32 %25, i32 %26, i32 0)
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PSF_SELECTPASTE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %21
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PSF_CHECKDISPLAYASICON, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @IDS_PS_PASTE_OBJECT_AS_ICON, align 4
  store i32 %44, i32* %6, align 4
  br label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IDS_PS_PASTE_DATA, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %43
  br label %60

48:                                               ; preds = %21
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PSF_CHECKDISPLAYASICON, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @IDS_PS_PASTE_LINK_OBJECT_AS_ICON, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @IDS_PS_PASTE_LINK_DATA, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* @OLEDLG_hInstance, align 4
  %62 = load i32, i32* %6, align 4
  %63 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %65 = call i32 @ARRAY_SIZE(i8* %64)
  %66 = call i32 @LoadStringW(i32 %61, i32 %62, i8* %63, i32 %65)
  %67 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %68 = call i8* @strstrW(i8* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @update_result_text.percent_s, i64 0, i64 0))
  store i8* %68, i8** %10, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %123

70:                                               ; preds = %60
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strlenW(i8* %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %11, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  %82 = call i32 (...) @GetProcessHeap()
  %83 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %84 = call i32 @strlenW(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = sub i64 %87, 1
  %89 = mul i64 %88, 1
  %90 = call i8* @HeapAlloc(i32 %82, i32 0, i64 %89)
  store i8* %90, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @memcpy(i8* %91, i8* %92, i32 %93)
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %11, align 8
  %103 = mul i64 %102, 1
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memcpy(i8* %98, i8* %101, i32 %104)
  %106 = load i8*, i8** %9, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i64, i64* %11, align 8
  %111 = mul i64 %110, 1
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  %117 = call i32 @strlenW(i8* %116)
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 1
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(i8* %112, i8* %114, i32 %121)
  br label %125

123:                                              ; preds = %60
  %124 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %123, %70
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @IDC_PS_RESULTTEXT, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @SetDlgItemTextW(i32 %126, i32 %127, i8* %128)
  %130 = load i8*, i8** %9, align 8
  %131 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = call i32 (...) @GetProcessHeap()
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @HeapFree(i32 %134, i32 0, i8* %135)
  br label %137

137:                                              ; preds = %20, %133, %125
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i8* @strstrW(i8*, i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
