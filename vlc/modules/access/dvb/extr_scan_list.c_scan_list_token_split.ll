; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_token_split.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_token_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i64*, i8**, i64*)* @scan_list_token_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_list_token_split(i8* %0, i64 %1, i8** %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i8* @strchr(i8* %17, i8 signext 61)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %54

22:                                               ; preds = %6
  %23 = load i8*, i8** %14, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  store i64 %27, i64* %15, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8*, i8** %14, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  store i64 %36, i64* %16, align 8
  %37 = call i32 @scan_token_strip(i8** %8, i64* %15)
  %38 = call i32 @scan_token_strip(i8** %14, i64* %16)
  %39 = load i64, i64* %15, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %22
  %42 = load i64, i64* %16, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %22
  store i32 0, i32* %7, align 4
  br label %54

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64*, i64** %11, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i8**, i8*** %12, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64*, i64** %13, align 8
  store i64 %52, i64* %53, align 8
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %45, %44, %21
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @scan_token_strip(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
