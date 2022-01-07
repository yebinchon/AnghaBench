; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_preprocess_input.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_combi.c_combi_preprocess_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @combi_preprocess_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @combi_preprocess_input(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_5__* @mode_get_private_data(i32* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load i32, i32* @FALSE, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  br label %30

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %111

36:                                               ; preds = %33
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 33
  br i1 %41, label %42, label %111

42:                                               ; preds = %36
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @strchrnul(i8* %43, i8 signext 32)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @g_utf8_pointer_to_offset(i8* %45, i8* %46)
  %48 = sub nsw i64 %47, 1
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %110

51:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %90, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %53, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @mode_get_name(i32 %66)
  store i8* %67, i8** %11, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i64 @g_utf8_strlen(i8* %68, i32 -1)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %58
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @utf8_strncmp(i8* %75, i8* %76, i64 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %73, %58
  %81 = load i32, i32* @TRUE, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %80, %73
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %52

93:                                               ; preds = %52
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99, %93
  store i8* null, i8** %3, align 8
  br label %114

106:                                              ; preds = %99
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = call i8* @g_strdup(i8* %108)
  store i8* %109, i8** %3, align 8
  br label %114

110:                                              ; preds = %42
  br label %111

111:                                              ; preds = %110, %36, %33
  %112 = load i8*, i8** %5, align 8
  %113 = call i8* @g_strdup(i8* %112)
  store i8* %113, i8** %3, align 8
  br label %114

114:                                              ; preds = %111, %106, %105
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

declare dso_local %struct.TYPE_5__* @mode_get_private_data(i32*) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i64 @g_utf8_pointer_to_offset(i8*, i8*) #1

declare dso_local i8* @mode_get_name(i32) #1

declare dso_local i64 @g_utf8_strlen(i8*, i32) #1

declare dso_local i64 @utf8_strncmp(i8*, i8*, i64) #1

declare dso_local i8* @g_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
