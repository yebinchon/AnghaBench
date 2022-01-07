; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_SetWindowTheme.c_TestTheme.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/uxtheme/extr_SetWindowTheme.c_TestTheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Expected S_OK got 0x%lx error\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 84, i32 111, i32 111, i32 108, i32 98, i32 97, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"OpenThemeData failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Expected OpenThemeData to fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i32] [i32 84, i32 114, i32 97, i32 121, i32 78, i32 111, i32 116, i32 105, i32 102, i32 121, i32 0], align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Expected different theme data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TestTheme(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @SetWindowTheme(i32 %6, i8* null, i8* null)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32* @OpenThemeData(i32 %14, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* %2, align 4
  %21 = call i64 @SetWindowTheme(i32 %20, i8* bitcast ([1 x i32]* @.str.3 to i8*), i8* bitcast ([1 x i32]* @.str.3 to i8*))
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* %2, align 4
  %29 = call i32* @OpenThemeData(i32 %28, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @SetWindowTheme(i32 %34, i8* bitcast ([11 x i32]* @.str.5 to i8*), i8* bitcast ([1 x i32]* @.str.3 to i8*))
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* %2, align 4
  %43 = call i32* @OpenThemeData(i32 %42, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @SetWindowTheme(i32 %48, i8* bitcast ([11 x i32]* @.str.5 to i8*), i8* null)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %3, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32* @OpenThemeData(i32 %56, i8* bitcast ([8 x i32]* @.str.1 to i8*))
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32*, i32** %4, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i64 @SetWindowTheme(i32, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @OpenThemeData(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
