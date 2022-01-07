; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_init_lists.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_init_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PSF_SELECTPASTE = common dso_local global i32 0, align 4
@PSF_SELECTPASTELINK = common dso_local global i32 0, align 4
@IDC_PS_PASTE = common dso_local global i64 0, align 8
@IDC_PS_PASTELIST = common dso_local global i64 0, align 8
@IDC_PS_PASTELINK = common dso_local global i64 0, align 8
@IDC_PS_PASTELINKLIST = common dso_local global i64 0, align 8
@IDOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @init_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_lists(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @init_pastelist(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @init_linklist(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PSF_SELECTPASTE, align 4
  %23 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* @PSF_SELECTPASTE, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* @PSF_SELECTPASTE, align 4
  %41 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %94

48:                                               ; preds = %36, %33
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PSF_SELECTPASTE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %51
  %59 = load i32, i32* @PSF_SELECTPASTE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %93

70:                                               ; preds = %51, %48
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  %81 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @PSF_SELECTPASTE, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %80, %73, %70
  br label %93

93:                                               ; preds = %92, %58
  br label %94

94:                                               ; preds = %93, %39
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PSF_SELECTPASTE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i64, i64* @IDC_PS_PASTE, align 8
  store i64 %102, i64* %7, align 8
  %103 = load i64, i64* @IDC_PS_PASTELIST, align 8
  store i64 %103, i64* %8, align 8
  br label %115

104:                                              ; preds = %94
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PSF_SELECTPASTELINK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i64, i64* @IDC_PS_PASTELINK, align 8
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* @IDC_PS_PASTELINKLIST, align 8
  store i64 %113, i64* %8, align 8
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i32, i32* %3, align 4
  %117 = load i64, i64* @IDC_PS_PASTE, align 8
  %118 = load i64, i64* @IDC_PS_PASTELINK, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @CheckRadioButton(i32 %116, i64 %117, i64 %118, i64 %119)
  %121 = load i64, i64* %8, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i32, i32* %3, align 4
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @update_display_list(i32 %124, i64 %125)
  br label %132

127:                                              ; preds = %115
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @IDOK, align 4
  %130 = call i32 @GetDlgItem(i32 %128, i32 %129)
  %131 = call i32 @EnableWindow(i32 %130, i32 0)
  br label %132

132:                                              ; preds = %127, %123
  ret void
}

declare dso_local i32 @init_pastelist(i32, i32) #1

declare dso_local i32 @init_linklist(i32, i32) #1

declare dso_local i32 @CheckRadioButton(i32, i64, i64, i64) #1

declare dso_local i32 @update_display_list(i32, i64) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
