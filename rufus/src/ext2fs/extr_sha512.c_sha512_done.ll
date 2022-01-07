; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_done.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_sha512.c_sha512_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_state*, i8*)* @sha512_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha512_done(%struct.hash_state* %0, i8* %1) #0 {
  %3 = alloca %struct.hash_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.hash_state* %0, %struct.hash_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %7 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @CONST64(i32 8)
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %13 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, %11
  store i32 %16, i32* %14, align 8
  %17 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %18 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %22 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i8, i8* %20, i64 %26
  store i8 -128, i8* %27, align 1
  %28 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %29 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 112
  br i1 %32, label %33, label %62

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %40, %33
  %35 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %36 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %42 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %46 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %44, i64 %50
  store i8 0, i8* %51, align 1
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %54 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %55 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @sha512_compress(%struct.hash_state* %53, i8* %57)
  %59 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %60 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %2
  br label %63

63:                                               ; preds = %69, %62
  %64 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %65 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 120
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %71 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %75 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  store i8 0, i8* %80, align 1
  br label %63

81:                                               ; preds = %63
  %82 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %83 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %87 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 120
  %91 = call i32 @STORE64H(i32 %85, i8* %90)
  %92 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %93 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %94 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @sha512_compress(%struct.hash_state* %92, i8* %96)
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %116, %81
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 8
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.hash_state*, %struct.hash_state** %3, align 8
  %103 = getelementptr inbounds %struct.hash_state, %struct.hash_state* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = mul nsw i32 8, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = call i32 @STORE64H(i32 %109, i8* %114)
  br label %116

116:                                              ; preds = %101
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %98

119:                                              ; preds = %98
  ret void
}

declare dso_local i32 @CONST64(i32) #1

declare dso_local i32 @sha512_compress(%struct.hash_state*, i8*) #1

declare dso_local i32 @STORE64H(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
