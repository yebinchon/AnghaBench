; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_utf8_mbtowc.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/reiserfs/src/nls/extr_nls_base.c_utf8_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_table = type { i32, i32, i64, i64 }

@utf8_table = common dso_local global %struct.utf8_table* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_mbtowc(i64* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.utf8_table*, align 8
  store i64* %0, i64** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %8, align 8
  %17 = load %struct.utf8_table*, %struct.utf8_table** @utf8_table, align 8
  store %struct.utf8_table* %17, %struct.utf8_table** %12, align 8
  br label %18

18:                                               ; preds = %73, %3
  %19 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %20 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %28 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %26, %29
  %31 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %32 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %23
  %36 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %37 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %8, align 8
  %40 = and i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %43 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %77

47:                                               ; preds = %35
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %5, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %77

51:                                               ; preds = %23
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %4, align 4
  br label %77

56:                                               ; preds = %51
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, 128
  %62 = and i32 %61, 255
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %63, 192
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  store i32 -1, i32* %4, align 4
  br label %77

67:                                               ; preds = %56
  %68 = load i64, i64* %8, align 8
  %69 = shl i64 %68, 6
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = or i64 %69, %71
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load %struct.utf8_table*, %struct.utf8_table** %12, align 8
  %75 = getelementptr inbounds %struct.utf8_table, %struct.utf8_table* %74, i32 1
  store %struct.utf8_table* %75, %struct.utf8_table** %12, align 8
  br label %18

76:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %66, %55, %47, %46
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
