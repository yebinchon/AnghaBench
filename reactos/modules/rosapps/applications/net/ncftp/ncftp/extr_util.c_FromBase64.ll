; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_FromBase64.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_FromBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B64DecodeTable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FromBase64(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %60, %4
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %119

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %13, align 4
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %14, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load i8*, i8** %10, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %15, align 4
  br label %60

59:                                               ; preds = %50
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i64*, i64** @B64DecodeTable, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 2
  %68 = load i64*, i64** @B64DecodeTable, align 8
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = lshr i32 %73, 4
  %75 = or i32 %67, %74
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 %77, i8* %79, align 1
  %80 = load i64*, i64** @B64DecodeTable, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 4
  %87 = load i64*, i64** @B64DecodeTable, align 8
  %88 = load i32, i32* %14, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = lshr i32 %92, 2
  %94 = or i32 %86, %93
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8 %96, i8* %98, align 1
  %99 = load i64*, i64** @B64DecodeTable, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = shl i32 %104, 6
  %106 = load i64*, i64** @B64DecodeTable, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = or i32 %105, %111
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8 %114, i8* %116, align 1
  %117 = load i8*, i8** %9, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  store i8* %118, i8** %9, align 8
  br label %22

119:                                              ; preds = %22
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i8*, i8** %9, align 8
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %122, %119
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
