; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_disassembler.c_GetNextULONG.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_disassembler.c_GetNextULONG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32*)* @GetNextULONG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GetNextULONG(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = add nsw i64 %8, 0
  %10 = call i32 @GetUCHAR(i64 %9)
  %11 = and i32 %10, 255
  %12 = load i32*, i32** %6, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %11, i32* %13, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = add nsw i64 %15, 1
  %17 = call i32 @GetUCHAR(i64 %16)
  %18 = and i32 %17, 255
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = add nsw i64 %22, 2
  %24 = call i32 @GetUCHAR(i64 %23)
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = add nsw i64 %29, 3
  %31 = call i32 @GetUCHAR(i64 %30)
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = bitcast i32* %35 to i64*
  %37 = load i64, i64* %36, align 8
  ret i64 %37
}

declare dso_local i32 @GetUCHAR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
