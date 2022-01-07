; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfclean.c_encrypt_method_from_string.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/tools/extr_pdfclean.c_encrypt_method_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"rc4-40\00", align 1
@PDF_ENCRYPT_RC4_40 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"rc4-128\00", align 1
@PDF_ENCRYPT_RC4_128 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"aes-128\00", align 1
@PDF_ENCRYPT_AES_128 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"aes-256\00", align 1
@PDF_ENCRYPT_AES_256 = common dso_local global i32 0, align 4
@PDF_ENCRYPT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @encrypt_method_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_method_from_string(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @PDF_ENCRYPT_RC4_40, align 4
  store i32 %8, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @PDF_ENCRYPT_RC4_128, align 4
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @PDF_ENCRYPT_AES_128, align 4
  store i32 %20, i32* %2, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @PDF_ENCRYPT_AES_256, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PDF_ENCRYPT_UNKNOWN, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25, %19, %13, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
