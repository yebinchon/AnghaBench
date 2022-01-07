; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_sparse_write.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_sparse_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparse_write(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr i8, i8* %16, i64 %17
  store i8* %18, i8** %12, align 8
  br label %19

19:                                               ; preds = %108, %4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %109

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @nul_length(i8* %24, i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %35
  %43 = load i64, i64* %14, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = load i8*, i8** %12, align 8
  %50 = icmp uge i8* %48, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45, %38, %23
  %52 = load i8*, i8** %10, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ugt i8* %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32 @write(i32 %56, i8* %57, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @errno, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %148

70:                                               ; preds = %55
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = icmp ne i64 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %148

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %51
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %14, align 8
  %86 = load i32, i32* @SEEK_CUR, align 4
  %87 = call i64 @lseek(i32 %84, i64 %85, i32 %86)
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @errno, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %148

92:                                               ; preds = %83
  %93 = load i64, i64* %14, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr i8, i8* %94, i64 %93
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  store i8* %96, i8** %11, align 8
  br label %108

97:                                               ; preds = %45, %42
  %98 = load i64, i64* %14, align 8
  %99 = icmp ugt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* %14, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr i8, i8* %102, i64 %101
  store i8* %103, i8** %10, align 8
  br label %107

104:                                              ; preds = %97
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  br label %107

107:                                              ; preds = %104, %100
  br label %108

108:                                              ; preds = %107, %92
  br label %19

109:                                              ; preds = %19
  %110 = load i8*, i8** %10, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ugt i8* %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = load i8*, i8** %11, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @write(i32 %114, i8* %115, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %113
  %126 = load i32, i32* @errno, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %148

128:                                              ; preds = %113
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = load i8*, i8** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = icmp ne i64 %130, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %128
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %148

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %109
  %142 = load i8*, i8** %10, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %141, %137, %125, %89, %79, %67
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i64 @nul_length(i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
