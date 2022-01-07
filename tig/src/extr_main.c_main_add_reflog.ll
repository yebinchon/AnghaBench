; ModuleID = '/home/carl/AnghaBench/tig/src/extr_main.c_main_add_reflog.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_main.c_main_add_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.main_state = type { i8**, i32, i32 }
%struct.view_column = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@VIEW_COLUMN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.main_state*, i8*)* @main_add_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_add_reflog(%struct.view* %0, %struct.main_state* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.main_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.view_column*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.main_state* %1, %struct.main_state** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 32)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  store i8 0, i8* %17, align 1
  %18 = load %struct.main_state*, %struct.main_state** %6, align 8
  %19 = getelementptr inbounds %struct.main_state, %struct.main_state* %18, i32 0, i32 0
  %20 = load %struct.main_state*, %struct.main_state** %6, align 8
  %21 = getelementptr inbounds %struct.main_state, %struct.main_state* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @realloc_reflogs(i8*** %19, i32 %22, i32 1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %16
  store i32 0, i32* %4, align 4
  br label %69

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.main_state*, %struct.main_state** %6, align 8
  %33 = getelementptr inbounds %struct.main_state, %struct.main_state* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.main_state*, %struct.main_state** %6, align 8
  %36 = getelementptr inbounds %struct.main_state, %struct.main_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  store i8* %31, i8** %40, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.main_state*, %struct.main_state** %6, align 8
  %44 = getelementptr inbounds %struct.main_state, %struct.main_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %30
  %49 = load %struct.view*, %struct.view** %5, align 8
  %50 = load i32, i32* @VIEW_COLUMN_ID, align 4
  %51 = call %struct.view_column* @get_view_column(%struct.view* %49, i32 %50)
  store %struct.view_column* %51, %struct.view_column** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.main_state*, %struct.main_state** %6, align 8
  %54 = getelementptr inbounds %struct.main_state, %struct.main_state* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.view_column*, %struct.view_column** %10, align 8
  %56 = icmp ne %struct.view_column* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.view_column*, %struct.view_column** %10, align 8
  %59 = getelementptr inbounds %struct.view_column, %struct.view_column* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load %struct.view*, %struct.view** %5, align 8
  %66 = getelementptr inbounds %struct.view, %struct.view* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %57, %48
  br label %68

68:                                               ; preds = %67, %30
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %29, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @realloc_reflogs(i8***, i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
