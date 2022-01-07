; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_query.c_fill_inf_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_query.c_fill_inf_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@SP_INF_INFORMATION = common dso_local global i32 0, align 4
@VersionData = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INF_STYLE_WIN4 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i64, i64*)* @fill_inf_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_inf_info(i32 %0, %struct.TYPE_3__* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PARSER_get_inf_filename(i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @SP_INF_INFORMATION, align 4
  %15 = load i32, i32* @VersionData, align 4
  %16 = call i64 @FIELD_OFFSET(i32 %14, i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @lstrlenW(i32 %17)
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %16, %21
  store i64 %22, i64* %11, align 8
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i64, i64* %11, align 8
  %27 = load i64*, i64** %9, align 8
  store i64 %26, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %37 = call i32 @SetLastError(i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load i32, i32* @INF_STYLE_WIN4, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = ptrtoint i32* %48 to i32
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @lstrcpyW(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %39, %28
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %35
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @PARSER_get_inf_filename(i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @lstrcpyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
