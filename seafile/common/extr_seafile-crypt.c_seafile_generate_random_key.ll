; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_generate_random_key.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_generate_random_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Failed to generate secret key for repo encryption.\0A\00", align 1
@GNUTLS_RND_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_generate_random_key(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [32 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 16
  %15 = alloca [16 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %17 = call i32 @RAND_bytes(i8* %16, i32 32)
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = call i32 @seaf_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %44

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %29 = call i32 @seafile_derive_key(i8* %22, i32 %24, i32 %25, i8* %26, i8* %27, i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %33 = call i8* @seafile_crypt_new(i32 %30, i8* %31, i8* %32)
  store i8* %33, i8** %10, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @seafile_encrypt(i8** %12, i32* %13, i8* %34, i32 32, i8* %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @rawdata_to_hex(i8* %37, i8* %38, i32 48)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @g_free(i8* %40)
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 @g_free(i8* %42)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %21, %19
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @RAND_bytes(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @seafile_derive_key(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @seafile_crypt_new(i32, i8*, i8*) #1

declare dso_local i32 @seafile_encrypt(i8**, i32*, i8*, i32, i8*) #1

declare dso_local i32 @rawdata_to_hex(i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
