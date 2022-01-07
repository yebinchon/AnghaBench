; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_adjust_pointer.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-message.c_adjust_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64, i8*)* @adjust_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @adjust_pointer(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %41

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %5, align 8
  br label %41

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %5, align 8
  br label %41

25:                                               ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = icmp uge i8* %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %5, align 8
  br label %41

33:                                               ; preds = %25
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = getelementptr i8, i8* %34, i64 %39
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %33, %31, %23, %17, %12
  %42 = load i8*, i8** %5, align 8
  ret i8* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
