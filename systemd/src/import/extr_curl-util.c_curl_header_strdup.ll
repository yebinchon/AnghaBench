; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_header_strdup.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_curl-util.c_curl_header_strdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WHITESPACE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_header_strdup(i8* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i8* @memory_startswith_no_case(i8* %12, i64 %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = ptrtoint i8* %20 to i64
  %23 = ptrtoint i8* %21 to i64
  %24 = sub i64 %22, %23
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @memchr(i8* %27, i32 0, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %80

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* @WHITESPACE, align 4
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = call i64 @strchr(i32 %37, i8 signext %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %33
  %44 = phi i1 [ false, %33 ], [ %42, %36 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %7, align 8
  br label %33

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %65, %50
  %52 = load i64, i64* %7, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* @WHITESPACE, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = sub i64 %57, 1
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @strchr(i32 %55, i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %54, %51
  %64 = phi i1 [ false, %51 ], [ %62, %54 ]
  br i1 %64, label %65, label %68

65:                                               ; preds = %63
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %7, align 8
  br label %51

68:                                               ; preds = %63
  %69 = load i8*, i8** %10, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i8* @strndup(i8* %69, i64 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %80

77:                                               ; preds = %68
  %78 = load i8*, i8** %11, align 8
  %79 = load i8**, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %74, %31, %18
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i8* @memory_startswith_no_case(i8*, i64, i8*) #1

declare dso_local i64 @memchr(i8*, i32, i64) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i8* @strndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
