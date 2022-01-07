; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_gui.c_guiError.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_gui.c_guiError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dialog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@MB_ICONERROR = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @guiError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guiError(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i8* @vstrmake(i32* null, i32 %4)
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* @dialog, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @MB_ICONERROR, align 4
  %9 = load i32, i32* @MB_OK, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @MessageBox(i32 %6, i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @free(i8* %12)
  ret i32 0
}

declare dso_local i8* @vstrmake(i32*, i32) #1

declare dso_local i32 @MessageBox(i32, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
