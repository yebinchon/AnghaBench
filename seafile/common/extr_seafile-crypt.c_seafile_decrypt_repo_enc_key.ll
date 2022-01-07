; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_decrypt_repo_enc_key.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_seafile-crypt.c_seafile_decrypt_repo_enc_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Empty random key.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to decrypt random key.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seafile_decrypt_repo_enc_key(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [32 x i8], align 16
  %15 = alloca [16 x i8], align 16
  %16 = alloca [48 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %27 = call i32 @seafile_derive_key(i8* %20, i32 %22, i32 %23, i8* %24, i8* %25, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %33 = call i32 @memcpy(i8* %31, i8* %32, i32 16)
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %36 = call i32 @memcpy(i8* %34, i8* %35, i32 16)
  store i32 0, i32* %7, align 4
  br label %86

37:                                               ; preds = %6
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %84

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %40
  %50 = call i32 @seaf_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %86

51:                                               ; preds = %43
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds [48 x i8], [48 x i8]* %16, i64 0, i64 0
  %54 = call i32 @hex_to_rawdata(i8* %52, i8* %53, i32 48)
  %55 = load i32, i32* %8, align 4
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %58 = call i8* @seafile_crypt_new(i32 %55, i8* %56, i8* %57)
  store i8* %58, i8** %19, align 8
  %59 = getelementptr inbounds [48 x i8], [48 x i8]* %16, i64 0, i64 0
  %60 = load i8*, i8** %19, align 8
  %61 = call i64 @seafile_decrypt(i8** %17, i32* %18, i8* %59, i32 48, i8* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = call i32 @seaf_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i8*, i8** %19, align 8
  %66 = call i32 @g_free(i8* %65)
  store i32 -1, i32* %7, align 4
  br label %86

67:                                               ; preds = %51
  %68 = load i8*, i8** %19, align 8
  %69 = call i32 @g_free(i8* %68)
  %70 = load i8*, i8** %17, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %75 = call i32 @seafile_derive_key(i8* %70, i32 32, i32 %71, i8* %72, i8* %73, i8* %74)
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %78 = call i32 @memcpy(i8* %76, i8* %77, i32 32)
  %79 = load i8*, i8** %13, align 8
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %81 = call i32 @memcpy(i8* %79, i8* %80, i32 16)
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 @g_free(i8* %82)
  store i32 0, i32* %7, align 4
  br label %86

84:                                               ; preds = %37
  br label %85

85:                                               ; preds = %84
  store i32 -1, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %67, %63, %49, %30
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @seafile_derive_key(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i32 @hex_to_rawdata(i8*, i8*, i32) #1

declare dso_local i8* @seafile_crypt_new(i32, i8*, i8*) #1

declare dso_local i64 @seafile_decrypt(i8**, i32*, i8*, i32, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
