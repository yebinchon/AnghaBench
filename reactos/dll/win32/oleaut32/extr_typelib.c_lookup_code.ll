; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_lookup_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_lookup_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstream = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, %struct.bitstream*)* @lookup_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_code(i32* %0, i32 %1, %struct.bitstream* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitstream*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.bitstream* %2, %struct.bitstream** %7, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %83, %3
  %12 = load i32*, i32** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 128
  br label %22

22:                                               ; preds = %18, %11
  %23 = phi i1 [ false, %11 ], [ %21, %18 ]
  br i1 %23, label %24, label %88

24:                                               ; preds = %22
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = icmp uge i32* %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i8* null, i8** %4, align 8
  br label %135

33:                                               ; preds = %24
  %34 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %35 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 255
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %33
  %40 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %41 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %135

45:                                               ; preds = %39
  %46 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %47 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 8
  %51 = or i32 %50, 1
  %52 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %53 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %55 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %55, align 8
  %58 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %59 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %45, %33
  %63 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %64 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, 32768
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32* %70, i32** %8, align 8
  br label %83

71:                                               ; preds = %62
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %75, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %72, i64 %81
  store i32* %82, i32** %8, align 8
  br label %83

83:                                               ; preds = %71, %68
  %84 = load %struct.bitstream*, %struct.bitstream** %7, align 8
  %85 = getelementptr inbounds %struct.bitstream, %struct.bitstream* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %11

88:                                               ; preds = %22
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = icmp ult i32* %90, %94
  br i1 %95, label %96, label %134

96:                                               ; preds = %88
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %96
  %102 = load i32*, i32** %8, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %117, %101
  %105 = load i32*, i32** %9, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = icmp ult i32* %105, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br label %115

115:                                              ; preds = %111, %104
  %116 = phi i1 [ false, %104 ], [ %114, %111 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  br label %104

120:                                              ; preds = %115
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = icmp ult i32* %121, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = bitcast i32* %129 to i8*
  br label %132

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi i8* [ %130, %127 ], [ null, %131 ]
  store i8* %133, i8** %4, align 8
  br label %135

134:                                              ; preds = %96, %88
  store i8* null, i8** %4, align 8
  br label %135

135:                                              ; preds = %134, %132, %44, %32
  %136 = load i8*, i8** %4, align 8
  ret i8* %136
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
