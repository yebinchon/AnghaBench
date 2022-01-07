; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test__tzset.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_time.c_test__tzset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"*__dstbias() = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"*__p__dstbias() = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"__dstbias() is not available.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"TZ=%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"*__p__daylight() = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"*__p__timezone() = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"TZ=xxx+1yyy\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"TZ=xxx+1:3:5zzz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__tzset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__tzset() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  br i1 true, label %3, label %18

3:                                                ; preds = %0
  %4 = call i32* (...) @p__dstbias()
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -3600
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32* (...) @p___p__dstbias()
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -3600
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %20

18:                                               ; preds = %0
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %22 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %26 ]
  %29 = call i32 @_snprintf(i8* %21, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  %30 = call i32* (...) @p___p__daylight()
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = call i32* (...) @p___p__timezone()
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, 28800
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %42)
  %44 = call i32* (...) @p___p__dstbias()
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp eq i32 %46, -3600
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = call i32 @_putenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %52 = call i32 (...) @_tzset()
  %53 = call i32* (...) @p___p__daylight()
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = icmp eq i32 %55, 121
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %58)
  %60 = call i32* (...) @p___p__timezone()
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* %2, align 4
  %63 = icmp eq i32 %62, 3600
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = call i32* (...) @p___p__dstbias()
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %2, align 4
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, -3600
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32* (...) @p___p__dstbias()
  store i32 0, i32* %74, align 4
  %75 = call i32 @_putenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %76 = call i32 (...) @_tzset()
  %77 = call i32* (...) @p___p__daylight()
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = icmp eq i32 %79, 122
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = call i32* (...) @p___p__timezone()
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = icmp eq i32 %86, 3785
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  %91 = call i32* (...) @p___p__dstbias()
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %2, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @ok(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %99 = call i32 @_putenv(i8* %98)
  ret void
}

declare dso_local i32* @p__dstbias(...) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32* @p___p__dstbias(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32* @p___p__daylight(...) #1

declare dso_local i32* @p___p__timezone(...) #1

declare dso_local i32 @_putenv(i8*) #1

declare dso_local i32 @_tzset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
