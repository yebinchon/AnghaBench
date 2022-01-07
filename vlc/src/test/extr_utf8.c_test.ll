; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_utf8.c_test.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_utf8.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"\22%s\22 should be accepted...\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\22%s\22 should be rewritten as \22%s\22...\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" ERROR: IsUTF8 (%s) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" ERROR: EnsureUTF8 (%s) failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" ERROR: got \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c" ERROR: EnsureUTF8 (%s) is not UTF-8\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %7, i8* %8)
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i8*, i8** %3, align 8
  %31 = call i32* @IsUTF8(i8* %30)
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = call i32* @EnsureUTF8(i8* %41)
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = call i32 @exit(i32 2) #3
  unreachable

51:                                               ; preds = %40
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %57)
  %59 = call i32 @exit(i32 3) #3
  unreachable

60:                                               ; preds = %51
  %61 = load i8*, i8** %6, align 8
  %62 = call i32* @EnsureUTF8(i8* %61)
  %63 = icmp eq i32* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = call i32* @IsUTF8(i8* %65)
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %60
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %69)
  %71 = call i32 @exit(i32 4) #3
  unreachable

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32* @IsUTF8(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @EnsureUTF8(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
