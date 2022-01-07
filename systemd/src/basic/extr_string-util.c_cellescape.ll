; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_cellescape.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_string-util.c_cellescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cellescape(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  %13 = bitcast [4 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 32, i1 false)
  store i64 0, i64* %9, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  br label %18

18:                                               ; preds = %37, %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %145

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %28 = call i32 @cescape_char(i8 signext %26, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = add i64 %32, 1
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %57

37:                                               ; preds = %24
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @memcpy(i8* %40, i8* %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %7, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %50
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  %54 = urem i64 %53, 4
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  br label %18

57:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %96, %57
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %61 = call i64 @ELEMENTSOF(i64* %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %99

63:                                               ; preds = %58
  %64 = load i64, i64* %7, align 8
  %65 = add i64 %64, 4
  %66 = load i64, i64* %5, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %99

69:                                               ; preds = %63
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %76

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, 1
  br label %76

76:                                               ; preds = %73, %72
  %77 = phi i64 [ 3, %72 ], [ %75, %73 ]
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %99

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %84, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %94, %93
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %83
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %58

99:                                               ; preds = %82, %68, %58
  %100 = load i64, i64* %7, align 8
  %101 = add i64 %100, 4
  %102 = load i64, i64* %5, align 8
  %103 = icmp ule i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = call i64 @write_ellipsis(i8* %107, i32 0)
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %7, align 8
  br label %144

111:                                              ; preds = %99
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, 3
  %114 = load i64, i64* %5, align 8
  %115 = icmp ule i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i8*, i8** %4, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %7, align 8
  %120 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8 46, i8* %120, align 1
  %121 = load i8*, i8** %4, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  %124 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8 46, i8* %124, align 1
  br label %143

125:                                              ; preds = %111
  %126 = load i64, i64* %7, align 8
  %127 = add i64 %126, 2
  %128 = load i64, i64* %5, align 8
  %129 = icmp ule i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i8*, i8** %4, align 8
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %7, align 8
  %134 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8 46, i8* %134, align 1
  br label %142

135:                                              ; preds = %125
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %136, 1
  %138 = load i64, i64* %5, align 8
  %139 = icmp ule i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  br label %142

142:                                              ; preds = %135, %130
  br label %143

143:                                              ; preds = %142, %116
  br label %144

144:                                              ; preds = %143, %104
  br label %145

145:                                              ; preds = %144, %23
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %4, align 8
  ret i8* %149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @cescape_char(i8 signext, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @ELEMENTSOF(i64*) #2

declare dso_local i64 @write_ellipsis(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
