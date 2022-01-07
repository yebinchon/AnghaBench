; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_handle.c_alloc_handle_table_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_handle.c_alloc_handle_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@msihandletable_size = common dso_local global i64 0, align 8
@msihandletable = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @alloc_handle_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alloc_handle_table_entry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %27, %0
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @msihandletable_size, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @msihandletable, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %9
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @msihandletable, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17, %9
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %2, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %2, align 8
  br label %5

30:                                               ; preds = %25, %5
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @msihandletable_size, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load i64, i64* @msihandletable_size, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  store i32 256, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_8__* @msi_alloc_zero(i32 %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %3, align 8
  br label %53

43:                                               ; preds = %34
  %44 = load i64, i64* @msihandletable_size, align 8
  %45 = mul i64 %44, 2
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @msihandletable, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call %struct.TYPE_8__* @msi_realloc_zero(%struct.TYPE_8__* %47, i32 %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %3, align 8
  br label %53

53:                                               ; preds = %43, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = icmp ne %struct.TYPE_8__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i64 0, i64* %1, align 8
  br label %64

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %58, %struct.TYPE_8__** @msihandletable, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* @msihandletable_size, align 8
  br label %61

61:                                               ; preds = %57, %30
  %62 = load i64, i64* %2, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %1, align 8
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i64, i64* %1, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_8__* @msi_alloc_zero(i32) #1

declare dso_local %struct.TYPE_8__* @msi_realloc_zero(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
