; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_simple_tokenizer.c_simpleNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_simple_tokenizer.c_simpleNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8**, i32*, i32*, i32*, i32*)* @simpleNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpleNext(%struct.TYPE_5__* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = bitcast %struct.TYPE_5__* %19 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %15, align 8
  br label %25

25:                                               ; preds = %144, %6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = ptrtoint i8* %28 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %34, %38
  br i1 %39, label %40, label %152

40:                                               ; preds = %25
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @strcspn(i8* %43, i32 %46)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %144

51:                                               ; preds = %40
  %52 = load i32, i32* %17, align 4
  %53 = add nsw i32 %52, 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = add nsw i32 %62, 1
  %64 = call i8* @realloc(i8* %61, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %58, %51
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %99, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %102

72:                                               ; preds = %68
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %18, align 1
  %80 = load i8, i8* %18, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp slt i32 %81, 128
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load i8, i8* %18, align 1
  %85 = call signext i8 @tolower(i8 zeroext %84)
  %86 = sext i8 %85 to i32
  br label %90

87:                                               ; preds = %72
  %88 = load i8, i8* %18, align 1
  %89 = sext i8 %88 to i32
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %86, %83 ], [ %89, %87 ]
  %92 = trunc i32 %91 to i8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 %92, i8* %98, align 1
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %68

102:                                              ; preds = %68
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = load i8**, i8*** %9, align 8
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* %17, align 4
  %114 = load i32*, i32** %10, align 8
  store i32 %113, i32* %114, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = ptrtoint i8* %117 to i64
  %122 = ptrtoint i8* %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %17, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32*, i32** %12, align 8
  store i32 %129, i32* %130, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  %135 = load i32*, i32** %13, align 8
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = sext i32 %137 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %139, align 8
  %143 = load i32, i32* @SQLITE_OK, align 4
  store i32 %143, i32* %7, align 4
  br label %154

144:                                              ; preds = %40
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = sext i32 %146 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %148, align 8
  br label %25

152:                                              ; preds = %25
  %153 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %102
  %155 = load i32, i32* %7, align 4
  ret i32 %155
}

declare dso_local i64 @strcspn(i8*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local signext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
