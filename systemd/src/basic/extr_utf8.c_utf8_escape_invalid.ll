; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_escape_invalid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_utf8.c_utf8_escape_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UTF8_REPLACEMENT_CHARACTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8_escape_invalid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @assert(i8* %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = mul nsw i32 %10, 4
  %12 = add nsw i32 %11, 1
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %47

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @utf8_encoded_valid_unichar(i8* %23, i64 -1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @mempcpy(i8* %28, i8* %29, i32 %30)
  store i8* %31, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %3, align 8
  br label %42

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @UTF8_REPLACEMENT_CHARACTER, align 4
  %39 = call i8* @stpcpy(i8* %37, i32 %38)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %3, align 8
  br label %42

42:                                               ; preds = %36, %27
  br label %18

43:                                               ; preds = %18
  %44 = load i8*, i8** %5, align 8
  store i8 0, i8* %44, align 1
  %45 = call i32 @str_realloc(i8** %4)
  %46 = load i8*, i8** %4, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %43, %16
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @utf8_encoded_valid_unichar(i8*, i64) #1

declare dso_local i8* @mempcpy(i8*, i8*, i32) #1

declare dso_local i8* @stpcpy(i8*, i32) #1

declare dso_local i32 @str_realloc(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
