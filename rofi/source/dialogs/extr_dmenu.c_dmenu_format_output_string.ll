; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_format_output_string.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_format_output_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32 }

@G_REGEX_CASELESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*)* @dmenu_format_output_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dmenu_format_output_string(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = icmp eq i64* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @g_strdup(i8* %17)
  store i8* %18, i8** %3, align 8
  br label %112

19:                                               ; preds = %2
  store i8* null, i8** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @G_REGEX_CASELESS, align 4
  %25 = call i8** @g_regex_split_simple(i32 %22, i8* %23, i32 %24, i32 0)
  store i8** %25, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %38, %19
  %27 = load i8**, i8*** %7, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i8**, i8*** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %8, align 8
  br label %26

41:                                               ; preds = %35
  store i64 0, i64* %9, align 8
  br label %42

42:                                               ; preds = %98, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i1 [ false, %42 ], [ %54, %47 ]
  br i1 %56, label %57, label %101

57:                                               ; preds = %55
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @g_ascii_strtoull(i64 %63, i32* null, i32 10)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = icmp ugt i32 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 %78, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i8* @g_strdup(i8* %82)
  store i8* %83, i8** %6, align 8
  br label %96

84:                                               ; preds = %73
  %85 = load i8*, i8** %6, align 8
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %86, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @g_strjoin(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %85, i8* %91, i32* null)
  store i8* %92, i8** %11, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @g_free(i8* %93)
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %6, align 8
  br label %96

96:                                               ; preds = %84, %76
  br label %97

97:                                               ; preds = %96, %70, %57
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %9, align 8
  br label %42

101:                                              ; preds = %55
  %102 = load i8**, i8*** %7, align 8
  %103 = call i32 @g_strfreev(i8** %102)
  %104 = load i8*, i8** %6, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  br label %110

108:                                              ; preds = %101
  %109 = call i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i8* [ %107, %106 ], [ %109, %108 ]
  store i8* %111, i8** %3, align 8
  br label %112

112:                                              ; preds = %110, %16
  %113 = load i8*, i8** %3, align 8
  ret i8* %113
}

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i8** @g_regex_split_simple(i32, i8*, i32, i32) #1

declare dso_local i64 @g_ascii_strtoull(i64, i32*, i32) #1

declare dso_local i8* @g_strjoin(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
