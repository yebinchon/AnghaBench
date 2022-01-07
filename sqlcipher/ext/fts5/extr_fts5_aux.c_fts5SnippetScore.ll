; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5SnippetScore.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_aux.c_fts5SnippetScore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, i32*)*, i32 (i32*, i32, i32*, i32*, i32*)*, i32 (i32*, i32)* }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i8*, i32, i32, i32, i32*, i32*)* @fts5SnippetScore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5SnippetScore(%struct.TYPE_3__* %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %28, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 %35(i32* %36, i32* %25)
  store i32 %37, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %100, %9
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %25, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %103

48:                                               ; preds = %46
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32 (i32*, i32, i32*, i32*, i32*)*, i32 (i32*, i32, i32*, i32*, i32*)** %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %20, align 4
  %54 = call i32 %51(i32* %52, i32 %53, i32* %21, i32* %22, i32* %23)
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %48
  %59 = load i32, i32* %22, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* %28, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 1000
  %80 = load i32, i32* %26, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %26, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* %21, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 1, i8* %85, align 1
  %86 = load i32, i32* %24, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = load i32, i32* %23, align 4
  store i32 %89, i32* %24, align 4
  br label %90

90:                                               ; preds = %88, %70
  %91 = load i32, i32* %23, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32 (i32*, i32)*, i32 (i32*, i32)** %93, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %21, align 4
  %97 = call i32 %94(i32* %95, i32 %96)
  %98 = add nsw i32 %91, %97
  store i32 %98, i32* %27, align 4
  br label %99

99:                                               ; preds = %90, %66, %62, %58, %48
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %20, align 4
  br label %38

103:                                              ; preds = %46
  %104 = load i32, i32* %26, align 4
  %105 = load i32*, i32** %17, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %18, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %133

108:                                              ; preds = %103
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* %24, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sub nsw i32 %110, %113
  %115 = sdiv i32 %114, 2
  %116 = sub nsw i32 %109, %115
  store i32 %116, i32* %29, align 4
  %117 = load i32, i32* %29, align 4
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %12, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %108
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %29, align 4
  br label %126

126:                                              ; preds = %122, %108
  %127 = load i32, i32* %29, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %29, align 4
  br label %130

130:                                              ; preds = %129, %126
  %131 = load i32, i32* %29, align 4
  %132 = load i32*, i32** %18, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %130, %103
  %134 = load i32, i32* %19, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
