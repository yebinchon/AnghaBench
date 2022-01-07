; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_ae.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_parse_script_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRIPTITEM_GLOBALMEMBERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"parse_script failed: %08x, expected %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @parse_script_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_script_ae(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @a2bstr(i8* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @SCRIPTITEM_GLOBALMEMBERS, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @parse_script(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @SysFreeString(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @a2bstr(i8*) #1

declare dso_local i32 @parse_script(i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
