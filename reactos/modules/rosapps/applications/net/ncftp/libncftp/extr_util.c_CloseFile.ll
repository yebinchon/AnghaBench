; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_CloseFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_util.c_CloseFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@stdin = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CloseFile(i32** %0) #0 {
  %2 = alloca i32**, align 8
  store i32** %0, i32*** %2, align 8
  %3 = load i32**, i32*** %2, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load i32**, i32*** %2, align 8
  %8 = load i32*, i32** %7, align 8
  %9 = load i32*, i32** @stdout, align 8
  %10 = icmp ne i32* %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = load i32**, i32*** %2, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = load i32*, i32** @stdin, align 8
  %15 = icmp ne i32* %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load i32**, i32*** %2, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32*, i32** @stderr, align 8
  %20 = icmp ne i32* %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32**, i32*** %2, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @fclose(i32* %23)
  br label %25

25:                                               ; preds = %21, %16, %11, %6
  %26 = load i32**, i32*** %2, align 8
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
