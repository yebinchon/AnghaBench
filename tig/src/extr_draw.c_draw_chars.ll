; ModuleID = '/home/carl/AnghaBench/tig/src/extr_draw.c_draw_chars.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_draw.c_draw_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@opt_tab_size = common dso_local global i32 0, align 4
@opt_iconv_out = common dso_local global i64 0, align 8
@ICONV_NONE = common dso_local global i64 0, align 8
@LINE_DELIMITER = common dso_local global i32 0, align 4
@opt_truncation_delimiter = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"~\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32, i8*, i32, i32, i32)* @draw_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_chars(%struct.view* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.view*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.view* %0, %struct.view** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.view*, %struct.view** %8, align 8
  %19 = getelementptr inbounds %struct.view, %struct.view* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.view*, %struct.view** %8, align 8
  %23 = getelementptr inbounds %struct.view, %struct.view* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %6
  %27 = load %struct.view*, %struct.view** %8, align 8
  %28 = getelementptr inbounds %struct.view, %struct.view* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.view*, %struct.view** %8, align 8
  %32 = getelementptr inbounds %struct.view, %struct.view* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  br label %36

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35, %26
  %37 = phi i64 [ %34, %26 ], [ 0, %35 ]
  store i64 %37, i64* %17, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load %struct.view*, %struct.view** %8, align 8
  %42 = call i64 @VIEW_MAX_LEN(%struct.view* %41)
  %43 = icmp sle i64 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %115

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = load i64, i64* %17, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @opt_tab_size, align 4
  %51 = call i32 @utf8_length(i8** %10, i32 %46, i64 %47, i32* %15, i32 %48, i32* %16, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* @opt_iconv_out, align 8
  %53 = load i64, i64* @ICONV_NONE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i64, i64* @opt_iconv_out, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i8* @encoding_iconv(i64 %56, i8* %57, i32 %58)
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = load %struct.view*, %struct.view** %8, align 8
  %64 = call i64 @VIEW_MAX_LEN(%struct.view* %63)
  %65 = icmp sle i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %7, align 4
  br label %115

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %45
  %69 = load %struct.view*, %struct.view** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @set_view_attr(%struct.view* %69, i32 %70)
  %72 = load i32, i32* %14, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.view*, %struct.view** %8, align 8
  %76 = getelementptr inbounds %struct.view, %struct.view* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @waddnstr(i32 %77, i8* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load %struct.view*, %struct.view** %8, align 8
  %89 = load i32, i32* @LINE_DELIMITER, align 4
  %90 = call i32 @set_view_attr(%struct.view* %88, i32 %89)
  %91 = load %struct.view*, %struct.view** %8, align 8
  %92 = getelementptr inbounds %struct.view, %struct.view* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** @opt_truncation_delimiter, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i8*, i8** @opt_truncation_delimiter, align 8
  br label %99

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i8* [ %97, %96 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %98 ]
  %101 = call i32 @waddstr(i32 %93, i8* %100)
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %104

104:                                              ; preds = %99, %84, %81
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.view*, %struct.view** %8, align 8
  %108 = getelementptr inbounds %struct.view, %struct.view* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load %struct.view*, %struct.view** %8, align 8
  %112 = call i64 @VIEW_MAX_LEN(%struct.view* %111)
  %113 = icmp sle i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %104, %62, %40
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i64 @VIEW_MAX_LEN(%struct.view*) #1

declare dso_local i32 @utf8_length(i8**, i32, i64, i32*, i32, i32*, i32, i32) #1

declare dso_local i8* @encoding_iconv(i64, i8*, i32) #1

declare dso_local i32 @set_view_attr(%struct.view*, i32) #1

declare dso_local i32 @waddnstr(i32, i8*, i32) #1

declare dso_local i32 @waddstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
