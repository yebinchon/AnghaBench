; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_blame_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_blame_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.line = type { %struct.blame* }
%struct.blame = type { %struct.blame_commit* }
%struct.blame_commit = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @blame_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blame_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.blame*, align 8
  %6 = alloca %struct.blame_commit*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %7 = load %struct.line*, %struct.line** %4, align 8
  %8 = getelementptr inbounds %struct.line, %struct.line* %7, i32 0, i32 0
  %9 = load %struct.blame*, %struct.blame** %8, align 8
  store %struct.blame* %9, %struct.blame** %5, align 8
  %10 = load %struct.blame*, %struct.blame** %5, align 8
  %11 = getelementptr inbounds %struct.blame, %struct.blame* %10, i32 0, i32 0
  %12 = load %struct.blame_commit*, %struct.blame_commit** %11, align 8
  store %struct.blame_commit* %12, %struct.blame_commit** %6, align 8
  %13 = load %struct.blame_commit*, %struct.blame_commit** %6, align 8
  %14 = icmp ne %struct.blame_commit* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.blame_commit*, %struct.blame_commit** %6, align 8
  %18 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @string_rev_is_null(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.view*, %struct.view** %3, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @string_ncopy(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %39

29:                                               ; preds = %16
  %30 = load %struct.view*, %struct.view** %3, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.blame_commit*, %struct.blame_commit** %6, align 8
  %36 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @string_copy_rev(i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %29, %22
  %40 = load %struct.blame_commit*, %struct.blame_commit** %6, align 8
  %41 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.view*, %struct.view** %3, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.blame_commit*, %struct.blame_commit** %6, align 8
  %51 = getelementptr inbounds %struct.blame_commit, %struct.blame_commit* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @string_format(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load %struct.view*, %struct.view** %3, align 8
  %56 = getelementptr inbounds %struct.view, %struct.view* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = load %struct.view*, %struct.view** %3, align 8
  %61 = getelementptr inbounds %struct.view, %struct.view* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %54, %15
  ret void
}

declare dso_local i64 @string_rev_is_null(i32) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @string_format(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
