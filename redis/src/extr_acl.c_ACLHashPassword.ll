; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_ACLHashPassword.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_ACLHashPassword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_BLOCK_SIZE = common dso_local global i32 0, align 4
@HASH_PASSWORD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ACLHashPassword(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @HASH_PASSWORD_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %18 = call i32 @sha256_init(i32* %5)
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @sha256_update(i32* %5, i8* %19, i64 %20)
  %22 = call i32 @sha256_final(i32* %5, i8* %14)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %58, %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SHA256_BLOCK_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %14, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 240
  %35 = ashr i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %28, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %17, i64 %41
  store i8 %38, i8* %42, align 1
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %14, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %43, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = load i32, i32* %10, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %17, i64 %56
  store i8 %52, i8* %57, align 1
  br label %58

58:                                               ; preds = %27
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %23

61:                                               ; preds = %23
  %62 = load i32, i32* @HASH_PASSWORD_LEN, align 4
  %63 = call i32 @sdsnewlen(i8* %17, i32 %62)
  %64 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %64)
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sha256_init(i32*) #2

declare dso_local i32 @sha256_update(i32*, i8*, i64) #2

declare dso_local i32 @sha256_final(i32*, i8*) #2

declare dso_local i32 @sdsnewlen(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
