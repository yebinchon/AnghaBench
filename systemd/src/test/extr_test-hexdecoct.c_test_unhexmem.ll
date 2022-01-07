; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_unhexmem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_unhexmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"efa2149213\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"  e f   a\0A 2\0D  14\0A\0D\099\092 \0A1\0D3 \0D\0D\09\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"efa214921o\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"   \0A \09\0D   \09\09 \0A\0A\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unhexmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unhexmem() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  %4 = call i32 @test_unhexmem_one(i8* null, i64 0, i32 0)
  %5 = call i32 @test_unhexmem_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 0, i32 0)
  %6 = call i32 @test_unhexmem_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i64 -1, i32 0)
  %7 = call i32 @test_unhexmem_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i64 -1, i32 0)
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @test_unhexmem_one(i8* %8, i64 %10, i32 %12)
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i32 @test_unhexmem_one(i8* %14, i64 -1, i32 %16)
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = sub i64 %20, 1
  %22 = load i32, i32* @EPIPE, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @test_unhexmem_one(i8* %18, i64 %21, i32 %23)
  %25 = load i8*, i8** %1, align 8
  %26 = load i8*, i8** %1, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = call i32 @test_unhexmem_one(i8* %25, i64 %27, i32 0)
  %29 = load i8*, i8** %1, align 8
  %30 = call i32 @test_unhexmem_one(i8* %29, i64 -1, i32 0)
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = call i32 @test_unhexmem_one(i8* %31, i64 %33, i32 0)
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @test_unhexmem_one(i8* %35, i64 -1, i32 0)
  ret void
}

declare dso_local i32 @test_unhexmem_one(i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
