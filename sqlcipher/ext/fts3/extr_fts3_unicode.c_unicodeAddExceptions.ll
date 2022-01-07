; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeAddExceptions.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_unicode.c_unicodeAddExceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i8*, i32)* @unicodeAddExceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unicodeAddExceptions(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 1
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i1 [ true, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %58, %28
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @READ_UTF8(i8* %37, i8* %38, i32 %39)
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @sqlite3FtsUnicodeIsalnum(i32 %41)
  %43 = and i32 %42, -2
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @sqlite3FtsUnicodeIsalnum(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %36
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @sqlite3FtsUnicodeIsdiacritic(i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %55, %51, %36
  br label %32

59:                                               ; preds = %32
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %156

62:                                               ; preds = %59
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i32* @sqlite3_realloc64(i32* %65, i32 %73)
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %78, i32* %5, align 4
  br label %158

79:                                               ; preds = %62
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %15, align 4
  %83 = load i8*, i8** %8, align 8
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %148, %79
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ult i8* %85, %86
  br i1 %87, label %88, label %149

88:                                               ; preds = %84
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @READ_UTF8(i8* %89, i8* %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @sqlite3FtsUnicodeIsalnum(i32 %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %88
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @sqlite3FtsUnicodeIsdiacritic(i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %148

101:                                              ; preds = %97
  store i32 0, i32* %16, align 4
  br label %102

102:                                              ; preds = %117, %101
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %102
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %111, %112
  br label %114

114:                                              ; preds = %106, %102
  %115 = phi i1 [ false, %102 ], [ %113, %106 ]
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %102

120:                                              ; preds = %114
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %137, %120
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  br label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %17, align 4
  br label %122

140:                                              ; preds = %122
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %14, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %140, %97, %88
  br label %84

149:                                              ; preds = %84
  %150 = load i32*, i32** %14, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i32* %150, i32** %152, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %149, %59
  %157 = load i32, i32* @SQLITE_OK, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %156, %77
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @READ_UTF8(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3FtsUnicodeIsalnum(i32) #1

declare dso_local i64 @sqlite3FtsUnicodeIsdiacritic(i32) #1

declare dso_local i32* @sqlite3_realloc64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
