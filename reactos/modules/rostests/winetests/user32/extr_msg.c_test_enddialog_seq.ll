; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_enddialog_seq.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_enddialog_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32, i32, i32, i32 }

@WM_ENABLE = common dso_local global i32 0, align 4
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
@WM_QUERYNEWPALETTE = common dso_local global i32 0, align 4
@WA_ACTIVE = common dso_local global i32 0, align 4
@WM_GETTEXT = common dso_local global i32 0, align 4
@defwinproc = common dso_local global i32 0, align 4
@HCBT_SETFOCUS = common dso_local global i32 0, align 4
@WM_KILLFOCUS = common dso_local global i32 0, align 4
@WM_SETFOCUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"EndDialog\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @test_enddialog_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_enddialog_seq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [14 x %struct.message], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds [14 x %struct.message], [14 x %struct.message]* %5, i64 0, i64 0
  %7 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 0
  %8 = load i32, i32* @WM_ENABLE, align 4
  store i32 %8, i32* %7, align 16
  %9 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 1
  %10 = load i32, i32* @sent, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 2
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.message, %struct.message* %6, i64 1
  %14 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 0
  %15 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  store i32 %15, i32* %14, align 16
  %16 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 1
  %17 = load i32, i32* @sent, align 4
  %18 = load i32, i32* @wparam, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 2
  %21 = load i32, i32* @SWP_HIDEWINDOW, align 4
  %22 = load i32, i32* @SWP_NOACTIVATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SWP_NOSIZE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SWP_NOMOVE, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %20, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.message, %struct.message* %13, i64 1
  %30 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 0
  %31 = load i32, i32* @HCBT_ACTIVATE, align 4
  store i32 %31, i32* %30, align 16
  %32 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 1
  %33 = load i32, i32* @hook, align 4
  %34 = load i32, i32* @wparam, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %32, align 4
  %36 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 2
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 3
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.message, %struct.message* %29, i64 1
  %40 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 0
  %41 = load i32, i32* @WM_NCACTIVATE, align 4
  store i32 %41, i32* %40, align 16
  %42 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 1
  %43 = load i32, i32* @sent, align 4
  %44 = load i32, i32* @wparam, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @lparam, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %42, align 4
  %48 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 2
  %49 = load i32, i32* @WA_INACTIVE, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.message, %struct.message* %39, i32 0, i32 3
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.message, %struct.message* %39, i64 1
  %53 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 0
  %54 = load i32, i32* @WM_ACTIVATE, align 4
  store i32 %54, i32* %53, align 16
  %55 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 1
  %56 = load i32, i32* @sent, align 4
  %57 = load i32, i32* @wparam, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @lparam, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %55, align 4
  %61 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 2
  %62 = load i32, i32* @WA_INACTIVE, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.message, %struct.message* %52, i32 0, i32 3
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds %struct.message, %struct.message* %52, i64 1
  %66 = getelementptr inbounds %struct.message, %struct.message* %65, i32 0, i32 0
  %67 = load i32, i32* @WM_WINDOWPOSCHANGING, align 4
  store i32 %67, i32* %66, align 16
  %68 = getelementptr inbounds %struct.message, %struct.message* %65, i32 0, i32 1
  %69 = load i32, i32* @sent, align 4
  %70 = load i32, i32* @wparam, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @optional, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %68, align 4
  %74 = getelementptr inbounds %struct.message, %struct.message* %65, i32 0, i32 2
  %75 = load i32, i32* @SWP_NOSIZE, align 4
  %76 = load i32, i32* @SWP_NOMOVE, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %74, align 8
  %78 = getelementptr inbounds %struct.message, %struct.message* %65, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds %struct.message, %struct.message* %65, i64 1
  %80 = getelementptr inbounds %struct.message, %struct.message* %79, i32 0, i32 0
  %81 = load i32, i32* @WM_QUERYNEWPALETTE, align 4
  store i32 %81, i32* %80, align 16
  %82 = getelementptr inbounds %struct.message, %struct.message* %79, i32 0, i32 1
  %83 = load i32, i32* @sent, align 4
  %84 = load i32, i32* @optional, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %82, align 4
  %86 = getelementptr inbounds %struct.message, %struct.message* %79, i32 0, i32 2
  store i32 0, i32* %86, align 8
  %87 = getelementptr inbounds %struct.message, %struct.message* %79, i32 0, i32 3
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.message, %struct.message* %79, i64 1
  %89 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 0
  %90 = load i32, i32* @WM_NCACTIVATE, align 4
  store i32 %90, i32* %89, align 16
  %91 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 1
  %92 = load i32, i32* @sent, align 4
  %93 = load i32, i32* @wparam, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @lparam, align 4
  %96 = or i32 %94, %95
  store i32 %96, i32* %91, align 4
  %97 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 2
  %98 = load i32, i32* @WA_ACTIVE, align 4
  store i32 %98, i32* %97, align 8
  %99 = getelementptr inbounds %struct.message, %struct.message* %88, i32 0, i32 3
  %100 = load i32, i32* %3, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds %struct.message, %struct.message* %88, i64 1
  %102 = getelementptr inbounds %struct.message, %struct.message* %101, i32 0, i32 0
  %103 = load i32, i32* @WM_GETTEXT, align 4
  store i32 %103, i32* %102, align 16
  %104 = getelementptr inbounds %struct.message, %struct.message* %101, i32 0, i32 1
  %105 = load i32, i32* @sent, align 4
  %106 = load i32, i32* @optional, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @defwinproc, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %104, align 4
  %110 = getelementptr inbounds %struct.message, %struct.message* %101, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = getelementptr inbounds %struct.message, %struct.message* %101, i32 0, i32 3
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.message, %struct.message* %101, i64 1
  %113 = getelementptr inbounds %struct.message, %struct.message* %112, i32 0, i32 0
  %114 = load i32, i32* @WM_ACTIVATE, align 4
  store i32 %114, i32* %113, align 16
  %115 = getelementptr inbounds %struct.message, %struct.message* %112, i32 0, i32 1
  %116 = load i32, i32* @sent, align 4
  %117 = load i32, i32* @wparam, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @lparam, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %115, align 4
  %121 = getelementptr inbounds %struct.message, %struct.message* %112, i32 0, i32 2
  %122 = load i32, i32* @WA_ACTIVE, align 4
  store i32 %122, i32* %121, align 8
  %123 = getelementptr inbounds %struct.message, %struct.message* %112, i32 0, i32 3
  %124 = load i32, i32* %3, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds %struct.message, %struct.message* %112, i64 1
  %126 = getelementptr inbounds %struct.message, %struct.message* %125, i32 0, i32 0
  %127 = load i32, i32* @HCBT_SETFOCUS, align 4
  store i32 %127, i32* %126, align 16
  %128 = getelementptr inbounds %struct.message, %struct.message* %125, i32 0, i32 1
  %129 = load i32, i32* @hook, align 4
  %130 = load i32, i32* @wparam, align 4
  %131 = or i32 %129, %130
  store i32 %131, i32* %128, align 4
  %132 = getelementptr inbounds %struct.message, %struct.message* %125, i32 0, i32 2
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %132, align 8
  %134 = getelementptr inbounds %struct.message, %struct.message* %125, i32 0, i32 3
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.message, %struct.message* %125, i64 1
  %136 = getelementptr inbounds %struct.message, %struct.message* %135, i32 0, i32 0
  %137 = load i32, i32* @WM_KILLFOCUS, align 4
  store i32 %137, i32* %136, align 16
  %138 = getelementptr inbounds %struct.message, %struct.message* %135, i32 0, i32 1
  %139 = load i32, i32* @sent, align 4
  %140 = load i32, i32* @wparam, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %138, align 4
  %142 = getelementptr inbounds %struct.message, %struct.message* %135, i32 0, i32 2
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %142, align 8
  %144 = getelementptr inbounds %struct.message, %struct.message* %135, i32 0, i32 3
  store i32 0, i32* %144, align 4
  %145 = getelementptr inbounds %struct.message, %struct.message* %135, i64 1
  %146 = getelementptr inbounds %struct.message, %struct.message* %145, i32 0, i32 0
  %147 = load i32, i32* @WM_SETFOCUS, align 4
  store i32 %147, i32* %146, align 16
  %148 = getelementptr inbounds %struct.message, %struct.message* %145, i32 0, i32 1
  %149 = load i32, i32* @sent, align 4
  %150 = load i32, i32* @defwinproc, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @wparam, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %148, align 4
  %154 = getelementptr inbounds %struct.message, %struct.message* %145, i32 0, i32 2
  %155 = load i32, i32* %3, align 4
  store i32 %155, i32* %154, align 8
  %156 = getelementptr inbounds %struct.message, %struct.message* %145, i32 0, i32 3
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.message, %struct.message* %145, i64 1
  %158 = getelementptr inbounds %struct.message, %struct.message* %157, i32 0, i32 0
  store i32 0, i32* %158, align 16
  %159 = getelementptr inbounds %struct.message, %struct.message* %157, i32 0, i32 1
  store i32 0, i32* %159, align 4
  %160 = getelementptr inbounds %struct.message, %struct.message* %157, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = getelementptr inbounds %struct.message, %struct.message* %157, i32 0, i32 3
  store i32 0, i32* %161, align 4
  %162 = call i32 (...) @flush_sequence()
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @EndDialog(i32 %163, i32 0)
  %165 = getelementptr inbounds [14 x %struct.message], [14 x %struct.message]* %5, i64 0, i64 0
  %166 = load i32, i32* @FALSE, align 4
  %167 = call i32 @ok_sequence(%struct.message* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %166)
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
