; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_calloc.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_calloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PREFIX_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @skynet_calloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @PREFIX_SIZE, align 8
  %8 = load i64, i64* %4, align 8
  %9 = add i64 %7, %8
  %10 = sub i64 %9, 1
  %11 = load i64, i64* %4, align 8
  %12 = udiv i64 %10, %11
  %13 = add i64 %6, %12
  %14 = load i64, i64* %4, align 8
  %15 = call i8* @je_calloc(i64 %13, i64 %14)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @malloc_oom(i64 %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @fill_prefix(i8* %22)
  ret i8* %23
}

declare dso_local i8* @je_calloc(i64, i64) #1

declare dso_local i32 @malloc_oom(i64) #1

declare dso_local i8* @fill_prefix(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
