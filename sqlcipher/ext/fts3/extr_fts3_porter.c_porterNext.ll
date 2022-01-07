; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_porter.c_porterNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_porter.c_porterNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64, i64, i32, i8*, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32*, i32*, i32*)* @porterNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @porterNext(i32* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %14, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  br label %25

25:                                               ; preds = %156, %6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %157

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %53, %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i8*, i8** %15, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isDelim(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %42, %34
  %52 = phi i1 [ false, %34 ], [ %50, %42 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %34

58:                                               ; preds = %51
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %83, %58
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load i8*, i8** %15, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i64 @isDelim(i8 signext %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %71, %63
  %82 = phi i1 [ false, %63 ], [ %80, %71 ]
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %63

88:                                               ; preds = %81
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ugt i64 %91, %93
  br i1 %94, label %95, label %156

95:                                               ; preds = %88
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %98, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %128

108:                                              ; preds = %95
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 20
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @sqlite3_realloc(i8* %115, i32 %118)
  store i8* %119, i8** %19, align 8
  %120 = load i8*, i8** %19, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %124, label %122

122:                                              ; preds = %108
  %123 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %123, i32* %7, align 4
  br label %159

124:                                              ; preds = %108
  %125 = load i8*, i8** %19, align 8
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 4
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %124, %95
  %129 = load i8*, i8** %15, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* %18, align 4
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i32 @porter_stemmer(i8* %132, i32 %133, i8* %136, i32* %137)
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %9, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %11, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 8
  %154 = load i32*, i32** %13, align 8
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @SQLITE_OK, align 4
  store i32 %155, i32* %7, align 4
  br label %159

156:                                              ; preds = %88
  br label %25

157:                                              ; preds = %25
  %158 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %128, %122
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i64 @isDelim(i8 signext) #1

declare dso_local i8* @sqlite3_realloc(i8*, i32) #1

declare dso_local i32 @porter_stemmer(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
