; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_enddialog_seq2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_enddialog_seq2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i32, i32, i32 }

@WM_ENABLE = common dso_local global i32 0, align 4
@parent = common dso_local global i32 0, align 4
@sent = common dso_local global i32 0, align 4
@WM_WINDOWPOSCHANGING = common dso_local global i32 0, align 4
@wparam = common dso_local global i32 0, align 4
@SWP_HIDEWINDOW = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOMOVE = common dso_local global i32 0, align 4
@HCBT_ACTIVATE = common dso_local global i32 0, align 4
@hook = common dso_local global i32 0, align 4
@WM_NCACTIVATE = common dso_local global i32 0, align 4
@lparam = common dso_local global i32 0, align 4
@WA_INACTIVE = common dso_local global i32 0, align 4
@WM_ACTIVATE = common dso_local global i32 0, align 4
@optional = common dso_local global i32 0, align 4
@HCBT_SETFOCUS = common dso_local global i32 0, align 4
@WM_KILLFOCUS = common dso_local global i32 0, align 4
@WM_SETFOCUS = common dso_local global i32 0, align 4
@defwinproc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"EndDialog2\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_enddialog_seq2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enddialog_seq2(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [11 x %struct.message], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [11 x %struct.message], [11 x %struct.message]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 0
  %8 = load i32, i32* @WM_ENABLE, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 1
  %10 = load i32, i32* @parent, align 4
  %11 = load i32, i32* @sent, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.message, %struct.message* %6, i64 1
  %16 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 0
  %17 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  store i32 %17, i32* %16, align 16
  %18 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 1
  %19 = load i32, i32* @sent, align 4
  %20 = load i32, i32* @wparam, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 2
  %23 = load i32, i32* @SWP_HIDEWINDOW, align 4
  %24 = load i32, i32* @SWP_NOACTIVATE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SWP_NOSIZE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @SWP_NOMOVE, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %22, align 8
  %30 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.message, %struct.message* %15, i64 1
  %32 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 0
  %33 = load i32, i32* @HCBT_ACTIVATE, align 4
  store i32 %33, i32* %32, align 16
  %34 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 1
  %35 = load i32, i32* @hook, align 4
  %36 = load i32, i32* @wparam, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %34, align 4
  %38 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 2
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %38, align 8
  %40 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.message, %struct.message* %31, i64 1
  %42 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 0
  %43 = load i32, i32* @WM_NCACTIVATE, align 4
  store i32 %43, i32* %42, align 16
  %44 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 1
  %45 = load i32, i32* @sent, align 4
  %46 = load i32, i32* @wparam, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @lparam, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %44, align 4
  %50 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 2
  %51 = load i32, i32* @WA_INACTIVE, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 3
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.message, %struct.message* %41, i64 1
  %55 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 0
  %56 = load i32, i32* @WM_ACTIVATE, align 4
  store i32 %56, i32* %55, align 16
  %57 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 1
  %58 = load i32, i32* @sent, align 4
  %59 = load i32, i32* @wparam, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @lparam, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %57, align 4
  %63 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 2
  %64 = load i32, i32* @WA_INACTIVE, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 3
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.message, %struct.message* %54, i64 1
  %68 = getelementptr inbounds %struct.message, %struct.message* %67, i32 0, i32 0
  %69 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  store i32 %69, i32* %68, align 16
  %70 = getelementptr inbounds %struct.message, %struct.message* %67, i32 0, i32 1
  %71 = load i32, i32* @sent, align 4
  %72 = load i32, i32* @optional, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @wparam, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %70, align 4
  %76 = getelementptr inbounds %struct.message, %struct.message* %67, i32 0, i32 2
  %77 = load i32, i32* @SWP_NOACTIVATE, align 4
  %78 = load i32, i32* @SWP_NOSIZE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SWP_NOMOVE, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %76, align 8
  %82 = getelementptr inbounds %struct.message, %struct.message* %67, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.message, %struct.message* %67, i64 1
  %84 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 0
  %85 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  store i32 %85, i32* %84, align 16
  %86 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 1
  %87 = load i32, i32* @sent, align 4
  %88 = load i32, i32* @optional, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @wparam, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %86, align 4
  %92 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 2
  %93 = load i32, i32* @SWP_NOACTIVATE, align 4
  %94 = load i32, i32* @SWP_NOSIZE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SWP_NOMOVE, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %92, align 8
  %98 = getelementptr inbounds %struct.message, %struct.message* %83, i32 0, i32 3
  store i32 0, i32* %98, align 4
  %99 = getelementptr inbounds %struct.message, %struct.message* %83, i64 1
  %100 = getelementptr inbounds %struct.message, %struct.message* %99, i32 0, i32 0
  %101 = load i32, i32* @HCBT_SETFOCUS, align 4
  store i32 %101, i32* %100, align 16
  %102 = getelementptr inbounds %struct.message, %struct.message* %99, i32 0, i32 1
  %103 = load i32, i32* @hook, align 4
  %104 = load i32, i32* @wparam, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %102, align 4
  %106 = getelementptr inbounds %struct.message, %struct.message* %99, i32 0, i32 2
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %106, align 8
  %108 = getelementptr inbounds %struct.message, %struct.message* %99, i32 0, i32 3
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds %struct.message, %struct.message* %99, i64 1
  %110 = getelementptr inbounds %struct.message, %struct.message* %109, i32 0, i32 0
  %111 = load i32, i32* @WM_KILLFOCUS, align 4
  store i32 %111, i32* %110, align 16
  %112 = getelementptr inbounds %struct.message, %struct.message* %109, i32 0, i32 1
  %113 = load i32, i32* @sent, align 4
  %114 = load i32, i32* @wparam, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %112, align 4
  %116 = getelementptr inbounds %struct.message, %struct.message* %109, i32 0, i32 2
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %116, align 8
  %118 = getelementptr inbounds %struct.message, %struct.message* %109, i32 0, i32 3
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds %struct.message, %struct.message* %109, i64 1
  %120 = getelementptr inbounds %struct.message, %struct.message* %119, i32 0, i32 0
  %121 = load i32, i32* @WM_SETFOCUS, align 4
  store i32 %121, i32* %120, align 16
  %122 = getelementptr inbounds %struct.message, %struct.message* %119, i32 0, i32 1
  %123 = load i32, i32* @sent, align 4
  %124 = load i32, i32* @parent, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @defwinproc, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @wparam, align 4
  %129 = or i32 %127, %128
  store i32 %129, i32* %122, align 4
  %130 = getelementptr inbounds %struct.message, %struct.message* %119, i32 0, i32 2
  %131 = load i32, i32* %3, align 4
  store i32 %131, i32* %130, align 8
  %132 = getelementptr inbounds %struct.message, %struct.message* %119, i32 0, i32 3
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.message, %struct.message* %119, i64 1
  %134 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 0
  store i32 0, i32* %134, align 16
  %135 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 1
  store i32 0, i32* %135, align 4
  %136 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 2
  store i32 0, i32* %136, align 8
  %137 = getelementptr inbounds %struct.message, %struct.message* %133, i32 0, i32 3
  store i32 0, i32* %137, align 4
  %138 = call i32 (...) @flush_sequence()
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @EndDialog(i32 %139, i32 0)
  %141 = getelementptr inbounds [11 x %struct.message], [11 x %struct.message]* %5, i64 0, i64 0
  %142 = load i32, i32* @FALSE, align 4
  %143 = call i32 @ok_sequence(%struct.message* %141, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %142)
  ret void
}

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @EndDialog(i32, i32) #1

declare dso_local i32 @ok_sequence(%struct.message*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
