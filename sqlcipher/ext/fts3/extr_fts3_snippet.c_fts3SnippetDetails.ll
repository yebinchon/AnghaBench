; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetDetails.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_snippet.c_fts3SnippetDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32*, i32*, i32*, i32*)* @fts3SnippetDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts3SnippetDetails(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %135, %6
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %138

33:                                               ; preds = %27
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %18, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %134

44:                                               ; preds = %33
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %19, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %131, %44
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %53, %56
  %58 = icmp slt i32 %52, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp sge i32 %60, %61
  br label %63

63:                                               ; preds = %59, %51
  %64 = phi i1 [ false, %51 ], [ %62, %59 ]
  br i1 %64, label %65, label %133

65:                                               ; preds = %63
  %66 = load i32, i32* %15, align 4
  %67 = shl i32 1, %66
  store i32 %67, i32* %22, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = shl i32 1, %70
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %65
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %13, align 4
  %78 = sub nsw i32 %76, %77
  %79 = icmp sle i32 %78, 64
  br label %80

80:                                               ; preds = %75, %65
  %81 = phi i1 [ false, %65 ], [ %79, %75 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* %15, align 4
  %88 = icmp sle i32 %87, 64
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i1 [ false, %80 ], [ %88, %86 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %22, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %105

102:                                              ; preds = %89
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1000
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %16, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %109

109:                                              ; preds = %121, %105
  %110 = load i32, i32* %21, align 4
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %109
  %116 = load i32, i32* %23, align 4
  %117 = load i32, i32* %21, align 4
  %118 = ashr i32 %116, %117
  %119 = load i32, i32* %17, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %109

124:                                              ; preds = %109
  %125 = load i8*, i8** %19, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = and i32 %127, 254
  %129 = icmp eq i32 0, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %133

131:                                              ; preds = %124
  %132 = call i32 @fts3GetDeltaPosition(i8** %19, i32* %20)
  br label %51

133:                                              ; preds = %130, %63
  br label %134

134:                                              ; preds = %133, %33
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %27

138:                                              ; preds = %27
  %139 = load i32, i32* %13, align 4
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32*, i32** %11, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32*, i32** %12, align 8
  store i32 %145, i32* %146, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3GetDeltaPosition(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
