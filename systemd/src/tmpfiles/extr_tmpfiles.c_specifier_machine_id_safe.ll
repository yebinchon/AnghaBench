; ModuleID = '/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_specifier_machine_id_safe.c'
source_filename = "/home/carl/AnghaBench/systemd/src/tmpfiles/extr_tmpfiles.c_specifier_machine_id_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOENT = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i8*, i8**)* @specifier_machine_id_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @specifier_machine_id_safe(i8 signext %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8 %0, i8* %6, align 1
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8, i8* %6, align 1
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i8**, i8*** %9, align 8
  %15 = call i32 @specifier_machine_id(i8 signext %11, i8* %12, i8* %13, i8** %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @ENOENT, align 4
  %18 = sub nsw i32 0, %17
  %19 = load i32, i32* @ENOMEDIUM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i64 @IN_SET(i32 %16, i32 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @specifier_machine_id(i8 signext, i8*, i8*, i8**) #1

declare dso_local i64 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
