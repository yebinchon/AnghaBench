; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_prov.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rsaenh/extr_rsaenh.c_test_prov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hProv = common dso_local global i32 0, align 4
@PP_SIG_KEYSIZE_INC = common dso_local global i32 0, align 4
@NTE_BAD_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"PP_SIG_KEYSIZE_INC is not supported (win9x or NT)\0A\00", align 1
@nt4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%08x, %d\0A\00", align 1
@PP_KEYX_KEYSIZE_INC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"PP_KEYX_KEYSIZE_INC is not supported (win9x or NT)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_prov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_prov() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 4, i32* %2, align 4
  %4 = call i32 @SetLastError(i32 -559038737)
  %5 = load i32, i32* @hProv, align 4
  %6 = load i32, i32* @PP_SIG_KEYSIZE_INC, align 4
  %7 = call i64 @CryptGetProvParam(i32 %5, i32 %6, i32* %3, i32* %2, i32 0)
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %0
  %11 = call i64 (...) @GetLastError()
  %12 = load i64, i64* @NTE_BAD_TYPE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @nt4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @nt4, align 4
  br label %30

18:                                               ; preds = %10, %0
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 (...) @GetLastError()
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %14
  store i32 4, i32* %2, align 4
  %31 = call i32 @SetLastError(i32 -559038737)
  %32 = load i32, i32* @hProv, align 4
  %33 = load i32, i32* @PP_KEYX_KEYSIZE_INC, align 4
  %34 = call i64 @CryptGetProvParam(i32 %32, i32 %33, i32* %3, i32* %2, i32 0)
  store i64 %34, i64* %1, align 8
  %35 = load i64, i64* %1, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = call i64 (...) @GetLastError()
  %39 = load i64, i64* @NTE_BAD_TYPE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %55

43:                                               ; preds = %37, %30
  %44 = load i64, i64* %1, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i1 [ false, %43 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 (...) @GetLastError()
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @CryptGetProvParam(i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
