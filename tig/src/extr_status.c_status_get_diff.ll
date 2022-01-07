; ModuleID = '/home/carl/AnghaBench/tig/src/extr_status.c_status_get_diff.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_status.c_status_get_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status = type { i8, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64*, i8*, i32 }
%struct.TYPE_3__ = type { i64*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.status*, i8*, i64)* @status_get_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @status_get_diff(%struct.status* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.status*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.status* %0, %struct.status** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 15
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 56
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 97
  store i8* %22, i8** %12, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %23, 98
  br i1 %24, label %55, label %25

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 -1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 58
  br i1 %30, label %55, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 32
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 32
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43, %37, %31, %25, %3
  store i32 0, i32* %4, align 4
  br label %93

56:                                               ; preds = %49
  %57 = load i8*, i8** %12, align 8
  %58 = load i8, i8* %57, align 1
  %59 = load %struct.status*, %struct.status** %5, align 8
  %60 = getelementptr inbounds %struct.status, %struct.status* %59, i32 0, i32 0
  store i8 %58, i8* %60, align 8
  %61 = load %struct.status*, %struct.status** %5, align 8
  %62 = getelementptr inbounds %struct.status, %struct.status* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @string_copy_rev(i32 %64, i8* %65)
  %67 = load %struct.status*, %struct.status** %5, align 8
  %68 = getelementptr inbounds %struct.status, %struct.status* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @string_copy_rev(i32 %70, i8* %71)
  %73 = load i8*, i8** %8, align 8
  %74 = call i8* @strtoul(i8* %73, i32* null, i32 8)
  %75 = load %struct.status*, %struct.status** %5, align 8
  %76 = getelementptr inbounds %struct.status, %struct.status* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i8* @strtoul(i8* %78, i32* null, i32 8)
  %80 = load %struct.status*, %struct.status** %5, align 8
  %81 = getelementptr inbounds %struct.status, %struct.status* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.status*, %struct.status** %5, align 8
  %84 = getelementptr inbounds %struct.status, %struct.status* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.status*, %struct.status** %5, align 8
  %89 = getelementptr inbounds %struct.status, %struct.status* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  store i64 0, i64* %92, align 8
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %56, %55
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @string_copy_rev(i32, i8*) #1

declare dso_local i8* @strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
