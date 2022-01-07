; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromI4.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/oleaut32/extr_vartype.c_test_VarBstrFromI4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_VarBstrFromI4.int_min = internal constant [12 x i8] c"-2147483648\00", align 1
@test_VarBstrFromI4.minus_42 = internal constant [4 x i8] c"-42\00", align 1
@LANG_ENGLISH = common dso_local global i32 0, align 4
@SUBLANG_ENGLISH_US = common dso_local global i32 0, align 4
@SORT_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_NOUSEROVERRIDE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"got hres 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"string different\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_VarBstrFromI4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_VarBstrFromI4() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  %5 = load i32, i32* @LANG_ENGLISH, align 4
  %6 = load i32, i32* @SUBLANG_ENGLISH_US, align 4
  %7 = call i32 @MAKELANGID(i32 %5, i32 %6)
  %8 = load i32, i32* @SORT_DEFAULT, align 4
  %9 = call i32 @MAKELCID(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  store i32 -2147483648, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %13 = call i64 @VarBstrFromI4(i32 %10, i32 %11, i32 %12, i32** %1)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %2, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %0
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @memcmp(i32* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_VarBstrFromI4.int_min, i64 0, i64 0), i32 12)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @SysFreeString(i32* %28)
  br label %30

30:                                               ; preds = %22, %0
  store i32 -42, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @LOCALE_NOUSEROVERRIDE, align 4
  %34 = call i64 @VarBstrFromI4(i32 %31, i32 %32, i32 %33, i32** %1)
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = load i64, i64* @S_OK, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %2, align 8
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load i32*, i32** %1, align 8
  %45 = call i64 @memcmp(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_VarBstrFromI4.minus_42, i64 0, i64 0), i32 4)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @SysFreeString(i32* %49)
  br label %51

51:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @MAKELCID(i32, i32) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i64 @VarBstrFromI4(i32, i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
