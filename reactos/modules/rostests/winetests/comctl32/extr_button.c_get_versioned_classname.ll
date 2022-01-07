; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_get_versioned_classname.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_button.c_get_versioned_classname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wndclass_redirect_data = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Failed to find class redirection section, error %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_versioned_classname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_versioned_classname(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.wndclass_redirect_data*, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 16)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 16, i32* %7, align 8
  %8 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @FindActCtxSectionStringW(i32 0, i32* null, i32 %8, i32* %9, %struct.TYPE_4__* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.wndclass_redirect_data*
  store %struct.wndclass_redirect_data* %16, %struct.wndclass_redirect_data** %3, align 8
  %17 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %3, align 8
  %18 = bitcast %struct.wndclass_redirect_data* %17 to i32*
  %19 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %3, align 8
  %20 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  ret i32* %23
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @FindActCtxSectionStringW(i32, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
