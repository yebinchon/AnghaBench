; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_compare_func.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_compare_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_LABEL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_name_compare_func(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %70, %2
  %29 = load i32, i32* @DNS_LABEL_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %10, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %33 = load i32, i32* @DNS_LABEL_MAX, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %12, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %67

42:                                               ; preds = %38, %28
  %43 = load i8*, i8** %4, align 8
  %44 = trunc i64 %30 to i32
  %45 = call i32 @dns_label_unescape_suffix(i8* %43, i8** %6, i8* %32, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = trunc i64 %34 to i32
  %48 = call i32 @dns_label_unescape_suffix(i8* %46, i8** %7, i8* %35, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @CMP(i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %67

58:                                               ; preds = %51
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @ascii_strcasecmp_nn(i8* %32, i32 %59, i8* %35, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %67

66:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %64, %54, %41
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %13, align 4
  switch i32 %69, label %73 [
    i32 0, label %70
    i32 1, label %71
  ]

70:                                               ; preds = %67
  br label %28

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  ret i32 %72

73:                                               ; preds = %67
  unreachable
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dns_label_unescape_suffix(i8*, i8**, i8*, i32) #1

declare dso_local i32 @CMP(i32, i32) #1

declare dso_local i32 @ascii_strcasecmp_nn(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
