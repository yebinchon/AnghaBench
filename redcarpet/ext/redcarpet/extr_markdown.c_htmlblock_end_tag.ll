; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_htmlblock_end_tag.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_htmlblock_end_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd_markdown = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.sd_markdown*, i8*, i64)* @htmlblock_end_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @htmlblock_end_tag(i8* %0, i64 %1, %struct.sd_markdown* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sd_markdown*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.sd_markdown* %2, %struct.sd_markdown** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %8, align 8
  %15 = add i64 %14, 3
  %16 = load i64, i64* %11, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @strncasecmp(i8* %20, i8* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 2
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 62
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %18, %5
  store i64 0, i64* %6, align 8
  br label %69

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 3
  store i64 %36, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load i8*, i8** %10, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %44, %45
  %47 = call i64 @is_empty(i8* %43, i64 %46)
  store i64 %47, i64* %13, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %69

50:                                               ; preds = %40, %34
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub i64 %61, %62
  %64 = call i64 @is_empty(i8* %60, i64 %63)
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %57, %50
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %13, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %65, %49, %33
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @is_empty(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
