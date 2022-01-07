; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_force_utf8.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_force_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rofi_force_utf8(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %67

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @g_utf8_validate(i8* %12, i32 %13, i8** %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i8* @g_memdup(i8* %17, i32 %19)
  store i8* %20, i8** %3, align 8
  br label %67

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 16
  %24 = call i32* @g_string_sized_new(i32 %23)
  store i32* %24, i32** %7, align 8
  br label %25

25:                                               ; preds = %49, %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32 @g_string_append_len(i32* %26, i8* %27, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @g_string_append(i32* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = add nsw i64 %41, 1
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %25
  %50 = load i8*, i8** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i64 @g_utf8_validate(i8* %50, i32 %51, i8** %6)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %25, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @g_string_append_len(i32* %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @FALSE, align 4
  %66 = call i8* @g_string_free(i32* %64, i32 %65)
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %16, %10
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i64 @g_utf8_validate(i8*, i32, i8**) #1

declare dso_local i8* @g_memdup(i8*, i32) #1

declare dso_local i32* @g_string_sized_new(i32) #1

declare dso_local i32 @g_string_append_len(i32*, i8*, i32) #1

declare dso_local i32 @g_string_append(i32*, i8*) #1

declare dso_local i8* @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
