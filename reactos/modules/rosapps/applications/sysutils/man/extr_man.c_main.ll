; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OpenFlag = common dso_local global i64 0, align 8
@NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 1, label %7
    i32 2, label %9
  ]

7:                                                ; preds = %2
  %8 = call i32 (...) @Usage()
  br label %16

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @AnalyzeArgv(i8* %12)
  br label %16

14:                                               ; preds = %2
  %15 = call i32 (...) @Usage()
  br label %16

16:                                               ; preds = %14, %9, %7
  %17 = load i64, i64* @OpenFlag, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @CloseF()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @NORMAL, align 4
  %23 = call i32 @SetCl(i32 %22)
  ret i32 0
}

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @AnalyzeArgv(i8*) #1

declare dso_local i32 @CloseF(...) #1

declare dso_local i32 @SetCl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
