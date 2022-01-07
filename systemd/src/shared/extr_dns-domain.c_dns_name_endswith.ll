; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_endswith.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_dns-domain.c_dns_name_endswith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DNS_LABEL_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_name_endswith(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @assert(i8* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @assert(i8* %17)
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %78, %2
  %22 = load i32, i32* @DNS_LABEL_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %11, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %26 = load i32, i32* @DNS_LABEL_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %29 = trunc i64 %23 to i32
  %30 = call i32 @dns_label_unescape(i8** %6, i8* %25, i32 %29, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

35:                                               ; preds = %21
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %8, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = trunc i64 %27 to i32
  %42 = call i32 @dns_label_unescape(i8** %7, i8* %28, i32 %41, i32 0)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %75

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @ascii_strcasecmp_n(i8* %25, i8* %28, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i8* @TAKE_PTR(i8* %72)
  store i8* %73, i8** %6, align 8
  br label %74

74:                                               ; preds = %70, %66
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74, %61, %53, %45, %33
  %76 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %14, align 4
  switch i32 %77, label %81 [
    i32 0, label %78
    i32 1, label %79
  ]

78:                                               ; preds = %75
  br label %21

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  ret i32 %80

81:                                               ; preds = %75
  unreachable
}

declare dso_local i32 @assert(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dns_label_unescape(i8**, i8*, i32, i32) #1

declare dso_local i64 @ascii_strcasecmp_n(i8*, i8*, i32) #1

declare dso_local i8* @TAKE_PTR(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
