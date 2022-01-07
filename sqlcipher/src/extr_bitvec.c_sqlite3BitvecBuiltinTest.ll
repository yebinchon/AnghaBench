; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecBuiltinTest.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_bitvec.c_sqlite3BitvecBuiltinTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITVEC_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3BitvecBuiltinTest(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32* @sqlite3BitvecCreate(i32 %13)
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = add nsw i32 %15, 7
  %17 = sdiv i32 %16, 8
  %18 = add nsw i32 %17, 1
  %19 = call i8* @sqlite3MallocZero(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* @BITVEC_SZ, align 4
  %21 = call i8* @sqlite3_malloc64(i32 %20)
  store i8* %21, i8** %12, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %12, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24, %2
  br label %150

31:                                               ; preds = %27
  %32 = call i64 @sqlite3BitvecSet(i32* null, i32 1)
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @sqlite3BitvecClear(i32* null, i32 1, i8* %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %115, %31
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %116

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  switch i32 %43, label %66 [
    i32 1, label %44
    i32 2, label %44
    i32 5, label %44
    i32 3, label %65
    i32 4, label %65
  ]

44:                                               ; preds = %42, %42, %42
  store i32 4, i32* %9, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %57
  store i32 %64, i32* %62, align 4
  br label %68

65:                                               ; preds = %42, %42
  br label %66

66:                                               ; preds = %42, %65
  store i32 2, i32* %9, align 4
  %67 = call i32 @sqlite3_randomness(i32 4, i32* %8)
  br label %68

68:                                               ; preds = %66, %44
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 0, i32* %9, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = and i32 %82, 2147483647
  %84 = load i32, i32* %3, align 4
  %85 = srem i32 %83, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %78
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @SETBIT(i8* %90, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 5
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i64 @sqlite3BitvecSet(i32* %97, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %150

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %89
  br label %115

105:                                              ; preds = %78
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @CLEARBIT(i8* %106, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @sqlite3BitvecClear(i32* %110, i32 %112, i8* %113)
  br label %115

115:                                              ; preds = %105, %104
  br label %35

116:                                              ; preds = %35
  %117 = call i32 @sqlite3BitvecTest(i32* null, i32 0)
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i32 @sqlite3BitvecTest(i32* %118, i32 %120)
  %122 = add nsw i32 %117, %121
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @sqlite3BitvecTest(i32* %123, i32 0)
  %125 = add nsw i32 %122, %124
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @sqlite3BitvecSize(i32* %126)
  %128 = load i32, i32* %3, align 4
  %129 = sub nsw i32 %127, %128
  %130 = add nsw i32 %125, %129
  store i32 %130, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %131

131:                                              ; preds = %146, %116
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @TESTBIT(i8* %136, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @sqlite3BitvecTest(i32* %139, i32 %140)
  %142 = icmp ne i32 %138, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %7, align 4
  br label %149

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %131

149:                                              ; preds = %143, %131
  br label %150

150:                                              ; preds = %149, %102, %30
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 @sqlite3_free(i8* %151)
  %153 = load i8*, i8** %6, align 8
  %154 = call i32 @sqlite3_free(i8* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @sqlite3BitvecDestroy(i32* %155)
  %157 = load i32, i32* %7, align 4
  ret i32 %157
}

declare dso_local i32* @sqlite3BitvecCreate(i32) #1

declare dso_local i8* @sqlite3MallocZero(i32) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i64 @sqlite3BitvecSet(i32*, i32) #1

declare dso_local i32 @sqlite3BitvecClear(i32*, i32, i8*) #1

declare dso_local i32 @sqlite3_randomness(i32, i32*) #1

declare dso_local i32 @SETBIT(i8*, i32) #1

declare dso_local i32 @CLEARBIT(i8*, i32) #1

declare dso_local i32 @sqlite3BitvecTest(i32*, i32) #1

declare dso_local i32 @sqlite3BitvecSize(i32*) #1

declare dso_local i32 @TESTBIT(i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3BitvecDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
