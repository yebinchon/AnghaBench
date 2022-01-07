; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_comctl32_classes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_comctl32_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANIMATE_CLASSA = common dso_local global i8* null, align 8
@CS_DBLCLKS = common dso_local global i32 0, align 4
@CS_GLOBALCLASS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WC_COMBOBOXEXA = common dso_local global i8* null, align 8
@DATETIMEPICK_CLASSA = common dso_local global i8* null, align 8
@WC_HEADERA = common dso_local global i8* null, align 8
@HOTKEY_CLASSA = common dso_local global i8* null, align 8
@WC_IPADDRESSA = common dso_local global i8* null, align 8
@CS_HREDRAW = common dso_local global i32 0, align 4
@CS_VREDRAW = common dso_local global i32 0, align 4
@WC_LISTVIEWA = common dso_local global i8* null, align 8
@MONTHCAL_CLASSA = common dso_local global i8* null, align 8
@WC_NATIVEFONTCTLA = common dso_local global i8* null, align 8
@WC_PAGESCROLLERA = common dso_local global i8* null, align 8
@PROGRESS_CLASSA = common dso_local global i8* null, align 8
@REBARCLASSNAMEA = common dso_local global i8* null, align 8
@STATUSCLASSNAMEA = common dso_local global i8* null, align 8
@WC_TABCONTROLA = common dso_local global i8* null, align 8
@TOOLBARCLASSNAMEA = common dso_local global i8* null, align 8
@TOOLTIPS_CLASSA = common dso_local global i8* null, align 8
@CS_DROPSHADOW = common dso_local global i32 0, align 4
@CS_SAVEBITS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TRACKBAR_CLASSA = common dso_local global i8* null, align 8
@WC_TREEVIEWA = common dso_local global i8* null, align 8
@UPDOWN_CLASSA = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"SysLink\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_comctl32_classes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_comctl32_classes(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i8*, i8** @ANIMATE_CLASSA, align 8
  %4 = load i32, i32* @CS_DBLCLKS, align 4
  %5 = load i32, i32* @CS_GLOBALCLASS, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @FALSE, align 4
  %8 = call i32 @check_class(i8* %3, i32 1, i32 %6, i32 0, i32 %7)
  %9 = load i8*, i8** @WC_COMBOBOXEXA, align 8
  %10 = load i32, i32* @CS_GLOBALCLASS, align 4
  %11 = load i32, i32* @FALSE, align 4
  %12 = call i32 @check_class(i8* %9, i32 1, i32 %10, i32 0, i32 %11)
  %13 = load i8*, i8** @DATETIMEPICK_CLASSA, align 8
  %14 = load i32, i32* @CS_GLOBALCLASS, align 4
  %15 = load i32, i32* @FALSE, align 4
  %16 = call i32 @check_class(i8* %13, i32 1, i32 %14, i32 0, i32 %15)
  %17 = load i8*, i8** @WC_HEADERA, align 8
  %18 = load i32, i32* @CS_DBLCLKS, align 4
  %19 = load i32, i32* @CS_GLOBALCLASS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @check_class(i8* %17, i32 1, i32 %20, i32 0, i32 %21)
  %23 = load i8*, i8** @HOTKEY_CLASSA, align 8
  %24 = load i32, i32* @CS_GLOBALCLASS, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @check_class(i8* %23, i32 1, i32 %24, i32 0, i32 %25)
  %27 = load i8*, i8** @WC_IPADDRESSA, align 8
  %28 = load i32, i32* @CS_DBLCLKS, align 4
  %29 = load i32, i32* @CS_HREDRAW, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CS_VREDRAW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CS_GLOBALCLASS, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @check_class(i8* %27, i32 1, i32 %34, i32 0, i32 %35)
  %37 = load i8*, i8** @WC_LISTVIEWA, align 8
  %38 = load i32, i32* @CS_DBLCLKS, align 4
  %39 = load i32, i32* @CS_GLOBALCLASS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FALSE, align 4
  %42 = call i32 @check_class(i8* %37, i32 1, i32 %40, i32 0, i32 %41)
  %43 = load i8*, i8** @MONTHCAL_CLASSA, align 8
  %44 = load i32, i32* @CS_GLOBALCLASS, align 4
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @check_class(i8* %43, i32 1, i32 %44, i32 0, i32 %45)
  %47 = load i8*, i8** @WC_NATIVEFONTCTLA, align 8
  %48 = load i32, i32* @CS_GLOBALCLASS, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @check_class(i8* %47, i32 1, i32 %48, i32 0, i32 %49)
  %51 = load i8*, i8** @WC_PAGESCROLLERA, align 8
  %52 = load i32, i32* @CS_GLOBALCLASS, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = call i32 @check_class(i8* %51, i32 1, i32 %52, i32 0, i32 %53)
  %55 = load i8*, i8** @PROGRESS_CLASSA, align 8
  %56 = load i32, i32* @CS_HREDRAW, align 4
  %57 = load i32, i32* @CS_VREDRAW, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CS_GLOBALCLASS, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FALSE, align 4
  %62 = call i32 @check_class(i8* %55, i32 1, i32 %60, i32 0, i32 %61)
  %63 = load i8*, i8** @REBARCLASSNAMEA, align 8
  %64 = load i32, i32* @CS_DBLCLKS, align 4
  %65 = load i32, i32* @CS_GLOBALCLASS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @check_class(i8* %63, i32 1, i32 %66, i32 0, i32 %67)
  %69 = load i8*, i8** @STATUSCLASSNAMEA, align 8
  %70 = load i32, i32* @CS_DBLCLKS, align 4
  %71 = load i32, i32* @CS_VREDRAW, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CS_GLOBALCLASS, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @check_class(i8* %69, i32 1, i32 %74, i32 0, i32 %75)
  %77 = load i8*, i8** @WC_TABCONTROLA, align 8
  %78 = load i32, i32* @CS_DBLCLKS, align 4
  %79 = load i32, i32* @CS_HREDRAW, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CS_VREDRAW, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @CS_GLOBALCLASS, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @check_class(i8* %77, i32 1, i32 %84, i32 0, i32 %85)
  %87 = load i8*, i8** @TOOLBARCLASSNAMEA, align 8
  %88 = load i32, i32* @CS_DBLCLKS, align 4
  %89 = load i32, i32* @CS_GLOBALCLASS, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @FALSE, align 4
  %92 = call i32 @check_class(i8* %87, i32 1, i32 %90, i32 0, i32 %91)
  %93 = load i32, i32* %2, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %1
  %96 = load i8*, i8** @TOOLTIPS_CLASSA, align 8
  %97 = load i32, i32* @CS_DBLCLKS, align 4
  %98 = load i32, i32* @CS_HREDRAW, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @CS_VREDRAW, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @CS_GLOBALCLASS, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @CS_DROPSHADOW, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @CS_SAVEBITS, align 4
  %107 = load i32, i32* @CS_HREDRAW, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @CS_VREDRAW, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @TRUE, align 4
  %112 = call i32 @check_class(i8* %96, i32 1, i32 %105, i32 %110, i32 %111)
  br label %125

113:                                              ; preds = %1
  %114 = load i8*, i8** @TOOLTIPS_CLASSA, align 8
  %115 = load i32, i32* @CS_DBLCLKS, align 4
  %116 = load i32, i32* @CS_GLOBALCLASS, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CS_SAVEBITS, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @CS_HREDRAW, align 4
  %121 = load i32, i32* @CS_VREDRAW, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @FALSE, align 4
  %124 = call i32 @check_class(i8* %114, i32 1, i32 %119, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %113, %95
  %126 = load i8*, i8** @TRACKBAR_CLASSA, align 8
  %127 = load i32, i32* @CS_GLOBALCLASS, align 4
  %128 = load i32, i32* @FALSE, align 4
  %129 = call i32 @check_class(i8* %126, i32 1, i32 %127, i32 0, i32 %128)
  %130 = load i8*, i8** @WC_TREEVIEWA, align 8
  %131 = load i32, i32* @CS_DBLCLKS, align 4
  %132 = load i32, i32* @CS_GLOBALCLASS, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @FALSE, align 4
  %135 = call i32 @check_class(i8* %130, i32 1, i32 %133, i32 0, i32 %134)
  %136 = load i8*, i8** @UPDOWN_CLASSA, align 8
  %137 = load i32, i32* @CS_HREDRAW, align 4
  %138 = load i32, i32* @CS_VREDRAW, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @CS_GLOBALCLASS, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @check_class(i8* %136, i32 1, i32 %141, i32 0, i32 %142)
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @CS_GLOBALCLASS, align 4
  %146 = load i32, i32* @FALSE, align 4
  %147 = call i32 @check_class(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %145, i32 0, i32 %146)
  ret void
}

declare dso_local i32 @check_class(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
