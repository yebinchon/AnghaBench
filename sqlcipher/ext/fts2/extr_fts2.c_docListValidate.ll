; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListValidate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_docListValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DL_DOCIDS = common dso_local global i64 0, align 8
@POS_END = common dso_local global i32 0, align 4
@POS_COLUMN = common dso_local global i32 0, align 4
@DL_POSITIONS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i32, i64*)* @docListValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docListValidate(i64 %0, i8* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ugt i8* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  br label %29

29:                                               ; preds = %101, %4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %114

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @getVarint(i8* %33, i64* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @DL_DOCIDS, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %94
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = call i64 @getVarint32(i8* %46, i32* %12)
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @POS_END, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %100

56:                                               ; preds = %42
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @POS_COLUMN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = call i64 @getVarint32(i8* %64, i32* %12)
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %11, align 4
  br label %94

70:                                               ; preds = %56
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* @DL_POSITIONS, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i64 @getVarint32(i8* %78, i32* %12)
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = call i64 @getVarint32(i8* %87, i32* %12)
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %74, %70
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  br label %42

100:                                              ; preds = %55
  br label %101

101:                                              ; preds = %100, %32
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sle i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, i8* %108, i64 %109
  store i8* %110, i8** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %7, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %29

114:                                              ; preds = %29
  %115 = load i64*, i64** %8, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = load i64*, i64** %8, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getVarint(i8*, i64*) #1

declare dso_local i64 @getVarint32(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
