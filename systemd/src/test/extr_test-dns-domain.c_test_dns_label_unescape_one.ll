; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_test_dns_label_unescape_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_test_dns_label_unescape_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s, %s, %zu, \E2\86\92%d/%d\00", align 1
@DNS_LABEL_LDH = common dso_local global i32 0, align 4
@DNS_LABEL_NO_ESCAPES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32, i32)* @test_dns_label_unescape_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dns_label_unescape_one(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @log_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i64 %22, i32 %23, i32 %24)
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @dns_label_unescape(i8** %14, i8* %18, i64 %26, i32 0)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32, i32* %13, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @streq(i8* %18, i8* %36)
  %38 = call i32 @assert_se(i32 %37)
  br label %39

39:                                               ; preds = %35, %5
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @DNS_LABEL_LDH, align 4
  %43 = call i32 @dns_label_unescape(i8** %14, i8* %18, i64 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @streq(i8* %18, i8* %52)
  %54 = call i32 @assert_se(i32 %53)
  br label %55

55:                                               ; preds = %51, %39
  %56 = load i8*, i8** %6, align 8
  store i8* %56, i8** %14, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @DNS_LABEL_NO_ESCAPES, align 4
  %59 = call i32 @dns_label_unescape(i8** %14, i8* %18, i64 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @strchr(i8* %60, i8 signext 92)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  br label %68

66:                                               ; preds = %55
  %67 = load i32, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i32 [ %65, %63 ], [ %67, %66 ]
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert_se(i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @streq(i8* %18, i8* %78)
  %80 = call i32 @assert_se(i32 %79)
  br label %81

81:                                               ; preds = %77, %68
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_info(i8*, i8*, i8*, i64, i32, i32) #2

declare dso_local i32 @dns_label_unescape(i8**, i8*, i64, i32) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i8*, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
