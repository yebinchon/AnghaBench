; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_install.c_install_info_discover.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_install.c_install_info_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i8*, i32, i32**, i32**, i64*)* @install_info_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_info_discover(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4, i32** %5, i32** %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32** %5, i32*** %14, align 8
  store i32** %6, i32*** %15, align 8
  store i64* %7, i64** %16, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @assert(i8* %19)
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @assert(i8* %21)
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @assert(i8* %23)
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @install_info_add_auto(i8* %25, i8* %26, i8* %27, i32** %17)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %8
  %32 = load i32, i32* %9, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32**, i32*** %14, align 8
  %38 = call i32 @install_info_traverse(i32 %32, i8* %33, i8* %34, i32* %35, i32 %36, i32** %37)
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %31, %8
  %40 = load i32, i32* %18, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32**, i32*** %15, align 8
  %44 = load i64*, i64** %16, align 8
  %45 = load i32, i32* %18, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @unit_file_changes_add(i32** %43, i64* %44, i32 %45, i8* %46, i32* null)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %18, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @install_info_add_auto(i8*, i8*, i8*, i32**) #1

declare dso_local i32 @install_info_traverse(i32, i8*, i8*, i32*, i32, i32**) #1

declare dso_local i32 @unit_file_changes_add(i32**, i64*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
