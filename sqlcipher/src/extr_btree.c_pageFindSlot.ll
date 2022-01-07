; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_pageFindSlot.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_pageFindSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32, i32*)* @pageFindSlot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pageFindSlot(%struct.TYPE_6__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @get2byte(i32* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %138, %3
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %139

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = call i32 @get2byte(i32* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %118

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 4
  %57 = zext i1 %56 to i32
  %58 = call i32 @testcase(i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 3
  %61 = zext i1 %60 to i32
  %62 = call i32 @testcase(i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %92

65:                                               ; preds = %54
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 57
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32* null, i32** %4, align 8
  br label %151

74:                                               ; preds = %65
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @memcpy(i32* %78, i32* %82, i32 2)
  %84 = load i32, i32* %12, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 7
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %84
  store i32 %91, i32* %89, align 4
  br label %111

92:                                               ; preds = %54
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %99)
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  store i32* null, i32** %4, align 8
  br label %151

102:                                              ; preds = %92
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @put2byte(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %74
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32* %117, i32** %4, align 8
  br label %151

118:                                              ; preds = %43
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i32 @get2byte(i32* %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = icmp sle i32 %125, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %118
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %134)
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %130
  store i32* null, i32** %4, align 8
  br label %151

138:                                              ; preds = %118
  br label %39

139:                                              ; preds = %39
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %6, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 4
  %145 = icmp sgt i32 %140, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = call i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__* %147)
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %139
  store i32* null, i32** %4, align 8
  br label %151

151:                                              ; preds = %150, %137, %111, %98, %73
  %152 = load i32*, i32** %4, align 8
  ret i32* %152
}

declare dso_local i32 @get2byte(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @SQLITE_CORRUPT_PAGE(%struct.TYPE_6__*) #1

declare dso_local i32 @put2byte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
