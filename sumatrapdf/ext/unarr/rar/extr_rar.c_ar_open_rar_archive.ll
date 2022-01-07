; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.c_ar_open_rar_archive.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_rar.c_ar_open_rar_archive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Rar!\1A\07\00\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Rar!\1A\07\01\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RAR 5 format isn't supported\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RE~^\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Ancient RAR format isn't supported\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"SFX archives aren't supported\00", align 1
@rar_close = common dso_local global i32 0, align 4
@rar_parse_entry = common dso_local global i32 0, align 4
@rar_get_name = common dso_local global i32 0, align 4
@rar_uncompress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ar_open_rar_archive(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @FILE_SIGNATURE_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @SEEK_SET, align 4
  %13 = call i32 @ar_seek(i32* %11, i32 0, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = trunc i64 %8 to i32
  %19 = call i32 @ar_read(i32* %17, i8* %10, i32 %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, %8
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32* null, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %57

23:                                               ; preds = %16
  %24 = trunc i64 %8 to i32
  %25 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = trunc i64 %8 to i32
  %29 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %48

33:                                               ; preds = %27
  %34 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %47

38:                                               ; preds = %33
  %39 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call i64 @memcmp(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %38
  %45 = call i32 @warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %31
  store i32* null, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %57

49:                                               ; preds = %23
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @rar_close, align 4
  %52 = load i32, i32* @rar_parse_entry, align 4
  %53 = load i32, i32* @rar_get_name, align 4
  %54 = load i32, i32* @rar_uncompress, align 4
  %55 = load i32, i32* @FILE_SIGNATURE_SIZE, align 4
  %56 = call i32* @ar_open_archive(i32* %50, i32 4, i32 %51, i32 %52, i32 %53, i32 %54, i32* null, i32 %55)
  store i32* %56, i32** %2, align 8
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %49, %48, %22, %15
  %58 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32*, i32** %2, align 8
  ret i32* %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ar_seek(i32*, i32, i32) #2

declare dso_local i32 @ar_read(i32*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32* @ar_open_archive(i32*, i32, i32, i32, i32, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
