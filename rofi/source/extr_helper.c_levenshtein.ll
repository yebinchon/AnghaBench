; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_levenshtein.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_levenshtein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@G_MAXLONG = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @levenshtein(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @G_MAXLONG, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @UINT_MAX, align 4
  store i32 %24, i32* %5, align 4
  br label %123

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %10, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %40, %25
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %30, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %31

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %30, i64 %46
  store i32 %44, i32* %47, align 4
  store i32 1, i32* %13, align 4
  br label %48

48:                                               ; preds = %114, %43
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %117

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %14, align 8
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %54, i32* %55, align 16
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @g_utf8_get_char(i8* %56)
  store i64 %57, i64* %15, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = load i64, i64* %15, align 8
  %62 = call i64 @g_unichar_tolower(i64 %61)
  store i64 %62, i64* %15, align 8
  br label %63

63:                                               ; preds = %60, %52
  store i32 1, i32* %16, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %108, %63
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %111

70:                                               ; preds = %66
  %71 = load i8*, i8** %14, align 8
  %72 = call i64 @g_utf8_get_char(i8* %71)
  store i64 %72, i64* %18, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %18, align 8
  %77 = call i64 @g_unichar_tolower(i64 %76)
  store i64 %77, i64* %18, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %30, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %30, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %30, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  %94 = load i32, i32* %17, align 4
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %15, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 0, i32 1
  %100 = add nsw i32 %94, %99
  %101 = call i32 @MIN3(i32 %87, i32 %93, i32 %100)
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %30, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i8*, i8** %14, align 8
  %107 = call i8* @g_utf8_next_char(i8* %106)
  store i8* %107, i8** %14, align 8
  br label %108

108:                                              ; preds = %78
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %16, align 4
  br label %66

111:                                              ; preds = %66
  %112 = load i8*, i8** %8, align 8
  %113 = call i8* @g_utf8_next_char(i8* %112)
  store i8* %113, i8** %8, align 8
  br label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %48

117:                                              ; preds = %48
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %30, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %5, align 4
  %122 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %122)
  br label %123

123:                                              ; preds = %117, %23
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @g_utf8_get_char(i8*) #2

declare dso_local i64 @g_unichar_tolower(i64) #2

declare dso_local i32 @MIN3(i32, i32, i32) #2

declare dso_local i8* @g_utf8_next_char(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
