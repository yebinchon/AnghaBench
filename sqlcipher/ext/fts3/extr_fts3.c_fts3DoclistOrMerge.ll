; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3DoclistOrMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3DoclistOrMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_OK = common dso_local global i32 0, align 4
@FTS3_VARINT_MAX = common dso_local global i32 0, align 4
@FTS3_BUFFER_PADDING = common dso_local global i64 0, align 8
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32, i8**, i32*)* @fts3DoclistOrMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3DoclistOrMerge(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %28 = load i32, i32* @SQLITE_OK, align 4
  store i32 %28, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %20, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  store i8* %36, i8** %21, align 8
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %22, align 8
  %38 = load i8*, i8** %12, align 8
  store i8* %38, i8** %23, align 8
  store i32 0, i32* %26, align 4
  %39 = load i8**, i8*** %14, align 8
  store i8* null, i8** %39, align 8
  %40 = load i32*, i32** %15, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* @FTS3_VARINT_MAX, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = sub nsw i64 %48, 1
  %50 = load i64, i64* @FTS3_BUFFER_PADDING, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i8* @sqlite3_malloc64(i64 %51)
  store i8* %52, i8** %25, align 8
  %53 = load i8*, i8** %25, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %7
  %56 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %56, i32* %8, align 4
  br label %168

57:                                               ; preds = %7
  %58 = load i8*, i8** %25, align 8
  store i8* %58, i8** %24, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @fts3GetDeltaVarint3(i8** %22, i8* %59, i32 0, i64* %17)
  %61 = load i8*, i8** %21, align 8
  %62 = call i32 @fts3GetDeltaVarint3(i8** %23, i8* %61, i32 0, i64* %18)
  br label %63

63:                                               ; preds = %124, %57
  %64 = load i8*, i8** %22, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %23, align 8
  %68 = icmp ne i8* %67, null
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ true, %63 ], [ %68, %66 ]
  br i1 %70, label %71, label %125

71:                                               ; preds = %69
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* %18, align 8
  %74 = call i64 @DOCID_CMP(i64 %72, i64 %73)
  store i64 %74, i64* %27, align 8
  %75 = load i8*, i8** %23, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %71
  %78 = load i8*, i8** %22, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i64, i64* %27, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @fts3PutDeltaVarint3(i8** %24, i32 %84, i64* %19, i32* %26, i64 %85)
  %87 = call i32 @fts3PoslistMerge(i8** %24, i8** %22, i8** %23)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %125

91:                                               ; preds = %83
  %92 = load i8*, i8** %20, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @fts3GetDeltaVarint3(i8** %22, i8* %92, i32 %93, i64* %17)
  %95 = load i8*, i8** %21, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @fts3GetDeltaVarint3(i8** %23, i8* %95, i32 %96, i64* %18)
  br label %124

98:                                               ; preds = %80, %77, %71
  %99 = load i8*, i8** %23, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i8*, i8** %22, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i64, i64* %27, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %104, %98
  %108 = load i32, i32* %9, align 4
  %109 = load i64, i64* %17, align 8
  %110 = call i32 @fts3PutDeltaVarint3(i8** %24, i32 %108, i64* %19, i32* %26, i64 %109)
  %111 = call i32 @fts3PoslistCopy(i8** %24, i8** %22)
  %112 = load i8*, i8** %20, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @fts3GetDeltaVarint3(i8** %22, i8* %112, i32 %113, i64* %17)
  br label %123

115:                                              ; preds = %104, %101
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %18, align 8
  %118 = call i32 @fts3PutDeltaVarint3(i8** %24, i32 %116, i64* %19, i32* %26, i64 %117)
  %119 = call i32 @fts3PoslistCopy(i8** %24, i8** %23)
  %120 = load i8*, i8** %21, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @fts3GetDeltaVarint3(i8** %23, i8* %120, i32 %121, i64* %18)
  br label %123

123:                                              ; preds = %115, %107
  br label %124

124:                                              ; preds = %123, %91
  br label %63

125:                                              ; preds = %90, %69
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i8*, i8** %25, align 8
  %131 = call i32 @sqlite3_free(i8* %130)
  store i8* null, i8** %25, align 8
  store i8* null, i8** %24, align 8
  br label %157

132:                                              ; preds = %125
  %133 = load i8*, i8** %24, align 8
  %134 = load i8*, i8** %25, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @FTS3_VARINT_MAX, align 4
  %142 = add nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = icmp sle i64 %137, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i8*, i8** %25, align 8
  %149 = load i8*, i8** %24, align 8
  %150 = load i8*, i8** %25, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  %155 = load i64, i64* @FTS3_BUFFER_PADDING, align 8
  %156 = call i32 @memset(i8* %154, i32 0, i64 %155)
  br label %157

157:                                              ; preds = %132, %129
  %158 = load i8*, i8** %25, align 8
  %159 = load i8**, i8*** %14, align 8
  store i8* %158, i8** %159, align 8
  %160 = load i8*, i8** %24, align 8
  %161 = load i8*, i8** %25, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %15, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %8, align 4
  br label %168

168:                                              ; preds = %157, %55
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i8* @sqlite3_malloc64(i64) #1

declare dso_local i32 @fts3GetDeltaVarint3(i8**, i8*, i32, i64*) #1

declare dso_local i64 @DOCID_CMP(i64, i64) #1

declare dso_local i32 @fts3PutDeltaVarint3(i8**, i32, i64*, i32*, i64) #1

declare dso_local i32 @fts3PoslistMerge(i8**, i8**, i8**) #1

declare dso_local i32 @fts3PoslistCopy(i8**, i8**) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
