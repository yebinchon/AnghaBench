; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_until_end.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/regtests2xml/extr_regtests2xml.c_read_until_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@file_pointer = common dso_local global i64 0, align 8
@file_size = common dso_local global i64 0, align 8
@file_buffer = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_until_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_until_end(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @file_pointer, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %36, %1
  %8 = load i64, i64* @file_pointer, align 8
  %9 = load i64, i64* @file_size, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load i32*, i32** @file_buffer, align 8
  %13 = load i64, i64* @file_pointer, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @is_eol_char(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load i8*, i8** %3, align 8
  %20 = load i32*, i32** @file_buffer, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i64, i64* @file_pointer, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = sub i64 %24, %26
  %28 = call i32 @strncpy(i8* %19, i32* %23, i64 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* @file_pointer, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %30, %32
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8 0, i8* %34, align 1
  %35 = call i32 (...) @skip_line()
  store i32 1, i32* %2, align 4
  br label %40

36:                                               ; preds = %11
  %37 = load i64, i64* @file_pointer, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* @file_pointer, align 8
  br label %7

39:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @is_eol_char(i32) #1

declare dso_local i32 @strncpy(i8*, i32*, i64) #1

declare dso_local i32 @skip_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
