; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTNameEncode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTNameEncode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NCBNAMSZ = common dso_local global i32 0, align 4
@gScopeID = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @NetBTNameEncode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTNameEncode(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %107

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %107

16:                                               ; preds = %12
  %17 = load i32, i32* @NCBNAMSZ, align 4
  %18 = mul nsw i32 %17, 2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %18, i32* %23, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %63, %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @NCBNAMSZ, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %28, %24
  %36 = phi i1 [ false, %24 ], [ %34, %28 ]
  br i1 %36, label %37, label %66

37:                                               ; preds = %35
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 240
  %44 = ashr i32 %43, 4
  %45 = add nsw i32 %44, 65
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %45, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 15
  %57 = add nsw i32 %56, 65
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %24

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %72, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @NCBNAMSZ, align 4
  %70 = mul nsw i32 %69, 2
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 67, i32* %77, align 4
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 65, i32* %82, align 4
  br label %67

83:                                               ; preds = %67
  %84 = load i64*, i64** @gScopeID, align 8
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load i64*, i64** @gScopeID, align 8
  %89 = call i32 @strlen(i64* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i64*, i64** @gScopeID, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @memcpy(i32* %93, i64* %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %87, %83
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %100, %15, %11
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
