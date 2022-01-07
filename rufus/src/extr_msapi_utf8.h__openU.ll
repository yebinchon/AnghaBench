; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h__openU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h__openU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SH_DENYNO = common dso_local global i32 0, align 4
@_O_RDONLY = common dso_local global i32 0, align 4
@_SH_DENYWR = common dso_local global i32 0, align 4
@_O_WRONLY = common dso_local global i32 0, align 4
@_SH_DENYRD = common dso_local global i32 0, align 4
@wfilename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_openU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_openU(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %9 = load i32, i32* @_SH_DENYNO, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @wconvert(i8* %10)
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 3
  %14 = load i32, i32* @_O_RDONLY, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @_SH_DENYWR, align 4
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 3
  %21 = load i32, i32* @_O_WRONLY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @_SH_DENYRD, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %18
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* @wfilename, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @_wsopen_s(i32* %7, i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @wfree(i8* %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @wconvert(i8*) #1

declare dso_local i32 @_wsopen_s(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
