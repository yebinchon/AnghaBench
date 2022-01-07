; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_get_file_format.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_opj_jp3d_decompress.c_get_file_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_file_format.extension = internal global [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [4 x i8] c"pgx\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"j3d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"jp3d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"j2k\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@get_file_format.format = internal constant [6 x i32] [i32 128, i32 132, i32 129, i32 129, i32 130, i32 131], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_file_format(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @strrchr(i8* %6, i8 signext 46)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %5, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %31, %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 6
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [6 x i8*], [6 x i8*]* @get_file_format.extension, i64 0, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strnicmp(i8* %18, i8* %22, i32 3)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* @get_file_format.format, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %13

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %1
  store i32 -1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strnicmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
