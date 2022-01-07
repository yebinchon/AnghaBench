; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsset_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__wcsset_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"r = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"str[0] = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"str[1] = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"str[2] = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__wcsset_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__wcsset_s() #0 {
  %1 = alloca [10 x i8], align 1
  %2 = alloca i32, align 4
  %3 = call i32 @p__wcsset_s(i8* null, i32 0, i8 signext 97)
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EINVAL, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i32, i32* %2, align 4
  %9 = trunc i32 %8 to i8
  %10 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %9)
  %11 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %11, align 1
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %13 = call i32 @p__wcsset_s(i8* %12, i32 0, i8 signext 97)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = trunc i32 %18 to i8
  %20 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %19)
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 97
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 signext %27)
  %29 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %29, align 1
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  store i8 98, i8* %30, align 1
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %32 = call i32 @p__wcsset_s(i8* %31, i32 2, i8 signext 99)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = trunc i32 %37 to i8
  %39 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %38)
  %40 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 signext %46)
  %48 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 98
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = call i32 @ok(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8 signext %54)
  %56 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %56, align 1
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 2
  store i8 98, i8* %58, align 1
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %60 = call i32 @p__wcsset_s(i8* %59, i32 3, i8 signext 99)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %2, align 4
  %65 = trunc i32 %64 to i8
  %66 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %65)
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 99
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 signext %73)
  %75 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8 signext %81)
  %83 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 2
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 98
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds [10 x i8], [10 x i8]* %1, i64 0, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8 signext %89)
  ret void
}

declare dso_local i32 @p__wcsset_s(i8*, i32, i8 signext) #1

declare dso_local i32 @ok(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
