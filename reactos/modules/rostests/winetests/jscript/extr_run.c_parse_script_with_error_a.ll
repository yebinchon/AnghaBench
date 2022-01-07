; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_with_error_a.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_with_error_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i8*, i8*, i8*)* @parse_script_with_error_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_script_with_error_a(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @a2bstr(i8* %19)
  store i32 %20, i32* %15, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @a2bstr(i8* %21)
  store i32 %22, i32* %16, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @a2bstr(i8* %23)
  store i32 %24, i32* %17, align 4
  %25 = load i8*, i8** %14, align 8
  %26 = call i32 @a2bstr(i8* %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %18, align 4
  %35 = call i32 @parse_script_with_error(i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %18, align 4
  %37 = call i32 @SysFreeString(i32 %36)
  %38 = load i32, i32* %17, align 4
  %39 = call i32 @SysFreeString(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @SysFreeString(i32 %40)
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @SysFreeString(i32 %42)
  ret void
}

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i32 @parse_script_with_error(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
