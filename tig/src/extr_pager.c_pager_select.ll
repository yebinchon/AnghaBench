; ModuleID = '/home/carl/AnghaBench/tig/src/extr_pager.c_pager_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_pager.c_pager_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.line = type { i64 }

@LINE_COMMIT = common dso_local global i64 0, align 8
@VIEW_NO_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pager_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load %struct.line*, %struct.line** %4, align 8
  %7 = call i8* @box_text(%struct.line* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.view*, %struct.view** %3, align 8
  %9 = getelementptr inbounds %struct.view, %struct.view* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i32 @string_ncopy(i32 %12, i8* %13, i32 %15)
  %17 = load %struct.line*, %struct.line** %4, align 8
  %18 = getelementptr inbounds %struct.line, %struct.line* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LINE_COMMIT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.view*, %struct.view** %3, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @string_copy_rev_from_commit_line(i32 %27, i8* %28)
  %30 = load %struct.view*, %struct.view** %3, align 8
  %31 = load i32, i32* @VIEW_NO_REF, align 4
  %32 = call i32 @view_has_flags(%struct.view* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %22
  %35 = load %struct.view*, %struct.view** %3, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.view*, %struct.view** %3, align 8
  %39 = getelementptr inbounds %struct.view, %struct.view* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @string_copy_rev(i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %34, %22
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

declare dso_local i8* @box_text(%struct.line*) #1

declare dso_local i32 @string_ncopy(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @string_copy_rev_from_commit_line(i32, i8*) #1

declare dso_local i32 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
