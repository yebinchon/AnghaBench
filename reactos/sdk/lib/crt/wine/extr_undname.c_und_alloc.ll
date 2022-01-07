; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_und_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/wine/extr_undname.c_und_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parsed_symbol = type { i32, i8*, i8* (i32)* }

@AVAIL_SIZE = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parsed_symbol*, i32)* @und_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @und_alloc(%struct.parsed_symbol* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parsed_symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.parsed_symbol* %0, %struct.parsed_symbol** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ugt i64 %8, 1016
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %12 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %11, i32 0, i32 2
  %13 = load i8* (i32)*, i8* (i32)** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = add i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call i8* %13(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %80

22:                                               ; preds = %10
  %23 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %24 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i8**
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %30 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %32 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %34 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 8
  store i8* %36, i8** %6, align 8
  br label %78

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %40 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ugt i32 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %45 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %44, i32 0, i32 2
  %46 = load i8* (i32)*, i8* (i32)** %45, align 8
  %47 = call i8* %46(i32 1024)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i8* null, i8** %3, align 8
  br label %80

51:                                               ; preds = %43
  %52 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %53 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = bitcast i8* %55 to i8**
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %59 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %61 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %60, i32 0, i32 0
  store i32 1016, i32* %61, align 8
  br label %62

62:                                               ; preds = %51, %37
  %63 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %64 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1024
  %67 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %68 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = zext i32 %69 to i64
  %71 = sub i64 0, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8* %72, i8** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.parsed_symbol*, %struct.parsed_symbol** %4, align 8
  %75 = getelementptr inbounds %struct.parsed_symbol, %struct.parsed_symbol* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %62, %22
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %78, %50, %21
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
