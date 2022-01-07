; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_moniker.c_reduce_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_moniker.c_reduce_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MKRREDUCE_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"reducing moniker failed with error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32**)* @reduce_moniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduce_moniker(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = call i32 @CreateBindCtx(i32 0, i32** %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %6, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @MKRREDUCE_ALL, align 4
  %25 = load i32**, i32*** %7, align 8
  %26 = call i32 @IMoniker_Reduce(i32* %22, i32* %23, i32 %24, i32* null, i32** %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @FAILED(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @IBindCtx_Release(i32* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @CreateBindCtx(i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IMoniker_Reduce(i32*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
