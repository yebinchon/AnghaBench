; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wctob.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_wctob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"chinese-traditional\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Skipping wctob tests\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ret = %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_wctob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_wctob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @_getmbcp()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @LC_ALL, align 4
  %5 = call i32 @setlocale(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @win_skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %67

9:                                                ; preds = %0
  %10 = call i32 @p_wctob(i32 33089)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = call i32 @p_wctob(i32 129)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = call i32 @p_wctob(i32 224)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = icmp eq i32 %25, 97
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = call i32 @_setmbcp(i32 1250)
  %31 = call i32 @p_wctob(i32 129)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* @EOF, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %1, align 4
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @LC_ALL, align 4
  %39 = call i32 @setlocale(i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @p_wctob(i32 33089)
  store i32 %40, i32* %1, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @EOF, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 @p_wctob(i32 129)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, -127
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = call i32 @p_wctob(i32 159)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp eq i32 %54, -97
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %1, align 4
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = call i32 @p_wctob(i32 224)
  store i32 %59, i32* %1, align 4
  %60 = load i32, i32* %1, align 4
  %61 = icmp eq i32 %60, -32
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @_setmbcp(i32 %65)
  br label %67

67:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @p_wctob(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @_setmbcp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
