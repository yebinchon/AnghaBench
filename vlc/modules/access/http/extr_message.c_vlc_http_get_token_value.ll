; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_get_token_value.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_message.c_vlc_http_get_token_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @vlc_http_get_token_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_http_get_token_value(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i8* @vlc_http_get_token(i8* %10, i8* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %91

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @vlc_http_token_length(i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %4, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @strspn(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 61
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %91

32:                                               ; preds = %16
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strspn(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %4, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i64 @vlc_http_quoted_length(i8* %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i8* null, i8** %3, align 8
  br label %91

45:                                               ; preds = %32
  %46 = load i64, i64* %6, align 8
  %47 = icmp uge i64 %46, 2
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, 2
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  %56 = call i8* @malloc(i64 %55)
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp eq i8* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i8* null, i8** %3, align 8
  br label %91

63:                                               ; preds = %45
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %8, align 8
  br label %65

65:                                               ; preds = %85, %63
  %66 = load i64, i64* %6, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %9, align 1
  %72 = load i8, i8* %9, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 92
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  %78 = load i8, i8* %76, align 1
  store i8 %78, i8* %9, align 1
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load i8, i8* %9, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %8, align 8
  store i8 %82, i8* %83, align 1
  br label %85

85:                                               ; preds = %81
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %6, align 8
  br label %65

88:                                               ; preds = %65
  %89 = load i8*, i8** %8, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %7, align 8
  store i8* %90, i8** %3, align 8
  br label %91

91:                                               ; preds = %88, %62, %44, %31, %15
  %92 = load i8*, i8** %3, align 8
  ret i8* %92
}

declare dso_local i8* @vlc_http_get_token(i8*, i8*) #1

declare dso_local i32 @vlc_http_token_length(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @vlc_http_quoted_length(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
