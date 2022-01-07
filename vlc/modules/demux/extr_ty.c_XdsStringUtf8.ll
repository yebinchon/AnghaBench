; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_XdsStringUtf8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_ty.c_XdsStringUtf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @XdsStringUtf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XdsStringUtf8(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %110, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %113

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %99 [
    i32 42, label %18
    i32 92, label %27
    i32 94, label %36
    i32 95, label %45
    i32 96, label %54
    i32 123, label %63
    i32 124, label %72
    i32 125, label %81
    i32 126, label %90
  ]

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %7, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8 -61, i8* %22, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8 -95, i8* %26, align 1
  br label %109

27:                                               ; preds = %13
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 -61, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8 -87, i8* %35, align 1
  br label %109

36:                                               ; preds = %13
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 -61, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 -83, i8* %44, align 1
  br label %109

45:                                               ; preds = %13
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8 -61, i8* %49, align 1
  %50 = load i8*, i8** %4, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 -77, i8* %53, align 1
  br label %109

54:                                               ; preds = %13
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  %58 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 -61, i8* %58, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 -70, i8* %62, align 1
  br label %109

63:                                               ; preds = %13
  %64 = load i8*, i8** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %7, align 8
  %67 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8 -61, i8* %67, align 1
  %68 = load i8*, i8** %4, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 -89, i8* %71, align 1
  br label %109

72:                                               ; preds = %13
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8 -61, i8* %76, align 1
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 -73, i8* %80, align 1
  br label %109

81:                                               ; preds = %13
  %82 = load i8*, i8** %4, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %7, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 -61, i8* %85, align 1
  %86 = load i8*, i8** %4, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %7, align 8
  %89 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8 -111, i8* %89, align 1
  br label %109

90:                                               ; preds = %13
  %91 = load i8*, i8** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  %94 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 -61, i8* %94, align 1
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  %98 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 -79, i8* %98, align 1
  br label %109

99:                                               ; preds = %13
  %100 = load i32*, i32** %5, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %7, align 8
  %108 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 %104, i8* %108, align 1
  br label %109

109:                                              ; preds = %99, %90, %81, %72, %63, %54, %45, %36, %27, %18
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %9

113:                                              ; preds = %9
  %114 = load i8*, i8** %4, align 8
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  %117 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 0, i8* %117, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
