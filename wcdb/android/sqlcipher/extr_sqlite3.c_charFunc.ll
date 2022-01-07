; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_charFunc.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_charFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3_free = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @charFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 4
  %14 = add nsw i32 %13, 1
  %15 = call i8* @sqlite3_malloc64(i32 %14)
  store i8* %15, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @sqlite3_result_error_nomem(i32* %19)
  br label %157

21:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %142, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %145

26:                                               ; preds = %22
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @sqlite3_value_int64(i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 1114111
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %26
  store i32 65533, i32* %10, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 2097151
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ult i32 %42, 128
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 255
  %47 = zext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %48 to i8
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  store i8 %49, i8* %50, align 1
  br label %141

52:                                               ; preds = %39
  %53 = load i32, i32* %11, align 4
  %54 = icmp ult i32 %53, 2048
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = lshr i32 %56, 6
  %58 = and i32 %57, 31
  %59 = zext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = getelementptr i8, i8* %60, i64 192
  %62 = ptrtoint i8* %61 to i8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  store i8 %62, i8* %63, align 1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 63
  %67 = zext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr i8, i8* %68, i64 128
  %70 = ptrtoint i8* %69 to i8
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %8, align 8
  store i8 %70, i8* %71, align 1
  br label %140

73:                                               ; preds = %52
  %74 = load i32, i32* %11, align 4
  %75 = icmp ult i32 %74, 65536
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = lshr i32 %77, 12
  %79 = and i32 %78, 15
  %80 = zext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = getelementptr i8, i8* %81, i64 224
  %83 = ptrtoint i8* %82 to i8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i32, i32* %11, align 4
  %87 = lshr i32 %86, 6
  %88 = and i32 %87, 63
  %89 = zext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = getelementptr i8, i8* %90, i64 128
  %92 = ptrtoint i8* %91 to i8
  %93 = load i8*, i8** %8, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %8, align 8
  store i8 %92, i8* %93, align 1
  %95 = load i32, i32* %11, align 4
  %96 = and i32 %95, 63
  %97 = zext i32 %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = getelementptr i8, i8* %98, i64 128
  %100 = ptrtoint i8* %99 to i8
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 %100, i8* %101, align 1
  br label %139

103:                                              ; preds = %73
  %104 = load i32, i32* %11, align 4
  %105 = lshr i32 %104, 18
  %106 = and i32 %105, 7
  %107 = zext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = getelementptr i8, i8* %108, i64 240
  %110 = ptrtoint i8* %109 to i8
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8 %110, i8* %111, align 1
  %113 = load i32, i32* %11, align 4
  %114 = lshr i32 %113, 12
  %115 = and i32 %114, 63
  %116 = zext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = getelementptr i8, i8* %117, i64 128
  %119 = ptrtoint i8* %118 to i8
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %8, align 8
  store i8 %119, i8* %120, align 1
  %122 = load i32, i32* %11, align 4
  %123 = lshr i32 %122, 6
  %124 = and i32 %123, 63
  %125 = zext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = getelementptr i8, i8* %126, i64 128
  %128 = ptrtoint i8* %127 to i8
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  store i8 %128, i8* %129, align 1
  %131 = load i32, i32* %11, align 4
  %132 = and i32 %131, 63
  %133 = zext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = getelementptr i8, i8* %134, i64 128
  %136 = ptrtoint i8* %135 to i8
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %8, align 8
  store i8 %136, i8* %137, align 1
  br label %139

139:                                              ; preds = %103, %76
  br label %140

140:                                              ; preds = %139, %55
  br label %141

141:                                              ; preds = %140, %44
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %22

145:                                              ; preds = %22
  %146 = load i32*, i32** %4, align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i8*, i8** %8, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = ptrtoint i8* %148 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @sqlite3_free, align 4
  %155 = load i32, i32* @SQLITE_UTF8, align 4
  %156 = call i32 @sqlite3_result_text64(i32* %146, i8* %147, i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %145, %18
  ret void
}

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_result_text64(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
