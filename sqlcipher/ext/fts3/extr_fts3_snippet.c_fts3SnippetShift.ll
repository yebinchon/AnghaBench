; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetShift.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetShift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i8*, i32, i32*, i32*)* @fts3SnippetShift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3SnippetShift(%struct.TYPE_6__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_5__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %162

33:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %42, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %17, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %17, align 4
  br label %34

45:                                               ; preds = %34
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %18, align 4
  %51 = sub nsw i32 %49, %50
  %52 = shl i32 1, %51
  %53 = and i32 %47, %52
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %18, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %18, align 4
  br label %46

60:                                               ; preds = %46
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %18, align 4
  %64 = sub nsw i32 %62, %63
  %65 = icmp sle i32 %64, 63
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %68, %69
  %71 = icmp sge i32 %70, 0
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ false, %60 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sdiv i32 %78, 2
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %161

82:                                               ; preds = %72
  store i32 0, i32* %21, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %23, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_7__* %91, i32 %92, i8* %93, i32 %94, i32** %24)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* @SQLITE_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %82
  %100 = load i32, i32* %22, align 4
  store i32 %100, i32* %8, align 4
  br label %164

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %114, %101
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp slt i32 %107, %110
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i1 [ false, %102 ], [ %111, %106 ]
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32 (i32*, i8**, i32*, i32*, i32*, i32*)*, i32 (i32*, i8**, i32*, i32*, i32*, i32*)** %116, align 8
  %118 = load i32*, i32** %24, align 8
  %119 = call i32 %117(i32* %118, i8** %25, i32* %26, i32* %27, i32* %28, i32* %21)
  store i32 %119, i32* %22, align 4
  br label %102

120:                                              ; preds = %112
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32 (i32*)*, i32 (i32*)** %122, align 8
  %124 = load i32*, i32** %24, align 8
  %125 = call i32 %123(i32* %124)
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* @SQLITE_DONE, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* %22, align 4
  store i32 %134, i32* %8, align 4
  br label %164

135:                                              ; preds = %129, %120
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* @SQLITE_DONE, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load i32, i32* %21, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = sub nsw i32 %141, %142
  store i32 %143, i32* %20, align 4
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %19, align 4
  %146 = icmp sle i32 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32, i32* %20, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %135
  %152 = load i32, i32* %20, align 4
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %152
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %16, align 4
  %157 = load i32, i32* %20, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32*, i32** %15, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %151, %135
  br label %161

161:                                              ; preds = %160, %72
  br label %162

162:                                              ; preds = %161, %7
  %163 = load i32, i32* @SQLITE_OK, align 4
  store i32 %163, i32* %8, align 4
  br label %164

164:                                              ; preds = %162, %133, %99
  %165 = load i32, i32* %8, align 4
  ret i32 %165
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3Fts3OpenTokenizer(%struct.TYPE_7__*, i32, i8*, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
