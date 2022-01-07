; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_services.c_query_from_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_services.c_query_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, i32, i32, i32 }

@query_from_path.selectW = internal constant [26 x i8] c"SELECT * FROM %s WHERE %s\00", align 16
@query_from_path.select_allW = internal constant [15 x i8] c"SELECT * FROM \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.path*)* @query_from_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @query_from_path(%struct.path* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.path*, %struct.path** %3, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %13, %16
  %18 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @query_from_path.selectW, i64 0, i64 0))
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 1
  %23 = trunc i64 %22 to i32
  %24 = call i8* @heap_alloc(i32 %23)
  store i8* %24, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %59

27:                                               ; preds = %10
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.path*, %struct.path** %3, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sprintfW(i8* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @query_from_path.selectW, i64 0, i64 0), i32 %31, i32 %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.path*, %struct.path** %3, align 8
  %38 = getelementptr inbounds %struct.path, %struct.path* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @query_from_path.select_allW, i64 0, i64 0))
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i8* @heap_alloc(i32 %45)
  store i8* %46, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  store i8* null, i8** %2, align 8
  br label %59

49:                                               ; preds = %36
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strcpyW(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @query_from_path.select_allW, i64 0, i64 0))
  %52 = load i8*, i8** %4, align 8
  %53 = load %struct.path*, %struct.path** %3, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcatW(i8* %52, i32 %55)
  br label %57

57:                                               ; preds = %49, %27
  %58 = load i8*, i8** %4, align 8
  store i8* %58, i8** %2, align 8
  br label %59

59:                                               ; preds = %57, %48, %26
  %60 = load i8*, i8** %2, align 8
  ret i8* %60
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @sprintfW(i8*, i8*, i32, i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
