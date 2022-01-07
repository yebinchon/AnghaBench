; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_format_int.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_query.c_format_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format_int.fmt_signedW = internal constant [3 x i8] c"%d\00", align 1
@format_int.fmt_unsignedW = internal constant [3 x i8] c"%u\00", align 1
@format_int.fmt_signed64W = internal constant [6 x i8] c"%I64d\00", align 1
@format_int.fmt_unsigned64W = internal constant [6 x i8] c"%I64u\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @format_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_int(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %29 [
    i32 132, label %9
    i32 135, label %9
    i32 134, label %9
    i32 128, label %14
    i32 131, label %14
    i32 130, label %14
    i32 133, label %19
    i32 129, label %24
  ]

9:                                                ; preds = %3, %3, %3
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @sprintfW(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @format_int.fmt_signedW, i64 0, i64 0), i32 %11)
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %4, align 8
  br label %32

14:                                               ; preds = %3, %3, %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @sprintfW(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @format_int.fmt_unsignedW, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  br label %32

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @wsprintfW(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @format_int.fmt_signed64W, i64 0, i64 0), i32 %21)
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %4, align 8
  br label %32

24:                                               ; preds = %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @wsprintfW(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @format_int.fmt_unsigned64W, i64 0, i64 0), i32 %26)
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** %4, align 8
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i8* null, i8** %4, align 8
  br label %32

32:                                               ; preds = %29, %24, %19, %14, %9
  %33 = load i8*, i8** %4, align 8
  ret i8* %33
}

declare dso_local i32 @sprintfW(i8*, i8*, i32) #1

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
