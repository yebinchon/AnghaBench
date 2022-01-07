; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_recv.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_mcs.c_mcs_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCS_SDIN = common dso_local global i32 0, align 4
@MCS_DPUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expected data, got %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mcs_recv(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @iso_recv(i32* %12, i32* %13)
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %65

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** %11, align 8
  store i32* %26, i32** %4, align 8
  br label %65

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %18
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @in_uint8(i32* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MCS_SDIN, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @MCS_DPUM, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %41, %37
  store i32* null, i32** %4, align 8
  br label %65

45:                                               ; preds = %28
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @in_uint8s(i32* %46, i32 2)
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @in_uint16_be(i32* %48, i32 %50)
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @in_uint8s(i32* %52, i32 1)
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @in_uint8(i32* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 128
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @in_uint8s(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32*, i32** %11, align 8
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %63, %44, %25, %17
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32* @iso_recv(i32*, i32*) #1

declare dso_local i32 @in_uint8(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @in_uint16_be(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
