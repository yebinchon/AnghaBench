; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_apply_to_tree.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_apply_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8, i8*, i32*, i8*, i8*, i8*)* @apply_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_to_tree(i32* %0, i8 signext %1, i8* %2, i32* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i8, i8* %9, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %44 [
    i32 131, label %20
    i32 129, label %20
    i32 130, label %20
    i32 128, label %27
  ]

20:                                               ; preds = %7, %7, %7
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = call i32 @add_to_tree(i32* %21, i8* %22, i32* %23, i8* %24, i8* %25, i32* null)
  br label %44

27:                                               ; preds = %7
  %28 = load i32*, i32** %8, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i32* @delete_from_tree(i32* %28, i8* %29, i32* %17)
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %44

34:                                               ; preds = %27
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32* @delete_from_tree(i32* %35, i8* %36, i32* %17)
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @changeset_dirent_free(i32* %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = call i32 @add_to_tree(i32* %40, i8* null, i32* null, i8* null, i8* %41, i32* %42)
  br label %44

44:                                               ; preds = %7, %34, %33, %20
  ret void
}

declare dso_local i32 @add_to_tree(i32*, i8*, i32*, i8*, i8*, i32*) #1

declare dso_local i32* @delete_from_tree(i32*, i8*, i32*) #1

declare dso_local i32 @changeset_dirent_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
