; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_set_user_sid_prop.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_set_user_sid_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@szUserSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @set_user_sid_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_user_sid_prop(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %10, align 8
  %12 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %8, align 4
  %13 = call i32 @GetUserNameW(i32* null, i32* %8)
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32* @msi_alloc(i32 %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %1
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @GetUserNameW(i32* %25, i32* %8)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %65

29:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @LookupAccountNameW(i32* null, i32* %30, i32* null, i32* %8, i32* null, i32* %9, i32* %4)
  %32 = load i32, i32* %8, align 4
  %33 = call i32* @msi_alloc(i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i32* @msi_alloc(i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %29
  %45 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %45, i32* %11, align 4
  br label %65

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @LookupAccountNameW(i32* null, i32* %47, i32* %48, i32* %8, i32* %49, i32* %9, i32* %4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  br label %65

53:                                               ; preds = %46
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @ConvertSidToStringSidW(i32* %54, i32** %6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @szUserSID, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @msi_set_property(i32 %61, i32 %62, i32* %63, i32 -1)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %58, %57, %52, %44, %28
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @LocalFree(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @msi_free(i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @msi_free(i32* %70)
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @msi_free(i32* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %22
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @GetUserNameW(i32*, i32*) #1

declare dso_local i32* @msi_alloc(i32) #1

declare dso_local i32 @LookupAccountNameW(i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ConvertSidToStringSidW(i32*, i32**) #1

declare dso_local i32 @msi_set_property(i32, i32, i32*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @msi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
