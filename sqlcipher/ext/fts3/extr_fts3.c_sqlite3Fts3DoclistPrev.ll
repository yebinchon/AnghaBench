; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3DoclistPrev.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_sqlite3Fts3DoclistPrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3Fts3DoclistPrev(i32 %0, i8* %1, i32 %2, i8** %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %15, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %7
  %39 = load i64*, i64** %12, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br label %42

42:                                               ; preds = %38, %7
  %43 = phi i1 [ true, %7 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %15, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i8*, i8** %15, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ugt i8* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %15, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = icmp ult i8* %53, %57
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br label %61

61:                                               ; preds = %59, %42
  %62 = phi i1 [ true, %42 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i8*, i8** %15, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %61
  store i64 0, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %18, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8* %72, i8** %19, align 8
  store i32 1, i32* %20, align 4
  br label %73

73:                                               ; preds = %105, %67
  %74 = load i8*, i8** %18, align 8
  %75 = load i8*, i8** %19, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %73
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @sqlite3Fts3GetVarint(i8* %78, i64* %21)
  %80 = load i8*, i8** %18, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %18, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %21, align 8
  %86 = mul nsw i64 %84, %85
  %87 = load i64, i64* %16, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %16, align 8
  %89 = load i8*, i8** %18, align 8
  store i8* %89, i8** %17, align 8
  %90 = call i32 @fts3PoslistCopy(i32 0, i8** %18)
  br label %91

91:                                               ; preds = %102, %77
  %92 = load i8*, i8** %18, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = icmp ult i8* %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %18, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i1 [ false, %91 ], [ %99, %95 ]
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = load i8*, i8** %18, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %18, align 8
  br label %91

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 -1, i32 1
  store i32 %109, i32* %20, align 4
  br label %73

110:                                              ; preds = %73
  %111 = load i8*, i8** %19, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  %117 = load i32*, i32** %13, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = load i8**, i8*** %11, align 8
  store i8* %118, i8** %119, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i64*, i64** %12, align 8
  store i64 %120, i64* %121, align 8
  br label %155

122:                                              ; preds = %61
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 -1, i32 1
  store i32 %126, i32* %22, align 4
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @fts3GetReverseVarint(i8** %15, i8* %127, i64* %23)
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %23, align 8
  %132 = mul nsw i64 %130, %131
  %133 = load i64*, i64** %12, align 8
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %134, %132
  store i64 %135, i64* %133, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = icmp eq i8* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %122
  %140 = load i32*, i32** %14, align 8
  store i32 1, i32* %140, align 4
  br label %152

141:                                              ; preds = %122
  %142 = load i8*, i8** %15, align 8
  store i8* %142, i8** %24, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @fts3ReversePoslist(i8* %143, i8** %15)
  %145 = load i8*, i8** %24, align 8
  %146 = load i8*, i8** %15, align 8
  %147 = ptrtoint i8* %145 to i64
  %148 = ptrtoint i8* %146 to i64
  %149 = sub i64 %147, %148
  %150 = trunc i64 %149 to i32
  %151 = load i32*, i32** %13, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %141, %139
  %153 = load i8*, i8** %15, align 8
  %154 = load i8**, i8*** %11, align 8
  store i8* %153, i8** %154, align 8
  br label %155

155:                                              ; preds = %152, %110
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3GetVarint(i8*, i64*) #1

declare dso_local i32 @fts3PoslistCopy(i32, i8**) #1

declare dso_local i32 @fts3GetReverseVarint(i8**, i8*, i64*) #1

declare dso_local i32 @fts3ReversePoslist(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
