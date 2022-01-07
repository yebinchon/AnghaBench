; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_test_marshal_struct.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_tmarshal.c_test_marshal_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mystruct2 = common dso_local global i32 0, align 4
@test_mystruct3 = common dso_local global i32 0, align 4
@test_mystruct4 = common dso_local global i32 0, align 4
@test_mystruct1 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Got hr %#x.\0A\00", align 1
@test_mystruct5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Structs didn't match.\0A\00", align 1
@test_mystruct7 = common dso_local global i32 0, align 4
@test_thin_struct = common dso_local global i32 0, align 4
@test_rect2 = common dso_local global i32 0, align 4
@test_rect3 = common dso_local global i32 0, align 4
@test_rect4 = common dso_local global i32 0, align 4
@test_rect1 = common dso_local global i32 0, align 4
@test_rect5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Rects didn't match.\0A\00", align 1
@test_rect7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_marshal_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_marshal_struct(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = call i32 @memcpy(i32* %5, i32* @test_mystruct2, i32 4)
  %14 = call i32 @memcpy(i32* %6, i32* @test_mystruct3, i32 4)
  %15 = call i32 @memcpy(i32* %7, i32* @test_mystruct4, i32 4)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @test_mystruct1, align 4
  %18 = call i64 @IWidget_mystruct(i32* %16, i32 %17, i32* %5, i32* %6, i32* %7)
  store i64 %18, i64* %12, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %12, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = call i32 @memcmp(i32* %5, i32* @test_mystruct5, i32 4)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @memcmp(i32* %6, i32* @test_mystruct3, i32 4)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32 @memcmp(i32* %7, i32* @test_mystruct7, i32 4)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @memcpy(i32* %6, i32* @test_mystruct1, i32 4)
  store i32* %6, i32** %8, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @IWidget_mystruct_ptr_ptr(i32* %41, i32** %8)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %12, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @test_thin_struct, align 4
  %51 = call i64 @IWidget_thin_struct(i32* %49, i32 %50)
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @S_OK, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %12, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @test_rect2, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @test_rect3, align 4
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @test_rect4, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @test_rect1, align 4
  %63 = call i64 @IWidget_rect(i32* %61, i32 %62, i32* %9, i32* %10, i32* %11)
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* @S_OK, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i64, i64* %12, align 8
  %69 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = call i32 @EqualRect(i32* %9, i32* @test_rect5)
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %72 = call i32 @EqualRect(i32* %10, i32* @test_rect3)
  %73 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 @EqualRect(i32* %11, i32* @test_rect7)
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @IWidget_mystruct(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @IWidget_mystruct_ptr_ptr(i32*, i32**) #1

declare dso_local i64 @IWidget_thin_struct(i32*, i32) #1

declare dso_local i64 @IWidget_rect(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EqualRect(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
