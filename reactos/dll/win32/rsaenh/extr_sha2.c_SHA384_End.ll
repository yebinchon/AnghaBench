; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_sha2.c_SHA384_End.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rsaenh/extr_sha2.c_SHA384_End.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA384_DIGEST_LENGTH = common dso_local global i32 0, align 4
@sha2_hex_digits = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SHA384_End(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @SHA384_DIGEST_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @SHA384_Final(i32* %12, i32* %20)
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %50, %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SHA384_DIGEST_LENGTH, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %22
  %27 = load i8**, i8*** @sha2_hex_digits, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 240
  %31 = ashr i32 %30, 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %27, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %34 to i8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i8**, i8*** @sha2_hex_digits, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 15
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %38, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %26
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i8*, i8** %4, align 8
  store i8 0, i8* %54, align 1
  br label %58

55:                                               ; preds = %2
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @MEMSET_BZERO(i32* %56, i32 4)
  br label %58

58:                                               ; preds = %55, %53
  %59 = load i32, i32* @SHA384_DIGEST_LENGTH, align 4
  %60 = call i32 @MEMSET_BZERO(i32* %12, i32 %59)
  %61 = load i8*, i8** %4, align 8
  %62 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %62)
  ret i8* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @SHA384_Final(i32*, i32*) #2

declare dso_local i32 @MEMSET_BZERO(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
