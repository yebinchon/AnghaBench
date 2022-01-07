; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_startswith.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_startswith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_LABEL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_name_startswith(i8* %0, i8* %1) #0 {
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
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %5, align 8
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %59, %2
  %21 = load i32, i32* @DNS_LABEL_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i32, i32* @DNS_LABEL_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %28 = trunc i64 %26 to i32
  %29 = call i32 @dns_label_unescape(i8** %7, i8* %27, i32 %28, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

38:                                               ; preds = %34
  %39 = trunc i64 %22 to i32
  %40 = call i32 @dns_label_unescape(i8** %6, i8* %24, i32 %39, i32 0)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @ascii_strcasecmp_n(i8* %24, i8* %27, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %54, %49, %43, %37, %32
  %57 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %13, align 4
  switch i32 %58, label %62 [
    i32 0, label %59
    i32 1, label %60
  ]

59:                                               ; preds = %56
  br label %20

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  ret i32 %61

62:                                               ; preds = %56
  unreachable
}

declare dso_local i32 @assert(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dns_label_unescape(i8**, i8*, i32, i32) #1

declare dso_local i64 @ascii_strcasecmp_n(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
