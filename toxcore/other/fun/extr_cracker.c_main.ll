; ModuleID = '/home/carl/AnghaBench/toxcore/other/fun/extr_cracker.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/fun/extr_cracker.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [64 x i8] c"usage: ./cracker public_key(or beginning of one in hex format)\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Public key:\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\0APrivate key:\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"\0A %llu keys tried\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [32 x i64], align 16
  %10 = alloca [32 x i64], align 16
  %11 = alloca [32 x i64], align 16
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

17:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @hex_string_to_bin(i8* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 32, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %17
  %31 = getelementptr inbounds [32 x i64], [32 x i64]* %11, i64 0, i64 0
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @memcpy(i64* %31, i8* %32, i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  %37 = getelementptr inbounds [32 x i64], [32 x i64]* %10, i64 0, i64 0
  %38 = call i32 @randombytes(i64* %37, i32 32)
  br label %39

39:                                               ; preds = %30, %71
  %40 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %41 = getelementptr inbounds [32 x i64], [32 x i64]* %10, i64 0, i64 0
  %42 = call i32 @crypto_scalarmult_curve25519_base(i64* %40, i64* %41)
  %43 = getelementptr inbounds [32 x i64], [32 x i64]* %11, i64 0, i64 0
  %44 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @memcmp(i64* %43, i64* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %74

49:                                               ; preds = %39
  store i32 32, i32* %12, align 4
  br label %50

50:                                               ; preds = %68, %49
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [32 x i64], [32 x i64]* %10, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [32 x i64], [32 x i64]* %10, i64 0, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %71

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  br label %50

71:                                               ; preds = %66, %50
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %39

74:                                               ; preds = %48
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %76 = getelementptr inbounds [32 x i64], [32 x i64]* %9, i64 0, i64 0
  %77 = call i32 @print_key(i64* %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %79 = getelementptr inbounds [32 x i64], [32 x i64]* %10, i64 0, i64 0
  %80 = call i32 @print_key(i64* %79)
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %15
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @hex_string_to_bin(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @randombytes(i64*, i32) #1

declare dso_local i32 @crypto_scalarmult_curve25519_base(i64*, i64*) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @print_key(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
