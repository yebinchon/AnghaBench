; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-dnssec.c_dnssec_canonicalize.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-dnssec.c_dnssec_canonicalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnssec_canonicalize(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOBUFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %84

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %45, %15
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @dns_label_unescape(i8** %5, i8* %17, i64 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %69

28:                                               ; preds = %24
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %31, 2
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %84

37:                                               ; preds = %28
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @memchr(i8* %38, i8 signext 46, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @ascii_strlower_n(i8* %46, i64 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 46, i8* %53, align 1
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i8*, i8** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %16

69:                                               ; preds = %27
  %70 = load i64, i64* %8, align 8
  %71 = icmp ule i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i64, i64* %7, align 8
  %74 = icmp ugt i64 %73, 2
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 46, i8* %78, align 1
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 0, i8* %80, align 1
  store i32 1, i32* %4, align 4
  br label %84

81:                                               ; preds = %69
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %72, %42, %34, %22, %12
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @dns_label_unescape(i8**, i8*, i64, i32) #1

declare dso_local i64 @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @ascii_strlower_n(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
