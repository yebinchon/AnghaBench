; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_test_dns_label_unescape_suffix_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-dns-domain.c_test_dns_label_unescape_suffix_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"%s, %s, %s, %zu, %d, %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64, i32, i32)* @test_dns_label_unescape_suffix_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dns_label_unescape_suffix_one(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* %10, align 8
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %21, i8* %22, i64 %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @dns_label_unescape_suffix(i8* %32, i8** %15, i8* %19, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %6
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @streq(i8* %19, i8* %43)
  %45 = call i32 @assert_se(i32 %44)
  br label %46

46:                                               ; preds = %42, %6
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @dns_label_unescape_suffix(i8* %47, i8** %15, i8* %19, i64 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert_se(i32 %53)
  %55 = load i32, i32* %16, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @streq(i8* %19, i8* %58)
  %60 = call i32 @assert_se(i32 %59)
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %62)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_info(i8*, i8*, i8*, i8*, i64, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @dns_label_unescape_suffix(i8*, i8**, i8*, i64) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i32 @streq(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
