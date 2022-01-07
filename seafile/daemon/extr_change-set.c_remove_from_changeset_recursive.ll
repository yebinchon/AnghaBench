; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_remove_from_changeset_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_change-set.c_remove_from_changeset_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*)* @remove_from_changeset_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_from_changeset_recursive(i32* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32* @delete_from_tree(i32* %14, i8* %15, i64* %10)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @changeset_dirent_free(i32* %17)
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = call i8* @g_strdup(i8* %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load i8*, i8** %12, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %11, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp sge i64 %34, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i8*, i8** %8, align 8
  call void @remove_from_changeset_recursive(i32* %39, i8* %40, i64 %41, i8* %42)
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @g_free(i8* %45)
  br label %47

47:                                               ; preds = %44, %21, %4
  ret void
}

declare dso_local i32* @delete_from_tree(i32*, i8*, i64*) #1

declare dso_local i32 @changeset_dirent_free(i32*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
