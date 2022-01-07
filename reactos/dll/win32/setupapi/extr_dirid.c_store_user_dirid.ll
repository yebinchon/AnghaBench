; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_store_user_dirid.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_dirid.c_store_user_dirid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_dirid = type { i32, i32* }

@nb_user_dirids = common dso_local global i32 0, align 4
@user_dirids = common dso_local global %struct.user_dirid* null, align 8
@alloc_user_dirids = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"id %d -> %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @store_user_dirid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_user_dirid(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_dirid*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %26, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @nb_user_dirids, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %16, i64 %18
  %20 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %11

29:                                               ; preds = %24, %11
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @nb_user_dirids, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = call i32 (...) @GetProcessHeap()
  %35 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %35, i64 %37
  %39 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @HeapFree(i32 %34, i32 0, i32* %40)
  br label %78

42:                                               ; preds = %29
  %43 = load i32, i32* @nb_user_dirids, align 4
  %44 = load i32, i32* @alloc_user_dirids, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %42
  %47 = load i32, i32* @alloc_user_dirids, align 4
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @max(i32 32, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %51 = icmp ne %struct.user_dirid* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = call i32 (...) @GetProcessHeap()
  %54 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 16
  %58 = trunc i64 %57 to i32
  %59 = call %struct.user_dirid* @HeapReAlloc(i32 %53, i32 0, %struct.user_dirid* %54, i32 %58)
  store %struct.user_dirid* %59, %struct.user_dirid** %10, align 8
  br label %67

60:                                               ; preds = %46
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 16
  %65 = trunc i64 %64 to i32
  %66 = call %struct.user_dirid* @HeapAlloc(i32 %61, i32 0, i32 %65)
  store %struct.user_dirid* %66, %struct.user_dirid** %10, align 8
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.user_dirid*, %struct.user_dirid** %10, align 8
  %69 = icmp ne %struct.user_dirid* %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %4, align 4
  br label %96

72:                                               ; preds = %67
  %73 = load %struct.user_dirid*, %struct.user_dirid** %10, align 8
  store %struct.user_dirid* %73, %struct.user_dirid** @user_dirids, align 8
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* @alloc_user_dirids, align 4
  br label %75

75:                                               ; preds = %72, %42
  %76 = load i32, i32* @nb_user_dirids, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @nb_user_dirids, align 4
  br label %78

78:                                               ; preds = %75, %33
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %80, i64 %82
  %84 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load %struct.user_dirid*, %struct.user_dirid** @user_dirids, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %86, i64 %88
  %90 = getelementptr inbounds %struct.user_dirid, %struct.user_dirid* %89, i32 0, i32 1
  store i32* %85, i32** %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @debugstr_w(i32* %92)
  %94 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %93)
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %78, %70
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.user_dirid* @HeapReAlloc(i32, i32, %struct.user_dirid*, i32) #1

declare dso_local %struct.user_dirid* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
