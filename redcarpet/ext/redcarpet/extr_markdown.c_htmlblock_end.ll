; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_htmlblock_end.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_htmlblock_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_markdown = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.sd_markdown*, i8*, i64, i32)* @htmlblock_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @htmlblock_end(i8* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %12, align 8
  store i64 1, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %105, %76, %5
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %106

22:                                               ; preds = %18
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %13, align 8
  br label %25

25:                                               ; preds = %59, %22
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = load i64, i64* %13, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 60
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br label %44

44:                                               ; preds = %37, %29
  %45 = phi i1 [ false, %29 ], [ %43, %37 ]
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %44, %25
  %48 = phi i1 [ false, %25 ], [ %46, %44 ]
  br i1 %48, label %49, label %62

49:                                               ; preds = %47
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* %15, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %56, %49
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %25

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = load i32, i32* %15, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i8*, i8** %9, align 8
  %70 = load i64, i64* %13, align 8
  %71 = sub i64 %70, 2
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %18

77:                                               ; preds = %68, %65, %62
  %78 = load i64, i64* %13, align 8
  %79 = add i64 %78, 2
  %80 = load i64, i64* %12, align 8
  %81 = add i64 %79, %80
  %82 = load i64, i64* %10, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %106

85:                                               ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %13, align 8
  %95 = sub i64 %93, %94
  %96 = add i64 %95, 1
  %97 = call i64 @htmlblock_end_tag(i8* %86, i64 %87, %struct.sd_markdown* %88, i8* %92, i64 %96)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %85
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %101, %102
  %104 = sub i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %107

105:                                              ; preds = %85
  br label %18

106:                                              ; preds = %84, %18
  store i64 0, i64* %6, align 8
  br label %107

107:                                              ; preds = %106, %100
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @htmlblock_end_tag(i8*, i64, %struct.sd_markdown*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
