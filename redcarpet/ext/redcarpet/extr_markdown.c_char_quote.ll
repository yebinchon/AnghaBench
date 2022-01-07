; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_quote.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_char_quote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64)* @char_quote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @char_quote(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buf, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %31, %5
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 34
  br label %29

29:                                               ; preds = %22, %18
  %30 = phi i1 [ false, %18 ], [ %28, %22 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i64, i64* %13, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %13, align 8
  br label %18

34:                                               ; preds = %29
  store i64 0, i64* %14, align 8
  %35 = load i64, i64* %13, align 8
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ult i64 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %14, align 8
  br label %57

56:                                               ; preds = %46
  store i64 0, i64* %14, align 8
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %36

61:                                               ; preds = %44
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* %13, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i64 0, i64* %6, align 8
  br label %154

70:                                               ; preds = %65, %61
  %71 = load i64, i64* %13, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %85, %70
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i8*, i8** %9, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br label %83

83:                                               ; preds = %76, %72
  %84 = phi i1 [ false, %72 ], [ %82, %76 ]
  br i1 %84, label %85, label %88

85:                                               ; preds = %83
  %86 = load i64, i64* %15, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %15, align 8
  br label %72

88:                                               ; preds = %83
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %13, align 8
  %91 = sub i64 %89, %90
  store i64 %91, i64* %16, align 8
  br label %92

92:                                               ; preds = %106, %88
  %93 = load i64, i64* %16, align 8
  %94 = load i64, i64* %13, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %16, align 8
  %99 = sub i64 %98, 1
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 32
  br label %104

104:                                              ; preds = %96, %92
  %105 = phi i1 [ false, %92 ], [ %103, %96 ]
  br i1 %105, label %106, label %109

106:                                              ; preds = %104
  %107 = load i64, i64* %16, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %16, align 8
  br label %92

109:                                              ; preds = %104
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %16, align 8
  %112 = icmp ult i64 %110, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %115 = load i8*, i8** %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %114, align 8
  %118 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 1
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* %15, align 8
  %121 = sub i64 %119, %120
  store i64 %121, i64* %118, align 8
  %122 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 3
  store i32 0, i32* %123, align 4
  %124 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %125 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %126, align 8
  %128 = load %struct.buf*, %struct.buf** %7, align 8
  %129 = bitcast %struct.buf* %128 to %struct.buf.0*
  %130 = bitcast %struct.buf* %17 to %struct.buf.0*
  %131 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %132 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %127(%struct.buf.0* %129, %struct.buf.0* %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %113
  store i64 0, i64* %12, align 8
  br label %137

137:                                              ; preds = %136, %113
  br label %152

138:                                              ; preds = %109
  %139 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %140 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %141, align 8
  %143 = load %struct.buf*, %struct.buf** %7, align 8
  %144 = bitcast %struct.buf* %143 to %struct.buf.0*
  %145 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %146 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 %142(%struct.buf.0* %144, %struct.buf.0* null, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %138
  store i64 0, i64* %12, align 8
  br label %151

151:                                              ; preds = %150, %138
  br label %152

152:                                              ; preds = %151, %137
  %153 = load i64, i64* %12, align 8
  store i64 %153, i64* %6, align 8
  br label %154

154:                                              ; preds = %152, %69
  %155 = load i64, i64* %6, align 8
  ret i64 %155
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
