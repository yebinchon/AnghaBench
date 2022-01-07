; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-calendarspec.c_test_next.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-calendarspec.c_test_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_TIMESTAMP_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"At: %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64)* @test_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_next(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @FORMAT_TIMESTAMP_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = call i8* @strdupa(i8* %24)
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @strjoina(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i64 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %32, i32 1)
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  br label %42

37:                                               ; preds = %26
  %38 = call i64 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = call i32 (...) @tzset()
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @calendar_spec_from_string(i8* %44, i32** %9)
  %46 = icmp sge i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert_se(i32 %47)
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @calendar_spec_next_usec(i32* %52, i64 %53, i64* %10)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* %14, align 4
  %59 = call i8* @strerror_safe(i32 %58)
  br label %64

60:                                               ; preds = %42
  %61 = trunc i64 %17 to i32
  %62 = load i64, i64* %10, align 8
  %63 = call i8* @format_timestamp_us(i8* %19, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = phi i8* [ %59, %57 ], [ %63, %60 ]
  %66 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, -1
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %69
  %77 = phi i1 [ false, %69 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert_se(i32 %78)
  br label %87

80:                                               ; preds = %64
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ENOENT, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  br label %87

87:                                               ; preds = %80, %76
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @calendar_spec_free(i32* %88)
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i8*, i8** %11, align 8
  %94 = call i64 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %93, i32 1)
  %95 = icmp sge i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert_se(i32 %96)
  br label %103

98:                                               ; preds = %87
  %99 = call i64 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %100 = icmp sge i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert_se(i32 %101)
  br label %103

103:                                              ; preds = %98, %92
  %104 = call i32 (...) @tzset()
  %105 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @strdupa(i8*) #2

declare dso_local i8* @strjoina(i8*, i8*) #2

declare dso_local i32 @assert_se(i32) #2

declare dso_local i64 @setenv(i8*, i8*, i32) #2

declare dso_local i64 @unsetenv(i8*) #2

declare dso_local i32 @tzset(...) #2

declare dso_local i64 @calendar_spec_from_string(i8*, i32**) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @calendar_spec_next_usec(i32*, i64, i64*) #2

declare dso_local i8* @strerror_safe(i32) #2

declare dso_local i8* @format_timestamp_us(i8*, i32, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @calendar_spec_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
