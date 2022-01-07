; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_func.c_instrFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_func.c_instrFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i32 0, align 4
@SQLITE_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @instrFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instrFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 1, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @UNUSED_PARAMETER(i32 %16)
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_type(i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32**, i32*** %6, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @sqlite3_value_type(i32* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @SQLITE_NULL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @SQLITE_NULL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %3
  br label %138

34:                                               ; preds = %29
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @sqlite3_value_bytes(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32**, i32*** %6, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @sqlite3_value_bytes(i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %134

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SQLITE_BLOB, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SQLITE_BLOB, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i32**, i32*** %6, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i8* @sqlite3_value_blob(i32* %56)
  store i8* %57, i8** %7, align 8
  %58 = load i32**, i32*** %6, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @sqlite3_value_blob(i32* %60)
  store i8* %61, i8** %8, align 8
  store i32 0, i32* %14, align 4
  br label %71

62:                                               ; preds = %49, %45
  %63 = load i32**, i32*** %6, align 8
  %64 = getelementptr inbounds i32*, i32** %63, i64 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @sqlite3_value_text(i32* %65)
  store i8* %66, i8** %7, align 8
  %67 = load i32**, i32*** %6, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @sqlite3_value_text(i32* %69)
  store i8* %70, i8** %8, align 8
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i8*, i8** %8, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i8*, i8** %7, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77, %71
  br label %138

81:                                               ; preds = %77, %74
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  store i8 %84, i8* %15, align 1
  br label %85

85:                                               ; preds = %127, %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* %15, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @memcmp(i8* %98, i8* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %97, %89
  %104 = phi i1 [ true, %89 ], [ %102, %97 ]
  br label %105

105:                                              ; preds = %103, %85
  %106 = phi i1 [ false, %85 ], [ %104, %103 ]
  br i1 %106, label %107, label %128

107:                                              ; preds = %105
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %125, %107
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %9, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %7, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 192
  %124 = icmp eq i32 %123, 128
  br label %125

125:                                              ; preds = %118, %115
  %126 = phi i1 [ false, %115 ], [ %124, %118 ]
  br i1 %126, label %110, label %127

127:                                              ; preds = %125
  br label %85

128:                                              ; preds = %105
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %132, %128
  br label %134

134:                                              ; preds = %133, %34
  %135 = load i32*, i32** %4, align 8
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @sqlite3_result_int(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %134, %80, %33
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i8* @sqlite3_value_blob(i32*) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
