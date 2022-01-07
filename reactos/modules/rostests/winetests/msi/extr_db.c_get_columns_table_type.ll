; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_get_columns_table_type.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msi/extr_db.c_get_columns_table_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"select * from `_Columns` where  `Table` = '%s'\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @get_columns_table_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_columns_table_type(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %18 = call i64 @MsiDatabaseOpenViewA(i32 %16, i8* %17, i32* %8)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %4, align 8
  br label %57

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @MsiViewExecute(i32 %25, i32 0)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %47
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @MsiViewFetch(i32 %32, i32* %9)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @ERROR_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %50

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @MsiRecordGetInteger(i32 %39, i32 2)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @MsiRecordGetInteger(i32 %45, i32 4)
  store i64 %46, i64* %11, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @MsiCloseHandle(i32 %48)
  br label %31

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @MsiViewClose(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @MsiCloseHandle(i32 %54)
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %4, align 8
  br label %57

57:                                               ; preds = %51, %22
  %58 = load i64, i64* %4, align 8
  ret i64 %58
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @MsiDatabaseOpenViewA(i32, i8*, i32*) #1

declare dso_local i64 @MsiViewExecute(i32, i32) #1

declare dso_local i64 @MsiViewFetch(i32, i32*) #1

declare dso_local i64 @MsiRecordGetInteger(i32, i32) #1

declare dso_local i32 @MsiCloseHandle(i32) #1

declare dso_local i32 @MsiViewClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
