; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrstr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_xmlstring.c_xmlStrstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @xmlStrstr(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = icmp eq i64* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64* null, i64** %3, align 8
  br label %45

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i64* null, i64** %3, align 8
  br label %45

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = call i32 @xmlStrlen(i64* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i64*, i64** %4, align 8
  store i64* %20, i64** %3, align 8
  br label %45

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i64*, i64** %4, align 8
  %34 = load i64*, i64** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @xmlStrncmp(i64* %33, i64* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i64*, i64** %4, align 8
  store i64* %39, i64** %3, align 8
  br label %45

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %4, align 8
  br label %22

44:                                               ; preds = %22
  store i64* null, i64** %3, align 8
  br label %45

45:                                               ; preds = %44, %38, %19, %13, %9
  %46 = load i64*, i64** %3, align 8
  ret i64* %46
}

declare dso_local i32 @xmlStrlen(i64*) #1

declare dso_local i32 @xmlStrncmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
