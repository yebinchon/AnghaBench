; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_tointegerFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_totype.c_tointegerFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOTYPE_BIGENDIAN = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @tointegerFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tointegerFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_type(i32* %24)
  switch i32 %25, label %129 [
    i32 130, label %26
    i32 129, label %42
    i32 131, label %49
    i32 128, label %97
  ]

26:                                               ; preds = %3
  %27 = load i32**, i32*** %6, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 0
  %29 = load i32*, i32** %28, align 8
  %30 = call double @sqlite3_value_double(i32* %29)
  store double %30, double* %7, align 8
  %31 = load double, double* %7, align 8
  %32 = fptosi double %31 to i64
  store i64 %32, i64* %8, align 8
  %33 = load double, double* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sitofp i64 %34 to double
  %36 = fcmp oeq double %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32*, i32** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @sqlite3_result_int64(i32* %38, i64 %39)
  br label %41

41:                                               ; preds = %37, %26
  br label %138

42:                                               ; preds = %3
  %43 = load i32*, i32** %4, align 8
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @sqlite3_value_int64(i32* %46)
  %48 = call i32 @sqlite3_result_int64(i32* %43, i64 %47)
  br label %138

49:                                               ; preds = %3
  %50 = load i32**, i32*** %6, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i8* @sqlite3_value_blob(i32* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %96

56:                                               ; preds = %49
  %57 = load i32**, i32*** %6, align 8
  %58 = getelementptr inbounds i32*, i32** %57, i64 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @sqlite3_value_bytes(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp eq i64 %62, 8
  br i1 %63, label %64, label %95

64:                                               ; preds = %56
  %65 = load i32, i32* @TOTYPE_BIGENDIAN, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 8
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 7, %75
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %80
  store i8 %78, i8* %81, align 1
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %68

85:                                               ; preds = %68
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %87 = call i32 @memcpy(i64* %11, i8* %86, i32 8)
  br label %91

88:                                               ; preds = %64
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @memcpy(i64* %11, i8* %89, i32 8)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %4, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @sqlite3_result_int64(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %91, %56
  br label %96

96:                                               ; preds = %95, %49
  br label %138

97:                                               ; preds = %3
  %98 = load i32**, i32*** %6, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i8* @sqlite3_value_text(i32* %100)
  store i8* %101, i8** %14, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %128

104:                                              ; preds = %97
  %105 = load i32**, i32*** %6, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @sqlite3_value_bytes(i32* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load i8*, i8** %14, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @totypeIsspace(i8 zeroext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %127, label %117

117:                                              ; preds = %111
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 @totypeAtoi64(i8* %118, i64* %16, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %117
  %123 = load i32*, i32** %4, align 8
  %124 = load i64, i64* %16, align 8
  %125 = call i32 @sqlite3_result_int64(i32* %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %111, %104
  br label %128

128:                                              ; preds = %127, %97
  br label %138

129:                                              ; preds = %3
  %130 = load i32**, i32*** %6, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @sqlite3_value_type(i32* %132)
  %134 = load i32, i32* @SQLITE_NULL, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  br label %138

138:                                              ; preds = %129, %128, %96, %42, %41
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i64) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @totypeIsspace(i8 zeroext) #1

declare dso_local i32 @totypeAtoi64(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
