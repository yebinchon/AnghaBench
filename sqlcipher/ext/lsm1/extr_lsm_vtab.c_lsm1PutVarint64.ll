; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1PutVarint64.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_vtab.c_lsm1PutVarint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @lsm1PutVarint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsm1PutVarint64(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 240
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %14, align 1
  store i32 1, i32* %3, align 4
  br label %151

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 2287
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = sub nsw i32 %19, 240
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 256
  %23 = add i32 %22, 241
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = urem i32 %27, 256
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8 %29, i8* %31, align 1
  store i32 2, i32* %3, align 4
  br label %151

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = icmp sle i32 %33, 67823
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 2288
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 -7, i8* %39, align 1
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 256
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load i32, i32* %7, align 4
  %46 = urem i32 %45, 256
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 %47, i8* %49, align 1
  store i32 3, i32* %3, align 4
  br label %151

50:                                               ; preds = %32
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %52, 32
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = icmp ule i32 %57, 16777215
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  store i8 -6, i8* %61, align 1
  %62 = load i32, i32* %7, align 4
  %63 = lshr i32 %62, 16
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 %64, i8* %66, align 1
  %67 = load i32, i32* %7, align 4
  %68 = lshr i32 %67, 8
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %7, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 3
  store i8 %73, i8* %75, align 1
  store i32 4, i32* %3, align 4
  br label %151

76:                                               ; preds = %56
  %77 = load i8*, i8** %4, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 -5, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @varintWrite32(i8* %80, i32 %81)
  store i32 5, i32* %3, align 4
  br label %151

83:                                               ; preds = %50
  %84 = load i32, i32* %6, align 4
  %85 = icmp ule i32 %84, 255
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 -4, i8* %88, align 1
  %89 = load i32, i32* %6, align 4
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %4, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  store i8 %90, i8* %92, align 1
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @varintWrite32(i8* %94, i32 %95)
  store i32 6, i32* %3, align 4
  br label %151

97:                                               ; preds = %83
  %98 = load i32, i32* %6, align 4
  %99 = icmp ule i32 %98, 65535
  br i1 %99, label %100, label %116

100:                                              ; preds = %97
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 -3, i8* %102, align 1
  %103 = load i32, i32* %6, align 4
  %104 = lshr i32 %103, 8
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 1
  store i8 %105, i8* %107, align 1
  %108 = load i32, i32* %6, align 4
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %4, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  store i8 %109, i8* %111, align 1
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @varintWrite32(i8* %113, i32 %114)
  store i32 7, i32* %3, align 4
  br label %151

116:                                              ; preds = %97
  %117 = load i32, i32* %6, align 4
  %118 = icmp ule i32 %117, 16777215
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  store i8 -2, i8* %121, align 1
  %122 = load i32, i32* %6, align 4
  %123 = lshr i32 %122, 16
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  store i8 %124, i8* %126, align 1
  %127 = load i32, i32* %6, align 4
  %128 = lshr i32 %127, 8
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 2
  store i8 %129, i8* %131, align 1
  %132 = load i32, i32* %6, align 4
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 3
  store i8 %133, i8* %135, align 1
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @varintWrite32(i8* %137, i32 %138)
  store i32 8, i32* %3, align 4
  br label %151

140:                                              ; preds = %116
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 -1, i8* %142, align 1
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @varintWrite32(i8* %144, i32 %145)
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 5
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @varintWrite32(i8* %148, i32 %149)
  store i32 9, i32* %3, align 4
  br label %151

151:                                              ; preds = %140, %119, %100, %86, %76, %59, %35, %18, %10
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @varintWrite32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
