; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_Buf14To16.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_Buf14To16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @Buf14To16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Buf14To16(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i8 0, i8* %12, align 1
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %133, %5
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %136

22:                                               ; preds = %18
  %23 = load i32, i32* %15, align 4
  %24 = srem i32 %23, 2
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %11, align 1
  store i32 8, i32* %13, align 4
  br label %45

35:                                               ; preds = %22
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 63
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %11, align 1
  store i32 6, i32* %13, align 4
  br label %45

45:                                               ; preds = %35, %26
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 8
  br i1 %47, label %48, label %90

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 8, %49
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @__MIN(i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i8, i8* %12, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %12, align 1
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %17, align 4
  %62 = sub nsw i32 %60, %61
  %63 = ashr i32 %59, %62
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %12, align 1
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 8, %68
  %70 = load i32, i32* %17, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i8, i8* %11, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, %71
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %11, align 1
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 8, %76
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i8, i8* %11, align 1
  %81 = zext i8 %80 to i32
  %82 = ashr i32 %81, %79
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %11, align 1
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %48, %45
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 8
  br i1 %92, label %93, label %118

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = srem i32 %94, 2
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i8, i8* %12, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  br label %115

106:                                              ; preds = %93
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  store i32 %108, i32* %114, align 4
  br label %115

115:                                              ; preds = %106, %97
  store i8 0, i8* %12, align 1
  store i32 0, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %115, %90
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, %122
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %12, align 1
  %127 = load i8, i8* %11, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* %12, align 1
  %130 = zext i8 %129 to i32
  %131 = or i32 %130, %128
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %12, align 1
  br label %133

133:                                              ; preds = %118
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %18

136:                                              ; preds = %18
  %137 = load i32, i32* %16, align 4
  ret i32 %137
}

declare dso_local i32 @__MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
