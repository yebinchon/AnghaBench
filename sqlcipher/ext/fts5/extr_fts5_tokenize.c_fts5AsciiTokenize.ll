; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5AsciiTokenize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_tokenize.c_fts5AsciiTokenize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i32, i32 (i8*, i32, i8*, i32, i32, i32)*)* @fts5AsciiTokenize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5AsciiTokenize(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 (i8*, i32, i8*, i32, i32, i32)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (i8*, i32, i8*, i32, i32, i32)*, align 8
  %13 = alloca %struct.TYPE_2__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [64 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 (i8*, i32, i8*, i32, i32, i32)* %5, i32 (i8*, i32, i8*, i32, i32, i32)** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %13, align 8
  %24 = load i32, i32* @SQLITE_OK, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 64, i32* %18, align 4
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8* %25, i8** %19, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %20, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @UNUSED_PARAM(i32 %29)
  br label %31

31:                                               ; preds = %141, %6
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp eq i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %158

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %72, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, 128
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = load i8*, i8** %20, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %56, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %55, %46
  %69 = phi i1 [ false, %46 ], [ %67, %55 ]
  br label %70

70:                                               ; preds = %68, %42
  %71 = phi i1 [ false, %42 ], [ %69, %68 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %16, align 4
  br label %42

75:                                               ; preds = %70
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %158

80:                                               ; preds = %75
  %81 = load i32, i32* %16, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %113, %80
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 128
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %109, label %96

96:                                               ; preds = %87
  %97 = load i8*, i8** %20, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %97, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %96, %87
  %110 = phi i1 [ true, %87 ], [ %108, %96 ]
  br label %111

111:                                              ; preds = %109, %83
  %112 = phi i1 [ false, %83 ], [ %110, %109 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %83

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = load i8*, i8** %19, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %126 = icmp ne i8* %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i8*, i8** %19, align 8
  %129 = call i32 @sqlite3_free(i8* %128)
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32, i32* %21, align 4
  %132 = mul nsw i32 %131, 2
  %133 = call i8* @sqlite3_malloc64(i32 %132)
  store i8* %133, i8** %19, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = icmp eq i8* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %137, i32* %14, align 4
  br label %158

138:                                              ; preds = %130
  %139 = load i32, i32* %21, align 4
  %140 = mul nsw i32 %139, 2
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %138, %116
  %142 = load i8*, i8** %19, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* %21, align 4
  %148 = call i32 @asciiFold(i8* %142, i8* %146, i32 %147)
  %149 = load i32 (i8*, i32, i8*, i32, i32, i32)*, i32 (i8*, i32, i8*, i32, i32, i32)** %12, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %15, align 4
  %155 = call i32 %149(i8* %150, i32 0, i8* %151, i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %14, align 4
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %31

158:                                              ; preds = %136, %79, %39
  %159 = load i8*, i8** %19, align 8
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %161 = icmp ne i8* %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i8*, i8** %19, align 8
  %164 = call i32 @sqlite3_free(i8* %163)
  br label %165

165:                                              ; preds = %162, %158
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @SQLITE_DONE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @SQLITE_OK, align 4
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i32, i32* %14, align 4
  ret i32 %172
}

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i8* @sqlite3_malloc64(i32) #1

declare dso_local i32 @asciiFold(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
