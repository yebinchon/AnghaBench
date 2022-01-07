; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/dllexport/extr_dllexport_test.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/dllexport/extr_dllexport_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"defaultstring\00", align 1
@DataItem1 = common dso_local global i32 0, align 4
@DataItem2 = common dso_local global i32 0, align 4
@DataItem3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sgt i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = call i32 (...) @CdeclFunc0()
  %15 = call i32 @ok_int(i32 %14, i32 0)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @CdeclFunc1(i8* %16)
  %18 = call i32 @ok_int(i32 %17, i32 1)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @CdeclFunc2(i8* %19)
  %21 = call i32 @ok_int(i32 %20, i32 1)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @CdeclFunc3(i8* %22)
  %24 = call i32 @ok_int(i32 %23, i32 65537)
  %25 = call i32 (...) @StdcallFunc0()
  %26 = call i32 @ok_int(i32 %25, i32 16)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @StdcallFunc1(i8* %27)
  %29 = call i32 @ok_int(i32 %28, i32 17)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @StdcallFunc2(i8* %30)
  %32 = call i32 @ok_int(i32 %31, i32 17)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @StdcallFunc3(i8* %33)
  %35 = call i32 @ok_int(i32 %34, i32 65553)
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @StdcallFunc5(i8* %36)
  %38 = call i32 @ok_int(i32 %37, i32 65569)
  %39 = call i32 (...) @FastcallFunc0()
  %40 = call i32 @ok_int(i32 %39, i32 48)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @FastcallFunc1(i8* %41)
  %43 = call i32 @ok_int(i32 %42, i32 49)
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @FastcallFunc2(i8* %44)
  %46 = call i32 @ok_int(i32 %45, i32 49)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @FastcallFunc3(i8* %47)
  %49 = call i32 @ok_int(i32 %48, i32 65585)
  %50 = load i32, i32* @DataItem1, align 4
  %51 = call i32 @ok_int(i32 %50, i32 81)
  %52 = load i32, i32* @DataItem2, align 4
  %53 = call i32 @ok_int(i32 %52, i32 81)
  %54 = load i32, i32* @DataItem3, align 4
  %55 = call i32 @ok_int(i32 %54, i32 65617)
  %56 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @ok_int(i32, i32) #1

declare dso_local i32 @CdeclFunc0(...) #1

declare dso_local i32 @CdeclFunc1(i8*) #1

declare dso_local i32 @CdeclFunc2(i8*) #1

declare dso_local i32 @CdeclFunc3(i8*) #1

declare dso_local i32 @StdcallFunc0(...) #1

declare dso_local i32 @StdcallFunc1(i8*) #1

declare dso_local i32 @StdcallFunc2(i8*) #1

declare dso_local i32 @StdcallFunc3(i8*) #1

declare dso_local i32 @StdcallFunc5(i8*) #1

declare dso_local i32 @FastcallFunc0(...) #1

declare dso_local i32 @FastcallFunc1(i8*) #1

declare dso_local i32 @FastcallFunc2(i8*) #1

declare dso_local i32 @FastcallFunc3(i8*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
