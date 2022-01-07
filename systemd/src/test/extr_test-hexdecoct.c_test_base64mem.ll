; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base64mem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_base64mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Zg==\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Zm8=\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Zm9v\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"foob\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Zm9vYg==\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"fooba\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Zm9vYmE=\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Zm9vYmFy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_base64mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_base64mem() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @STRLEN(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @base64mem(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %2, i8** %1)
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = load i8*, i8** %1, align 8
  %8 = call i32 @streq(i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @free(i8* %10)
  %12 = call i32 @STRLEN(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @base64mem(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %12, i8** %1)
  %14 = icmp eq i32 %13, 4
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert_se(i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 @streq(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 @assert_se(i32 %18)
  %20 = load i8*, i8** %1, align 8
  %21 = call i32 @free(i8* %20)
  %22 = call i32 @STRLEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @base64mem(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %22, i8** %1)
  %24 = icmp eq i32 %23, 4
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert_se(i32 %25)
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @streq(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %29 = call i32 @assert_se(i32 %28)
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @free(i8* %30)
  %32 = call i32 @STRLEN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %33 = call i32 @base64mem(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %32, i8** %1)
  %34 = icmp eq i32 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert_se(i32 %35)
  %37 = load i8*, i8** %1, align 8
  %38 = call i32 @streq(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %39 = call i32 @assert_se(i32 %38)
  %40 = load i8*, i8** %1, align 8
  %41 = call i32 @free(i8* %40)
  %42 = call i32 @STRLEN(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %43 = call i32 @base64mem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %42, i8** %1)
  %44 = icmp eq i32 %43, 8
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert_se(i32 %45)
  %47 = load i8*, i8** %1, align 8
  %48 = call i32 @streq(i8* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @free(i8* %50)
  %52 = call i32 @STRLEN(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %53 = call i32 @base64mem(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %52, i8** %1)
  %54 = icmp eq i32 %53, 8
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert_se(i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = call i32 @streq(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i8*, i8** %1, align 8
  %61 = call i32 @free(i8* %60)
  %62 = call i32 @STRLEN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %63 = call i32 @base64mem(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %62, i8** %1)
  %64 = icmp eq i32 %63, 8
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = load i8*, i8** %1, align 8
  %68 = call i32 @streq(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %69 = call i32 @assert_se(i32 %68)
  %70 = load i8*, i8** %1, align 8
  %71 = call i32 @free(i8* %70)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @base64mem(i8*, i32, i8**) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
