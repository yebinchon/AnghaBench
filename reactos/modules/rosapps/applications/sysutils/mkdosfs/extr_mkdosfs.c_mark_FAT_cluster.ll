; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_mkdosfs.c_mark_FAT_cluster.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/mkdosfs/extr_mkdosfs.c_mark_FAT_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@size_fat = common dso_local global i32 0, align 4
@fat = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Bad FAT size (not 12, 16, or 32)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mark_FAT_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_FAT_cluster(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @size_fat, align 4
  switch i32 %5, label %147 [
    i32 12, label %6
    i32 16, label %80
    i32 32, label %102
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 4095
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 3
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %6
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  %17 = zext i8 %16 to i32
  %18 = load i32*, i32** @fat, align 8
  %19 = load i32, i32* %3, align 4
  %20 = mul nsw i32 3, %19
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load i32*, i32** @fat, align 8
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 3, %25
  %27 = sdiv i32 %26, 2
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 240
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 3840
  %35 = lshr i32 %34, 8
  %36 = or i32 %32, %35
  %37 = trunc i32 %36 to i8
  %38 = zext i8 %37 to i32
  %39 = load i32*, i32** @fat, align 8
  %40 = load i32, i32* %3, align 4
  %41 = mul nsw i32 3, %40
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %39, i64 %44
  store i32 %38, i32* %45, align 4
  br label %79

46:                                               ; preds = %6
  %47 = load i32*, i32** @fat, align 8
  %48 = load i32, i32* %3, align 4
  %49 = mul nsw i32 3, %48
  %50 = sdiv i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 4
  %58 = or i32 %54, %57
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i32
  %61 = load i32*, i32** @fat, align 8
  %62 = load i32, i32* %3, align 4
  %63 = mul nsw i32 3, %62
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, 4080
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = zext i8 %70 to i32
  %72 = load i32*, i32** @fat, align 8
  %73 = load i32, i32* %3, align 4
  %74 = mul nsw i32 3, %73
  %75 = sdiv i32 %74, 2
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %46, %13
  br label %149

80:                                               ; preds = %2
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, 65535
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = zext i8 %85 to i32
  %87 = load i32*, i32** @fat, align 8
  %88 = load i32, i32* %3, align 4
  %89 = mul nsw i32 2, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* %4, align 4
  %93 = lshr i32 %92, 8
  %94 = trunc i32 %93 to i8
  %95 = zext i8 %94 to i32
  %96 = load i32*, i32** @fat, align 8
  %97 = load i32, i32* %3, align 4
  %98 = mul nsw i32 2, %97
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  store i32 %95, i32* %101, align 4
  br label %149

102:                                              ; preds = %2
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, 268435455
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 255
  %107 = trunc i32 %106 to i8
  %108 = zext i8 %107 to i32
  %109 = load i32*, i32** @fat, align 8
  %110 = load i32, i32* %3, align 4
  %111 = mul nsw i32 4, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %108, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  %115 = and i32 %114, 65280
  %116 = lshr i32 %115, 8
  %117 = trunc i32 %116 to i8
  %118 = zext i8 %117 to i32
  %119 = load i32*, i32** @fat, align 8
  %120 = load i32, i32* %3, align 4
  %121 = mul nsw i32 4, %120
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 %118, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, 16711680
  %127 = lshr i32 %126, 16
  %128 = trunc i32 %127 to i8
  %129 = zext i8 %128 to i32
  %130 = load i32*, i32** @fat, align 8
  %131 = load i32, i32* %3, align 4
  %132 = mul nsw i32 4, %131
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load i32, i32* %4, align 4
  %137 = and i32 %136, -16777216
  %138 = lshr i32 %137, 24
  %139 = trunc i32 %138 to i8
  %140 = zext i8 %139 to i32
  %141 = load i32*, i32** @fat, align 8
  %142 = load i32, i32* %3, align 4
  %143 = mul nsw i32 4, %142
  %144 = add nsw i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32 %140, i32* %146, align 4
  br label %149

147:                                              ; preds = %2
  %148 = call i32 @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %102, %80, %79
  ret void
}

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
