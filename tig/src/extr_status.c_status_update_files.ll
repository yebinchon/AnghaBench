; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_update_files.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_update_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8* }
%struct.line = type { i32, i64 }
%struct.io = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"updating file %u of %u (%d%% done)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_update_files(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.io, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  %16 = load %struct.line*, %struct.line** %5, align 8
  %17 = getelementptr inbounds %struct.line, %struct.line* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @status_update_prepare(%struct.io* %7, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

22:                                               ; preds = %2
  %23 = load %struct.line*, %struct.line** %5, align 8
  store %struct.line* %23, %struct.line** %9, align 8
  br label %24

24:                                               ; preds = %39, %22
  %25 = load %struct.view*, %struct.view** %4, align 8
  %26 = load %struct.line*, %struct.line** %9, align 8
  %27 = call i64 @view_has_line(%struct.view* %25, %struct.line* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.line*, %struct.line** %9, align 8
  %31 = getelementptr inbounds %struct.line, %struct.line* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load %struct.line*, %struct.line** %9, align 8
  %41 = getelementptr inbounds %struct.line, %struct.line* %40, i32 1
  store %struct.line* %41, %struct.line** %9, align 8
  br label %24

42:                                               ; preds = %34
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %44 = load %struct.view*, %struct.view** %4, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @string_copy(i8* %43, i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @get_cursor_pos(i32 %48, i32 %49)
  store i32 0, i32* %11, align 4
  store i32 5, i32* %12, align 4
  br label %51

51:                                               ; preds = %95, %42
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %100

60:                                               ; preds = %58
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 100
  %63 = load i32, i32* %10, align 4
  %64 = sdiv i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %60
  %69 = load %struct.view*, %struct.view** %4, align 8
  %70 = call i64 @view_is_displayed(%struct.view* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %12, align 4
  %74 = load %struct.view*, %struct.view** %4, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @string_format(i8* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79)
  %81 = load %struct.view*, %struct.view** %4, align 8
  %82 = call i32 @update_view_title(%struct.view* %81)
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @set_cursor_pos(i32 %83, i32 %84)
  %86 = call i32 (...) @doupdate()
  br label %87

87:                                               ; preds = %72, %68, %60
  %88 = load %struct.line*, %struct.line** %5, align 8
  %89 = getelementptr inbounds %struct.line, %struct.line* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.line*, %struct.line** %5, align 8
  %92 = getelementptr inbounds %struct.line, %struct.line* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @status_update_write(%struct.io* %7, i64 %90, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %87
  %96 = load %struct.line*, %struct.line** %5, align 8
  %97 = getelementptr inbounds %struct.line, %struct.line* %96, i32 1
  store %struct.line* %97, %struct.line** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %51

100:                                              ; preds = %58
  %101 = load %struct.view*, %struct.view** %4, align 8
  %102 = getelementptr inbounds %struct.view, %struct.view* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds [8 x i8], [8 x i8]* %6, i64 0, i64 0
  %105 = call i32 @string_copy(i8* %103, i8* %104)
  %106 = call i64 @io_done(%struct.io* %7)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %108, %100
  %112 = phi i1 [ false, %100 ], [ %110, %108 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @status_update_prepare(%struct.io*, i32) #1

declare dso_local i64 @view_has_line(%struct.view*, %struct.line*) #1

declare dso_local i32 @string_copy(i8*, i8*) #1

declare dso_local i32 @get_cursor_pos(i32, i32) #1

declare dso_local i64 @view_is_displayed(%struct.view*) #1

declare dso_local i32 @string_format(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @update_view_title(%struct.view*) #1

declare dso_local i32 @set_cursor_pos(i32, i32) #1

declare dso_local i32 @doupdate(...) #1

declare dso_local i32 @status_update_write(%struct.io*, i64, i32) #1

declare dso_local i64 @io_done(%struct.io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
