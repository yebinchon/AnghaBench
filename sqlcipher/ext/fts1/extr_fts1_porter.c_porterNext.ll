; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_porter.c_porterNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_porter.c_porterNext.c"
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
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %14, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %15, align 8
  br label %24

24:                                               ; preds = %156, %6
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %157

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %52, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i8*, i8** %15, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isDelim(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %41, %33
  %51 = phi i1 [ false, %33 ], [ %49, %41 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %33

57:                                               ; preds = %50
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  br label %62

62:                                               ; preds = %82, %57
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %62
  %71 = load i8*, i8** %15, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isDelim(i8 signext %76)
  %78 = icmp ne i64 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %70, %62
  %81 = phi i1 [ false, %62 ], [ %79, %70 ]
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %62

87:                                               ; preds = %80
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ugt i64 %90, %92
  br i1 %93, label %94, label %156

94:                                               ; preds = %87
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = sub i64 %97, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %94
  %108 = load i32, i32* %18, align 4
  %109 = add nsw i32 %108, 20
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @realloc(i8* %114, i32 %117)
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %107
  %126 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %126, i32* %7, align 4
  br label %159

127:                                              ; preds = %107
  br label %128

128:                                              ; preds = %127, %94
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

156:                                              ; preds = %87
  br label %24

157:                                              ; preds = %24
  %158 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %128, %125
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i64 @isDelim(i8 signext) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @porter_stemmer(i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
