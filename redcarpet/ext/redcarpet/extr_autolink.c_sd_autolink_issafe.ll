; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink_issafe.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_autolink.c_sd_autolink_issafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sd_autolink_issafe.valid_uris_count = internal constant i64 6, align 8
@sd_autolink_issafe.valid_uris = internal global [6 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ftp://\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mailto:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_autolink_issafe(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i64, i64* %6, align 8
  %10 = icmp ult i64 %9, 6
  br i1 %10, label %11, label %40

11:                                               ; preds = %8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds [6 x i8*], [6 x i8*]* @sd_autolink_issafe.valid_uris, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %11
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds [6 x i8*], [6 x i8*]* @sd_autolink_issafe.valid_uris, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @strncasecmp(i8* %21, i8* %24, i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @isalnum(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %41

36:                                               ; preds = %28, %19, %11
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %8

40:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i64) #1

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
