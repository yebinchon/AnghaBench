; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_check_parents.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_win.c_check_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GA_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Wrong result for GA_PARENT %p expected %p\0A\00", align 1
@GWLP_HWNDPARENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong result for GWL_HWNDPARENT %p expected %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Wrong result for GetParent %p expected %p\0A\00", align 1
@GW_OWNER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Wrong result for GW_OWNER %p expected %p\0A\00", align 1
@GA_ROOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Wrong result for GA_ROOT %p expected %p\0A\00", align 1
@GA_ROOTOWNER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Wrong result for GA_ROOTOWNER %p expected %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i64, i64, i64)* @check_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_parents(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  br i1 true, label %16, label %27

16:                                               ; preds = %7
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @GA_PARENT, align 4
  %19 = call i64 @pGetAncestor(i64 %17, i32 %18)
  store i64 %19, i64* %15, align 8
  %20 = load i64, i64* %15, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %15, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @ok(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %7
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @GWLP_HWNDPARENT, align 4
  %30 = call i64 @GetWindowLongPtrA(i64 %28, i32 %29)
  store i64 %30, i64* %15, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %35, i64 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i64 @GetParent(i64 %38)
  store i64 %39, i64* %15, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %15, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %44, i64 %45)
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* @GW_OWNER, align 4
  %49 = call i64 @GetWindow(i64 %47, i32 %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %54, i64 %55)
  br i1 true, label %57, label %78

57:                                               ; preds = %27
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @GA_ROOT, align 4
  %60 = call i64 @pGetAncestor(i64 %58, i32 %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load i32, i32* @GA_ROOTOWNER, align 4
  %70 = call i64 @pGetAncestor(i64 %68, i32 %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %14, align 8
  %77 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %75, i64 %76)
  br label %78

78:                                               ; preds = %57, %27
  ret void
}

declare dso_local i64 @pGetAncestor(i64, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, i64) #1

declare dso_local i64 @GetWindowLongPtrA(i64, i32) #1

declare dso_local i64 @GetParent(i64) #1

declare dso_local i64 @GetWindow(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
