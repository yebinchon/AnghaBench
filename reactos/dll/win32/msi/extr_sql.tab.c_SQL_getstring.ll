; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_SQL_getstring.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_sql.tab.c_SQL_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sql_str = type { i8*, i32 }

@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SQL_getstring(i8* %0, %struct.sql_str* %1, i64** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sql_str*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.sql_str* %1, %struct.sql_str** %6, align 8
  store i64** %2, i64*** %7, align 8
  %10 = load %struct.sql_str*, %struct.sql_str** %6, align 8
  %11 = getelementptr inbounds %struct.sql_str, %struct.sql_str* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.sql_str*, %struct.sql_str** %6, align 8
  %14 = getelementptr inbounds %struct.sql_str, %struct.sql_str* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 96
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 96
  br i1 %29, label %45, label %30

30:                                               ; preds = %21, %3
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 39
  br i1 %35, label %36, label %47

36:                                               ; preds = %30
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 39
  br i1 %44, label %45, label %47

45:                                               ; preds = %36, %21
  %46 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %46, i32* %4, align 4
  br label %111

47:                                               ; preds = %36, %30
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 96
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 96
  br i1 %61, label %77, label %62

62:                                               ; preds = %53, %47
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 39
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 39
  br i1 %76, label %77, label %82

77:                                               ; preds = %68, %53
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 2
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %77, %68, %62
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = call i64* @parser_alloc(i8* %83, i32 %88)
  %90 = load i64**, i64*** %7, align 8
  store i64* %89, i64** %90, align 8
  %91 = load i64**, i64*** %7, align 8
  %92 = load i64*, i64** %91, align 8
  %93 = icmp ne i64* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %95, i32* %4, align 4
  br label %111

96:                                               ; preds = %82
  %97 = load i64**, i64*** %7, align 8
  %98 = load i64*, i64** %97, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i64* %98, i8* %99, i32 %103)
  %105 = load i64**, i64*** %7, align 8
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %96, %94, %45
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i64* @parser_alloc(i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
