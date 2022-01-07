; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_ToBase64.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_util.c_ToBase64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B64EncodeTable = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ToBase64(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
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
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %49, %4
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %10, align 8
  %28 = load i8, i8* %26, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %13, align 4
  br label %39

38:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %14, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %12, align 4
  %51 = lshr i32 %50, 2
  store i32 %51, i32* %15, align 4
  %52 = load i8*, i8** @B64EncodeTable, align 8
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, 63
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 %57, i8* %59, align 1
  %60 = load i32, i32* %12, align 4
  %61 = shl i32 %60, 4
  %62 = and i32 %61, 48
  %63 = load i32, i32* %13, align 4
  %64 = lshr i32 %63, 4
  %65 = and i32 %64, 15
  %66 = or i32 %62, %65
  store i32 %66, i32* %15, align 4
  %67 = load i8*, i8** @B64EncodeTable, align 8
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %68, 63
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %13, align 4
  %76 = shl i32 %75, 2
  %77 = and i32 %76, 60
  %78 = load i32, i32* %14, align 4
  %79 = lshr i32 %78, 6
  %80 = and i32 %79, 3
  %81 = or i32 %77, %80
  store i32 %81, i32* %15, align 4
  %82 = load i8*, i8** @B64EncodeTable, align 8
  %83 = load i32, i32* %15, align 4
  %84 = and i32 %83, 63
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  store i8 %87, i8* %89, align 1
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, 63
  store i32 %91, i32* %15, align 4
  %92 = load i8*, i8** @B64EncodeTable, align 8
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %93, 63
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 3
  store i8 %97, i8* %99, align 1
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 4
  store i8* %101, i8** %9, align 8
  br label %21

102:                                              ; preds = %21
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8*, i8** %9, align 8
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %105, %102
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
