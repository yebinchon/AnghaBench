; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/mms/extr_buffer.c_var_buffer_addUTF16.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/mms/extr_buffer.c_var_buffer_addUTF16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"UTF-16 conversion failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @var_buffer_addUTF16(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = call i32* @ToCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %13, i64* %8)
  store i32* %14, i32** %7, align 8
  br label %16

15:                                               ; preds = %3
  store i32* null, i32** %7, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @msg_Err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %8, align 8
  %24 = udiv i64 %23, 2
  store i64 %24, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %25

25:                                               ; preds = %36, %22
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @var_buffer_add16(i32* %30, i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %25

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @var_buffer_add16(i32* %42, i32 0)
  ret void
}

declare dso_local i32* @ToCharset(i8*, i8*, i64*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @var_buffer_add16(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
