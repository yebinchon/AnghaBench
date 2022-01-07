; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-nss.c_test_byname.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-nss.c_test_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @test_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_byname(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @test_gethostbyname4_r(i8* %7, i8* %8, i8* %9)
  %11 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = call i32 @test_gethostbyname3_r(i8* %12, i8* %13, i8* %14, i32 %15)
  %17 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = call i32 @test_gethostbyname3_r(i8* %18, i8* %19, i8* %20, i32 %21)
  %23 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @AF_UNSPEC, align 4
  %28 = call i32 @test_gethostbyname3_r(i8* %24, i8* %25, i8* %26, i32 %27)
  %29 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @AF_LOCAL, align 4
  %34 = call i32 @test_gethostbyname3_r(i8* %30, i8* %31, i8* %32, i32 %33)
  %35 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** %4, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @AF_INET, align 4
  %40 = call i32 @test_gethostbyname2_r(i8* %36, i8* %37, i8* %38, i32 %39)
  %41 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @AF_INET6, align 4
  %46 = call i32 @test_gethostbyname2_r(i8* %42, i8* %43, i8* %44, i32 %45)
  %47 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* @AF_UNSPEC, align 4
  %52 = call i32 @test_gethostbyname2_r(i8* %48, i8* %49, i8* %50, i32 %51)
  %53 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @AF_LOCAL, align 4
  %58 = call i32 @test_gethostbyname2_r(i8* %54, i8* %55, i8* %56, i32 %57)
  %59 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @test_gethostbyname_r(i8* %60, i8* %61, i8* %62)
  %64 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @test_gethostbyname4_r(i8*, i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @test_gethostbyname3_r(i8*, i8*, i8*, i32) #1

declare dso_local i32 @test_gethostbyname2_r(i8*, i8*, i8*, i32) #1

declare dso_local i32 @test_gethostbyname_r(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
