; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingTermsAdd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3PendingTermsAdd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.Fts3Index*, %struct.TYPE_8__* }
%struct.Fts3Index = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i8*, i32, i64*)* @fts3PendingTermsAdd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3PendingTermsAdd(%struct.TYPE_9__* %0, i32 %1, i8* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.Fts3Index*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %19, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %20, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %32 = icmp ne %struct.TYPE_8__* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br label %36

36:                                               ; preds = %33, %5
  %37 = phi i1 [ false, %5 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i64*, i64** %11, align 8
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @SQLITE_OK, align 4
  store i32 %44, i32* %6, align 4
  br label %161

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_8__* %46, i32 %47, i8* %48, i32 -1, i32** %21)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %6, align 4
  br label %161

55:                                               ; preds = %45
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %57, align 8
  store i32 (i32*, i8**, i32*, i32*, i32*, i32*)* %58, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %22, align 8
  br label %59

59:                                               ; preds = %140, %55
  %60 = load i32, i32* @SQLITE_OK, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %22, align 8
  %66 = load i32*, i32** %21, align 8
  %67 = call i32 %65(i32* %66, i8** %17, i32* %18, i32* %13, i32* %14, i32* %15)
  store i32 %67, i32* %12, align 4
  %68 = icmp eq i32 %64, %67
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %141

71:                                               ; preds = %69
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i8*, i8** %17, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %81, %78
  %88 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %88, i32* %12, align 4
  br label %141

89:                                               ; preds = %84
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.Fts3Index*, %struct.Fts3Index** %94, align 8
  %96 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %95, i64 0
  %97 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %96, i32 0, i32 1
  %98 = load i8*, i8** %17, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @fts3PendingTermsAddOne(%struct.TYPE_9__* %90, i32 %91, i32 %92, i32* %97, i8* %98, i32 %99)
  store i32 %100, i32* %12, align 4
  store i32 1, i32* %23, align 4
  br label %101

101:                                              ; preds = %137, %89
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @SQLITE_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %23, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br label %111

111:                                              ; preds = %105, %101
  %112 = phi i1 [ false, %101 ], [ %110, %105 ]
  br i1 %112, label %113, label %140

113:                                              ; preds = %111
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load %struct.Fts3Index*, %struct.Fts3Index** %115, align 8
  %117 = load i32, i32* %23, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %116, i64 %118
  store %struct.Fts3Index* %119, %struct.Fts3Index** %24, align 8
  %120 = load i32, i32* %18, align 4
  %121 = load %struct.Fts3Index*, %struct.Fts3Index** %24, align 8
  %122 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %113
  br label %137

126:                                              ; preds = %113
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load %struct.Fts3Index*, %struct.Fts3Index** %24, align 8
  %131 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %130, i32 0, i32 1
  %132 = load i8*, i8** %17, align 8
  %133 = load %struct.Fts3Index*, %struct.Fts3Index** %24, align 8
  %134 = getelementptr inbounds %struct.Fts3Index, %struct.Fts3Index* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @fts3PendingTermsAddOne(%struct.TYPE_9__* %127, i32 %128, i32 %129, i32* %131, i8* %132, i32 %135)
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %126, %125
  %138 = load i32, i32* %23, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %23, align 4
  br label %101

140:                                              ; preds = %111
  br label %59

141:                                              ; preds = %87, %69
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32 (i32*)*, i32 (i32*)** %143, align 8
  %145 = load i32*, i32** %21, align 8
  %146 = call i32 %144(i32* %145)
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %148
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @SQLITE_DONE, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %141
  %156 = load i32, i32* @SQLITE_OK, align 4
  br label %159

157:                                              ; preds = %141
  %158 = load i32, i32* %12, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %53, %42
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_8__*, i32, i8*, i32, i32**) #1

declare dso_local i32 @fts3PendingTermsAddOne(%struct.TYPE_9__*, i32, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
