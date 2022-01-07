; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_serialize.c_serialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_serialize.c_serialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_LINE_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Attempted to serialize overly long item '%s', refusing.\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serialize_item(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @assert(i8* %8)
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load i8*, i8** %7, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = add nsw i64 %18, %20
  %22 = add nsw i64 %21, 1
  %23 = load i64, i64* @LONG_LINE_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @log_warning(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %15
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @fputs(i8* %31, i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @fputc(i8 signext 61, i8* %34)
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @fputs(i8* %36, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @fputc(i8 signext 10, i8* %39)
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %30, %25, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @log_warning(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
