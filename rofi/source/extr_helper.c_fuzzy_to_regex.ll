; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_fuzzy_to_regex.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_fuzzy_to_regex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".*(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @fuzzy_to_regex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fuzzy_to_regex(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call %struct.TYPE_7__* @g_string_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @g_regex_escape_string(i8* %9, i32 -1)
  store i8* %10, i8** %4, align 8
  store i32 1, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %54, %1
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %57

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @g_string_append(%struct.TYPE_7__* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %31

28:                                               ; preds = %22
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @g_string_append(%struct.TYPE_7__* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 92
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = call i32 @g_string_append_c(%struct.TYPE_7__* %37, i8 signext 92)
  %39 = load i8*, i8** %5, align 8
  %40 = call i8* @g_utf8_next_char(i8* %39)
  store i8* %40, i8** %5, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %57

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @g_utf8_get_char(i8* %49)
  %51 = call i32 @g_string_append_unichar(%struct.TYPE_7__* %48, i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %53 = call i32 @g_string_append(%struct.TYPE_7__* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %5, align 8
  %56 = call i8* @g_utf8_next_char(i8* %55)
  store i8* %56, i8** %5, align 8
  br label %12

57:                                               ; preds = %45, %20
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @g_free(i8* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = call i32 @g_string_free(%struct.TYPE_7__* %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  ret i8* %66
}

declare dso_local %struct.TYPE_7__* @g_string_new(i8*) #1

declare dso_local i8* @g_regex_escape_string(i8*, i32) #1

declare dso_local i32 @g_string_append(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @g_string_append_c(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i8* @g_utf8_next_char(i8*) #1

declare dso_local i32 @g_string_append_unichar(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @g_utf8_get_char(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
