; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_COND_GetOperator.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_cond.tab.c_COND_GetOperator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [4 x i32], i32 }
%struct.TYPE_5__ = type { i64, i32* }

@COND_GetOperator.table = internal constant [18 x %struct.anon] [%struct.anon { [4 x i32] [i32 126, i32 60, i32 61, i32 0], i32 139 }, %struct.anon { [4 x i32] [i32 126, i32 62, i32 60, i32 0], i32 134 }, %struct.anon { [4 x i32] [i32 126, i32 62, i32 62, i32 0], i32 135 }, %struct.anon { [4 x i32] [i32 126, i32 60, i32 62, i32 0], i32 136 }, %struct.anon { [4 x i32] [i32 126, i32 62, i32 61, i32 0], i32 141 }, %struct.anon { [4 x i32] [i32 126, i32 60, i32 60, i32 0], i32 138 }, %struct.anon { [4 x i32] [i32 126, i32 61, i32 0, i32 0], i32 142 }, %struct.anon { [4 x i32] [i32 126, i32 60, i32 0, i32 0], i32 137 }, %struct.anon { [4 x i32] [i32 126, i32 62, i32 0, i32 0], i32 140 }, %struct.anon { [4 x i32] [i32 62, i32 61, i32 0, i32 0], i32 144 }, %struct.anon { [4 x i32] [i32 62, i32 60, i32 0, i32 0], i32 128 }, %struct.anon { [4 x i32] [i32 60, i32 60, i32 0, i32 0], i32 132 }, %struct.anon { [4 x i32] [i32 60, i32 62, i32 0, i32 0], i32 130 }, %struct.anon { [4 x i32] [i32 60, i32 61, i32 0, i32 0], i32 133 }, %struct.anon { [4 x i32] [i32 62, i32 62, i32 0, i32 0], i32 129 }, %struct.anon { [4 x i32] [i32 62, i32 0, i32 0, i32 0], i32 143 }, %struct.anon { [4 x i32] [i32 60, i32 0, i32 0, i32 0], i32 131 }, %struct.anon zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @COND_GetOperator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @COND_GetOperator(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  store i32* %12, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %1, %33
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [18 x %struct.anon], [18 x %struct.anon]* @COND_GetOperator.table, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %19 = call i32 @lstrlenW(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [18 x %struct.anon], [18 x %struct.anon]* @COND_GetOperator.table, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 0
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 0
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @strncmpW(i32* %27, i32* %28, i32 %29)
  %31 = icmp eq i64 0, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %13
  br label %36

33:                                               ; preds = %22
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [18 x %struct.anon], [18 x %struct.anon]* @COND_GetOperator.table, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  ret i32 %47
}

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i64 @strncmpW(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
