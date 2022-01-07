; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mspatcha/extr_lzx.c_lzx_read_lens.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mspatcha/extr_lzx.c_lzx_read_lens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZXstate = type { i32 }
%struct.lzx_bits = type { i32, i32, i32* }

@PRETREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LZXstate*, i32*, i32, i32, %struct.lzx_bits*)* @lzx_read_lens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_read_lens(%struct.LZXstate* %0, i32* %1, i32 %2, i32 %3, %struct.lzx_bits* %4) #0 {
  %6 = alloca %struct.LZXstate*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.lzx_bits*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.LZXstate* %0, %struct.LZXstate** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.lzx_bits* %4, %struct.lzx_bits** %10, align 8
  %20 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %21 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %24 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %17, align 4
  %26 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %27 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %18, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %41, %5
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 20
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @READ_BITS(i32 %33, i32 4)
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @PRETREE, align 4
  %37 = call i32* @LENTABLE(i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load i32, i32* @PRETREE, align 4
  %46 = call i32 @BUILD_TABLE(i32 %45)
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %151, %44
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %152

52:                                               ; preds = %48
  %53 = load i32, i32* @PRETREE, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @READ_HUFFSYM(i32 %53, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = icmp eq i32 %56, 17
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @READ_BITS(i32 %59, i32 4)
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %67, %58
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %14, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 0, i32* %72, align 4
  br label %63

73:                                               ; preds = %63
  br label %151

74:                                               ; preds = %52
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 18
  br i1 %76, label %77, label %93

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @READ_BITS(i32 %78, i32 5)
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 20
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %86, %77
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %14, align 4
  %85 = icmp ne i32 %83, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 0, i32* %91, align 4
  br label %82

92:                                               ; preds = %82
  br label %150

93:                                               ; preds = %74
  %94 = load i32, i32* %15, align 4
  %95 = icmp eq i32 %94, 19
  br i1 %95, label %96, label %129

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @READ_BITS(i32 %97, i32 1)
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 4
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* @PRETREE, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @READ_HUFFSYM(i32 %101, i32 %102)
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 17
  store i32 %115, i32* %15, align 4
  br label %116

116:                                              ; preds = %113, %96
  br label %117

117:                                              ; preds = %121, %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %14, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* %15, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  br label %117

128:                                              ; preds = %117
  br label %149

129:                                              ; preds = %93
  %130 = load i32*, i32** %7, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %15, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 17
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %139, %129
  %143 = load i32, i32* %15, align 4
  %144 = load i32*, i32** %7, align 8
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %143, i32* %148, align 4
  br label %149

149:                                              ; preds = %142, %128
  br label %150

150:                                              ; preds = %149, %92
  br label %151

151:                                              ; preds = %150, %73
  br label %48

152:                                              ; preds = %48
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %155 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %158 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load i32*, i32** %18, align 8
  %160 = load %struct.lzx_bits*, %struct.lzx_bits** %10, align 8
  %161 = getelementptr inbounds %struct.lzx_bits, %struct.lzx_bits* %160, i32 0, i32 2
  store i32* %159, i32** %161, align 8
  ret i32 0
}

declare dso_local i32 @READ_BITS(i32, i32) #1

declare dso_local i32* @LENTABLE(i32) #1

declare dso_local i32 @BUILD_TABLE(i32) #1

declare dso_local i32 @READ_HUFFSYM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
