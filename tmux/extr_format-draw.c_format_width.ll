; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_width.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @format_width(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.utf8_data, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %97, %1
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 35
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 91
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = call i8* @format_skip(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i64 0, i64* %2, align 8
  br label %100

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %4, align 8
  br label %97

37:                                               ; preds = %21, %15
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @utf8_open(%struct.utf8_data* %7, i8 signext %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @UTF8_MORE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @UTF8_MORE, align 4
  %53 = icmp eq i32 %51, %52
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @utf8_append(%struct.utf8_data* %7, i8 signext %58)
  store i32 %59, i32* %8, align 4
  br label %44

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @UTF8_DONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %7, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %76

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = sext i32 %71 to i64
  %74 = sub i64 0, %73
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %69, %64
  br label %96

77:                                               ; preds = %37
  %78 = load i8*, i8** %4, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %80, 31
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp slt i32 %85, 127
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %6, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  br label %95

92:                                               ; preds = %82, %77
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %4, align 8
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %76
  br label %97

97:                                               ; preds = %96, %34
  br label %10

98:                                               ; preds = %10
  %99 = load i64, i64* %6, align 8
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %98, %33
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i8* @format_skip(i8*, i8*) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
