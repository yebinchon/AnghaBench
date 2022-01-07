; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalTokenCosts.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3.c_fts3EvalTokenCosts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_12__*, %struct.TYPE_11__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@FTSQUERY_PHRASE = common dso_local global i64 0, align 8
@FTSQUERY_NOT = common dso_local global i64 0, align 8
@FTSQUERY_OR = common dso_local global i64 0, align 8
@FTSQUERY_AND = common dso_local global i64 0, align 8
@FTSQUERY_NEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_10__**, %struct.TYPE_12__***, i32*)* @fts3EvalTokenCosts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3EvalTokenCosts(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2, %struct.TYPE_10__** %3, %struct.TYPE_12__*** %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca %struct.TYPE_12__***, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %10, align 8
  store %struct.TYPE_12__*** %4, %struct.TYPE_12__**** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SQLITE_OK, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %174

20:                                               ; preds = %6
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FTSQUERY_PHRASE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %83

26:                                               ; preds = %20
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %79, %26
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SQLITE_OK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br i1 %42, label %43, label %82

43:                                               ; preds = %41
  %44 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 1
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %44, align 8
  store %struct.TYPE_10__* %45, %struct.TYPE_10__** %15, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store %struct.TYPE_9__* %61, %struct.TYPE_9__** %63, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = call i32 @sqlite3Fts3MsrOvfl(i32* %69, i32 %74, i32* %76)
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %43
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %30

82:                                               ; preds = %41
  br label %173

83:                                               ; preds = %20
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FTSQUERY_NOT, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %172

89:                                               ; preds = %83
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @FTSQUERY_OR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %107, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @FTSQUERY_AND, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FTSQUERY_NEAR, align 8
  %106 = icmp eq i64 %104, %105
  br label %107

107:                                              ; preds = %101, %95, %89
  %108 = phi i1 [ true, %95 ], [ true, %89 ], [ %106, %101 ]
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = icmp ne %struct.TYPE_12__* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  br label %120

120:                                              ; preds = %115, %107
  %121 = phi i1 [ false, %107 ], [ %119, %115 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @FTSQUERY_OR, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %120
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %8, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %134 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %135 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %134, align 8
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %135, align 8
  %136 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %137 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %137, i32 1
  store %struct.TYPE_12__** %138, %struct.TYPE_12__*** %136, align 8
  br label %139

139:                                              ; preds = %129, %120
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %146 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %147 = load i32*, i32** %12, align 8
  call void @fts3EvalTokenCosts(i32* %140, %struct.TYPE_12__* %141, %struct.TYPE_12__* %144, %struct.TYPE_10__** %145, %struct.TYPE_12__*** %146, i32* %147)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @FTSQUERY_OR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %139
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %155, align 8
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %8, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %159 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %158, align 8
  store %struct.TYPE_12__* %157, %struct.TYPE_12__** %159, align 8
  %160 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %161 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %161, i32 1
  store %struct.TYPE_12__** %162, %struct.TYPE_12__*** %160, align 8
  br label %163

163:                                              ; preds = %153, %139
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %170 = load %struct.TYPE_12__***, %struct.TYPE_12__**** %11, align 8
  %171 = load i32*, i32** %12, align 8
  call void @fts3EvalTokenCosts(i32* %164, %struct.TYPE_12__* %165, %struct.TYPE_12__* %168, %struct.TYPE_10__** %169, %struct.TYPE_12__*** %170, i32* %171)
  br label %172

172:                                              ; preds = %163, %83
  br label %173

173:                                              ; preds = %172, %82
  br label %174

174:                                              ; preds = %173, %6
  ret void
}

declare dso_local i32 @sqlite3Fts3MsrOvfl(i32*, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
