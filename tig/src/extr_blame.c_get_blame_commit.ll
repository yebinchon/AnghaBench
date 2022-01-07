; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_get_blame_commit.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_get_blame_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_commit = type { i32 }
%struct.view = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blame* }
%struct.blame = type { %struct.blame_commit* }

@SIZEOF_REV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.blame_commit* (%struct.view*, i8*)* @get_blame_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.blame_commit* @get_blame_commit(%struct.view* %0, i8* %1) #0 {
  %3 = alloca %struct.blame_commit*, align 8
  %4 = alloca %struct.view*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.blame*, align 8
  %8 = alloca %struct.blame_commit*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.view*, %struct.view** %4, align 8
  %12 = getelementptr inbounds %struct.view, %struct.view* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %9
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = getelementptr inbounds %struct.view, %struct.view* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.blame*, %struct.blame** %21, align 8
  store %struct.blame* %22, %struct.blame** %7, align 8
  %23 = load %struct.blame*, %struct.blame** %7, align 8
  %24 = getelementptr inbounds %struct.blame, %struct.blame* %23, i32 0, i32 0
  %25 = load %struct.blame_commit*, %struct.blame_commit** %24, align 8
  %26 = icmp ne %struct.blame_commit* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %44

28:                                               ; preds = %15
  %29 = load %struct.blame*, %struct.blame** %7, align 8
  %30 = getelementptr inbounds %struct.blame, %struct.blame* %29, i32 0, i32 0
  %31 = load %struct.blame_commit*, %struct.blame_commit** %30, align 8
  %32 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* @SIZEOF_REV, align 8
  %36 = sub nsw i64 %35, 1
  %37 = call i32 @strncmp(i32 %33, i8* %34, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %28
  %40 = load %struct.blame*, %struct.blame** %7, align 8
  %41 = getelementptr inbounds %struct.blame, %struct.blame* %40, i32 0, i32 0
  %42 = load %struct.blame_commit*, %struct.blame_commit** %41, align 8
  store %struct.blame_commit* %42, %struct.blame_commit** %3, align 8
  br label %60

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %6, align 8
  br label %9

47:                                               ; preds = %9
  %48 = call %struct.blame_commit* @calloc(i32 1, i32 4)
  store %struct.blame_commit* %48, %struct.blame_commit** %8, align 8
  %49 = load %struct.blame_commit*, %struct.blame_commit** %8, align 8
  %50 = icmp ne %struct.blame_commit* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.blame_commit*, %struct.blame_commit** %8, align 8
  %53 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* @SIZEOF_REV, align 8
  %57 = call i32 @string_ncopy(i32 %54, i8* %55, i64 %56)
  br label %58

58:                                               ; preds = %51, %47
  %59 = load %struct.blame_commit*, %struct.blame_commit** %8, align 8
  store %struct.blame_commit* %59, %struct.blame_commit** %3, align 8
  br label %60

60:                                               ; preds = %58, %39
  %61 = load %struct.blame_commit*, %struct.blame_commit** %3, align 8
  ret %struct.blame_commit* %61
}

declare dso_local i32 @strncmp(i32, i8*, i64) #1

declare dso_local %struct.blame_commit* @calloc(i32, i32) #1

declare dso_local i32 @string_ncopy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
