; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_buffer.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_parser.c_get_token_data_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_token_data_buffer(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = icmp ule i64 %25, 4
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = icmp ugt i64 %28, 65536
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %21, %4
  br label %136

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %136

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = call i32* @utf8_to_wchar(i8* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32* @utf8_to_wchar(i8* %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %40
  br label %136

51:                                               ; preds = %47
  store i64 0, i64* %15, align 8
  store i32 0, i32* %9, align 4
  %52 = load i64, i64* @FALSE, align 8
  store i64 %52, i64* %16, align 8
  br label %53

53:                                               ; preds = %134, %51
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64, i64* %16, align 8
  %59 = icmp ne i64 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ false, %53 ], [ %60, %57 ]
  br i1 %62, label %63, label %135

63:                                               ; preds = %61
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32* %66, i32** %14, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %109, %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp ugt i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i32*, i32** %13, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 13
  br i1 %81, label %82, label %88

82:                                               ; preds = %76, %67
  %83 = load i32*, i32** %13, align 8
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %82, %76, %70
  %89 = phi i1 [ false, %76 ], [ false, %70 ], [ %87, %82 ]
  br i1 %89, label %90, label %112

90:                                               ; preds = %88
  %91 = load i32*, i32** %13, align 8
  %92 = load i64, i64* %15, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 123
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %90
  %100 = load i32*, i32** %13, align 8
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 125
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, -1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %105, %99
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %67

112:                                              ; preds = %88
  %113 = load i32*, i32** %13, align 8
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i64, i64* @TRUE, align 8
  store i64 %119, i64* %16, align 8
  br label %125

120:                                              ; preds = %112
  %121 = load i32*, i32** %13, align 8
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %15, align 8
  %124 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 0, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %118
  %126 = load i32*, i32** %11, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = call i32* @get_token_data_line(i32* %126, i32* %127)
  store i32* %128, i32** %12, align 8
  %129 = load i32*, i32** %12, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %131, %125
  br label %53

135:                                              ; preds = %61
  br label %136

136:                                              ; preds = %135, %50, %39, %30
  %137 = load i32*, i32** %12, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %12, align 8
  %141 = call i8* @wchar_to_utf8(i32* %140)
  store i8* %141, i8** %17, align 8
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32*, i32** %13, align 8
  %144 = call i32 @safe_free(i32* %143)
  %145 = load i32*, i32** %11, align 8
  %146 = call i32 @safe_free(i32* %145)
  %147 = load i8*, i8** %17, align 8
  ret i8* %147
}

declare dso_local i32* @utf8_to_wchar(i8*) #1

declare dso_local i32* @get_token_data_line(i32*, i32*) #1

declare dso_local i8* @wchar_to_utf8(i32*) #1

declare dso_local i32 @safe_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
