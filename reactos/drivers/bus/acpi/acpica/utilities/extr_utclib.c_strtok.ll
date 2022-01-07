; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utclib.c_strtok.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/acpi/acpica/utilities/extr_utclib.c_strtok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strtok.SavedPtr = internal global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtok(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i8*, i8** @strtok.SavedPtr, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %38

14:                                               ; preds = %10
  %15 = load i8*, i8** @strtok.SavedPtr, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strpbrk(i8* %17, i8* %18)
  store i8* %19, i8** @strtok.SavedPtr, align 8
  br label %20

20:                                               ; preds = %24, %16
  %21 = load i8*, i8** @strtok.SavedPtr, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  store i8 0, i8* %25, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strpbrk(i8* %27, i8* %28)
  store i8* %29, i8** @strtok.SavedPtr, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load i8*, i8** @strtok.SavedPtr, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i8*, i8** @strtok.SavedPtr, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** @strtok.SavedPtr, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %6, align 8
  store i8* %36, i8** %3, align 8
  br label %38

37:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %38

38:                                               ; preds = %37, %33, %13
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @strpbrk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
