; ModuleID = '/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_menu.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_prompt.c_prompt_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_item = type { i64, i64 }
%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@INPUT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"(%d of %d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@COLS = common dso_local global i64 0, align 8
@INPUT_STOP = common dso_local global i32 0, align 4
@INPUT_CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prompt_menu(i8* %0, %struct.menu_item* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.menu_item*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct.key, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.menu_item*, align 8
  %12 = alloca [5 x i8], align 1
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.menu_item* %1, %struct.menu_item** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32, i32* @INPUT_OK, align 4
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %23, %3
  %16 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %16, i64 %18
  %20 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = call i32 @curs_set(i32 1)
  br label %32

32:                                               ; preds = %140, %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @INPUT_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %141

36:                                               ; preds = %32
  %37 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %37, i64 %40
  store %struct.menu_item* %41, %struct.menu_item** %11, align 8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  store i8 32, i8* %42, align 1
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8 91, i8* %43, align 1
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %46 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 93, i8* %49, align 1
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @string_format(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %36
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %59, align 16
  br label %60

60:                                               ; preds = %58, %36
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %64 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.menu_item*, %struct.menu_item** %11, align 8
  %67 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i8* [ %71, %70 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %72 ]
  %75 = call i32 @update_status_with_context(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %62, i64 %65, i8* %74)
  %76 = load i64, i64* @COLS, align 8
  %77 = sub nsw i64 %76, 1
  %78 = call i32 @get_input(i64 %77, %struct.key* %9)
  switch i32 %78, label %103 [
    i32 130, label %79
    i32 133, label %79
    i32 10, label %79
    i32 131, label %81
    i32 128, label %81
    i32 129, label %94
    i32 134, label %94
    i32 132, label %101
  ]

79:                                               ; preds = %73, %73, %73
  %80 = load i32, i32* @INPUT_STOP, align 4
  store i32 %80, i32* %7, align 4
  br label %140

81:                                               ; preds = %73, %73
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32*, i32** %6, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %81
  br label %140

94:                                               ; preds = %73, %73
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %10, align 4
  %99 = srem i32 %97, %98
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  br label %140

101:                                              ; preds = %73
  %102 = load i32, i32* @INPUT_CANCEL, align 4
  store i32 %102, i32* %7, align 4
  br label %140

103:                                              ; preds = %73
  %104 = call signext i8 @key_to_control(%struct.key* %9)
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 67
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @INPUT_CANCEL, align 4
  store i32 %108, i32* %7, align 4
  br label %140

109:                                              ; preds = %103
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %111, i64 %113
  %115 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %110
  %119 = load %struct.menu_item*, %struct.menu_item** %5, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %119, i64 %121
  %123 = getelementptr inbounds %struct.menu_item, %struct.menu_item* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %118
  %132 = load i32, i32* %13, align 4
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @INPUT_STOP, align 4
  store i32 %134, i32* %7, align 4
  br label %139

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %110

139:                                              ; preds = %131, %110
  br label %140

140:                                              ; preds = %139, %107, %101, %94, %93, %79
  br label %32

141:                                              ; preds = %32
  %142 = call i32 @curs_set(i32 0)
  %143 = call i32 (...) @report_clear()
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @INPUT_CANCEL, align 4
  %146 = icmp ne i32 %144, %145
  %147 = zext i1 %146 to i32
  ret i32 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @string_format(i8*, i8*, i32, i32) #1

declare dso_local i32 @update_status_with_context(i8*, i8*, i8*, i64, i8*) #1

declare dso_local i32 @get_input(i64, %struct.key*) #1

declare dso_local signext i8 @key_to_control(%struct.key*) #1

declare dso_local i32 @report_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
