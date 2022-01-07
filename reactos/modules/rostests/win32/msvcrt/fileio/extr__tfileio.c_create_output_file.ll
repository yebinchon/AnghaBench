; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_create_output_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/msvcrt/fileio/extr__tfileio.c_create_output_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@_TEOF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERROR: failed to write data to file \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ERROR: ferror returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"ERROR: failed to open/create file \22%s\22 for output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @create_output_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_output_file(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32* @_tfopen(i32* %10, i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @_fputts(i32* %16, i32* %17)
  %19 = load i64, i64* @_TEOF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %7, align 4
  br label %31

23:                                               ; preds = %15
  %24 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @_tprintf(i32 %24, i32* %25)
  %27 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @ferror(i32* %28)
  %30 = call i32 @_tprintf(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %42

34:                                               ; preds = %3
  %35 = call i32 @_T(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @_tprintf(i32 %35, i32* %36)
  %38 = call i32 @_T(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %8, align 8
  %40 = call i32* @ferror(i32* %39)
  %41 = call i32 @_tprintf(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32* @_tfopen(i32*, i32*) #1

declare dso_local i64 @_fputts(i32*, i32*) #1

declare dso_local i32 @_tprintf(i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
