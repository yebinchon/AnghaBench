; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmusetramsize.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_mmuobject.c_mmusetramsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PpcPageTable = common dso_local global i32* null, align 8
@RamSize = common dso_local global i64 0, align 8
@FirstUsablePage = common dso_local global i64 0, align 8
@NextPage = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmusetramsize(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32*, i32** @PpcPageTable, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @PPC_PAGE_NUMBER(i64 %5)
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  store i32* %8, i32** %3, align 8
  %9 = load i64, i64* @RamSize, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* @RamSize, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* @FirstUsablePage, align 8
  %15 = load i64, i64* @FirstUsablePage, align 8
  %16 = call i32 @PPC_PAGE_NUMBER(i64 %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @NextPage, align 4
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @PPC_PAGE_NUMBER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
